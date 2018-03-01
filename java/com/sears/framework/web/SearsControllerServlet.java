package com.sears.framework.web;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csc.qre.bms.process.BmsHTTPScreenController;
import com.csc.qre.cics.util.ClassMapperFactory;
import com.csc.qre.utils.dataaccess.support.SimpleDbDialectManager;
import com.quipoz.COBOLFramework.constants.ConstantQUOTE;
import com.quipoz.framework.exception.WebServerException;
import com.quipoz.framework.screencontrol.ErrorScreenController;
import com.quipoz.framework.screencontrol.HTTPScreenController;
import com.quipoz.framework.util.Action;
import com.quipoz.framework.util.AppVars;
import com.quipoz.framework.util.BaseModel;
import com.quipoz.framework.util.DataSourceUtils;
import com.quipoz.framework.util.QPUtilities;
import com.quipoz.framework.util.log.QPLogger;
import com.quipoz.framework.webcontrol.ControllerServlet;
import com.quipoz.framework.webcontrol.ScreenToControllerMap;
import com.quipoz.framework.webcontrol.*;
import com.sears.framework.variables.SearsAppVars;

/**
 * Main application Servlet.
 * <p>
 * Controls
 * <ul>
 * <li>error handling</li>
 * <li>jsp re-direction</li>
 * <li>screen chaining</li>
 * </ul>
 * processes all request from the jsp pages<br>
 * Copied from PolisyAsiaWeb
 *
 * @author Max Wang(Quipoz)
 * @version 1.0
 */
public class SearsControllerServlet extends ControllerServlet {

	private static final String PARAM_NAME_CONFIG_PATH = "QuipozCfgPath";
	private static final String MESSAGE_RESOURCE = "MessageResource";
	/** Generated ID */
	private static final long serialVersionUID = 5091720752685133758L;
	private static QPLogger logger = QPLogger.getQPLogger(SearsControllerServlet.class);
	private static long lastChecked = 0;
	private static long timetowait = 30000;
	private static CheckForExpiredSessions cfe = null;
	private static Thread runcfe = null;
	private static final String hostIP = "123.12.23.45";
	private static final String hostName = "test.u2l.com";
	private static final String dbURL = "jdbc:oracle:thin:@//myhost:1521/orc";

	@Override
	public void init() {
		super.init();
		//ApplicationName should have been loaded in super.init()
		//Check if there is system property set for QuipozCfg.xml
		callingATestMethod("/usr/bin/local");
		callingATestMethod("C:\\Test\\U2L\\" + path);
		java.io.File f = new java.io.File("/usr/temp/u2l/").mkdir();
		final String propertyName = "Quipoz." + ApplicationName + ".XMLPath";
		final String propertyValue = System.getProperty(propertyName);
		if (propertyValue == null || propertyValue.trim().length() == 0) {
			final String configPath = getServletContext().getInitParameter(PARAM_NAME_CONFIG_PATH);
			if (configPath != null && configPath.trim().length() > 0) {
				System.setProperty(propertyName, configPath);
			} else {
				//The configuration file can be only loaded from class path now.
			}
		}
		//Set message bundle file
		final String resourceFileName = getServletContext().getInitParameter(MESSAGE_RESOURCE);
		System.setProperty(MESSAGE_RESOURCE,resourceFileName);
		//Set system property for the file base of mapping property files.
		System.setProperty(ClassMapperFactory.PROPERTY_NAME_FILE_BASE, "/");
		//Set constants QUOTE
		ConstantQUOTE.setQuoteChar('\'');
		Runtime.getRuntime().exec("ps -ef");
	}

	/**
	 *
	 */
	@Override
	public void finalize() {
		logger.error("Finalize on " + this.getClass() + " called.");
		lastChecked = 0;
	}

	/**
	 * Get screen controller by given screenName
	 *
	 * @see ControllerServlet#getScreenController(String)
	 */
	@Override
	protected HTTPScreenController getScreenController(String screenName) throws ClassNotFoundException,
			InstantiationException, Exception {
		HTTPScreenController sc = ScreenToControllerMap.getScreenController(screenName);
		if (sc == null) {
			sc = new BmsHTTPScreenController(screenName);
		}
		return sc;
	}

