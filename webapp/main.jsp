<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Frameset//EN">
<%@page import="com.csc.qre.cics.variables.CICSAppVars"%>
<%@ page session="true" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.quipoz.framework.util.*" %>
<%@ page import="com.quipoz.framework.screenmodel.*" %>
<%@ page import="java.util.*" %>

<HTML>
<%
    char fileSeparator = '/'; //System.getProperty("file.separator");
    BaseModel baseModel = (BaseModel) session.getAttribute(BaseModel.SESSION_VARIABLE );
    
    final String screenForm;
    if ( baseModel != null) {
    	final CICSAppVars av = (CICSAppVars)baseModel.getApplicationVariables();
		screenForm = av.getNextSingleModelJSPScreen();
	} else {
		screenForm = "UnavailableSingle.jsp";
	}
    String ctx = request.getContextPath() + fileSeparator;
%>


  <HEAD>
  	<meta http-equiv="pragram" content="no-cache">
  	<meta http-equiv="cache-control" content="no-cache, must-revalidate">
  	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <LINK REL="StyleSheet" HREF="theme/QAStyle.jsp" TYPE="text/css"> 
    <LINK REL="StyleSheet" HREF="theme/QAStyle.css" TYPE="text/css"> 
    <SCRIPT language=javascript src="js/path2.js">
        </SCRIPT>
        <SCRIPT language=javascript src="js/menuG4Loaderfs.js">
        </SCRIPT>
        <SCRIPT language=javascript type=text/javascript src="js/menuG4IE5fs.js">
        </SCRIPT>
	<TITLE>QTE Demo</TITLE>
  </HEAD>

	<Script>ctx = "<%=ctx%>";</Script>
	<FRAMESET  ROWS="80,*"   frameBorder="0" framespacing="0">
		<FRAME style="border: 0" noresize="noresize" SRC="<%=ctx%>titleFrame.jsp" NAME="frameTitle" scrolling="no">
		<FRAMESET COLS="180,*" frameBorder="0" framespacing=0>
			<FRAME style="border: 0" SRC="<%=ctx%>sidebarFrame.jsp" noresize="noresize" NAME="frameMenu" scrolling="no">
			<FRAMESET ROWS="*, 5%, 0%, 0%"  frameBorder=0 framespacing="0">
				<FRAME style="border: 0" SRC="<%=ctx%><%=screenForm%>" noresize="noresize" frameborder='0' NAME='mainForm'>
				<FRAME SRC="<%=ctx%>messageFrame.jsp" frameborder='0' noresize="noresize" NAME='messages'>
				<FRAME style="border: 0" SRC="<%=ctx%>buttonFrame.jsp" frameborder='0' NAME='buttons' scrolling="no">
				<FRAME style="border: 0" SRC='<%=ctx%>heartbeatFrame.jsp'></FRAME>
			</FRAMESET>
		</FRAMESET>
	</FRAMESET>
</HTML>