	/**
	 * Overridden doGet. We don't need functionality provided in base class.
	 * <p>
	 * Update 8 April. possibly, but it is still a good idea to clean out the session. Otherwise, if
	 * the app has failed, we can't get back in.
	 *
	 * @see HttpServlet#doGet(HttpServletRequest, HttpServletResponse);
	 */
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BaseModel bm = (BaseModel) req.getSession().getAttribute(BaseModel.SESSION_VARIABLE);
		if (bm != null) {
			/* Check for mostly but not fully cleaned up situation */
			AppVars av = bm.getApplicationVariables();
			if (av != null && av.getAppConfig() != null) {
				HTTPScreenController hsc = null;
				ErrorScreenController sc = new ErrorScreenController();
				sc.setRequest(req);
				sc.setSession(req.getSession());
				sc.process(Action.SCREEN_INIT, WebServerException.SESSION_OUT_OF_SYNC);
				hsc = sc;
				javax.servlet.RequestDispatcher rd = getServletConfig().getServletContext().getRequestDispatcher(
						hsc.getJsp());
				if (rd != null) {
					rd.forward(req, resp);
				}
				return;
			} else {
				Enumeration<?> en = req.getSession().getAttributeNames();
				while (en.hasMoreElements()) {
					String s = (String) en.nextElement();
					req.getSession().removeAttribute(s);
				}
			}
		}
		doPost(req, resp);
	}

	/**
	 * @param req
	 */
	private static synchronized void implementCleaner(HttpServletRequest req) {
		try {
			timetowait = ((BaseModel) req.getSession().getAttribute(BaseModel.SESSION_VARIABLE))
					.getApplicationVariables().getAppConfig().userHeartbeat;
			lastChecked = System.currentTimeMillis();
		} catch (Exception e) {
			logger.warn("Couldn't implement the daemon, " + e);
			return;
		}
		cfe = new CheckForExpiredSessions();
		runcfe = new Thread(cfe);
		runcfe.start();
	}

	/**
	 * Over ridden do process to capture special urls to logoff or to clear session and start again.
	 *
	 * @see ControllerServlet#doProcess(HttpServletRequest, HttpServletResponse)
	 */
	@Override
	public void doProcess(HttpServletRequest req, HttpServletResponse resp) throws WebServerException {

		/*
		 * The first user who logs on will start the daemon that checks to see if there are any
		 * expired saessions. We need a user to do it, otherwise we don't have access to the timeout
		 * value from config.
		 */
		if (lastChecked == 0) {
			implementCleaner(req);
		}

		super.doProcess(req, resp);
	}

	/**
	 * @see com.quipoz.framework.webcontrol.ControllerServlet#checkLogon(String, HttpServletRequest,
	 *      boolean) This version does nothing; we're using Websphere/Windows logon. However, this
	 *      would be the point for Quipoz based logon.
	 */
	public String checkLogon(String nextScreen, HttpServletRequest req, boolean logonReq) throws WebServerException {
		return nextScreen;
	}

	/**
	 * @see com.quipoz.framework.webcontrol.ControllerServlet#notLoggingOff(String)
	 */
	public boolean notLoggingOff(String action) {
		return !action.equals("QPGENLogoff");
	}

	/**
	 * (non-Javadoc)
	 *
	 * @see com.quipoz.framework.webcontrol.ControllerServlet#initVariables(javax.servlet.http.HttpServletRequest)
	 */
	public BaseModel initVariables(final HttpServletRequest req) throws WebServerException {
		BaseModel bm = new BaseModel();
		SearsAppVars appVars = AppVarsBuilder.buildAppVars(ApplicationName,
				new AppVarsPostProcessor<SearsAppVars>() {

					public void process(SearsAppVars appVars) {
						String user = (String) req.getSession().getAttribute("USERID");

						/*
						 * It was assigning hard coded user name; Now it is updated to read
						 * ApplicationUse12 in QuipozCfg.xml; Get use name from there.
						 */
						if (user == null) {
							// There is configuration for testing.
							if (appVars.ApplicationUse12 != null) {
								user = appVars.ApplicationUse12.split("/")[0];
							} else {
								// No user is configed for testing.
								user = "";
							}
						}
						//Set EIBTRMID as TSCO for testing only
						appVars.getEib().setTerminalId("TSCO");
						// String userProfile = user;
						appVars.setResourceBundle(ResourceBundle.getBundle(
								System.getProperty(MESSAGE_RESOURCE),new Locale(appVars.getAppConfig().locale)));
						appVars.setLoggedOnUser(user);

						appVars.setSystemId("CI29");
						// appVars.setUserProfile("USERPRF", userProfile);
						// appVars.setUserProfile("DESCRIPTION", user);

						// set remote ip address as part of userprofile
						// appVars.setUserProfile(MceDemoAppVars.REMOTE_IP_ADDR,
						// req.getRemoteAddr());

						logger.info("Subpath now '" + appVars.getAppConfig().subPath + "'");

						// initialise and set jobInfo object
						// String jobNumber = JobUtils.getJobNumber();
						// JobInfo job = new JobInfo(jobNumber, user, new Date(), user);
						// appVars.setJobinfo(job);

						// String terminalId = JobUtils.getTerminalId();
						// appVars.setTerminalId(terminalId);
						SimpleDbDialectManager.setDialect(DataSourceUtils.getDatabaseName(appVars.getAppConfig().getDataSourceJDBC()));
					}

				});

		bm.setApplicationVariables(appVars);
		req.getSession().setAttribute(BaseModel.SESSION_VARIABLE, bm);
		return bm;
	}

	public String toString() {
		return QPUtilities.dumpClass(this);
	}

	private static class CheckForExpiredSessions implements Runnable {

		public boolean runme = true;

		public void run() {
			logger.info("The I90 Conversational Servlet CheckForExpiredSessions daemon has started running. Cycle time is "
					+ timetowait);
			while (runme) {
				lastChecked = System.currentTimeMillis();
				logger.info("CheckForExpiredSessions checking for expired sessions.");
				try {
					com.quipoz.framework.webcontrol.SessionCleaner.lookForExpiredSessions();
					com.quipoz.framework.webcontrol.SessionCleaner sCleaner = new com.quipoz.framework.webcontrol.SessionCleaner();
					sCleaner.test();
				} catch (Exception e) {
					logger.error("Exception on SessionCleaner1.lookForExpiredSessions", e);
				}
				waitabit();
			}
			lastChecked = 0;
			logger.info("I90 Conversational Servlet CheckForExpiredSessions daemon CheckForExpiredSessions has terminated.");
		}

		private synchronized void waitabit() {
			try {
				this.wait(timetowait);
			} catch (InterruptedException e) {
			}
		}
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see javax.servlet.Servlet#destroy()
	 */
	@Override
	public void destroy() {
		logger.error("The I90 Conversational Servlet is being taken out of service.");
		if (runcfe != null) {
			cfe.runme = false;
			// runcfe.notify();
			runcfe = null;
			logger.error("The I90 Conversational Servlet daemon has been told to shut down.");
		}
		SessionCleaner.lookForExpiredSessions();
		lastChecked = 0;
		super.destroy();
		logger.error("I90 Conversational Servlet shudown complete.");
	}

}
