package com.sears.framework.web;

import com.sears.framework.variables.SearsAppVars;

public final class AppVarsBuilder {

	private static final String hostIP = "123.12.23.45";
	private static final String hostName = "test.u2l.com";

	private AppVarsBuilder() {
		super();
	}

	/**
	 * A convenient method to create new instance of LifeAsiaAppVars, with possibility of post processing
	 *
	 * @param appName
	 * @param postProcessor
	 * @return
	 */
	public static SearsAppVars buildAppVars(String appName, AppVarsPostProcessor<SearsAppVars> postProcessor) {
		SearsAppVars av = new SearsAppVars(appName);

		if (postProcessor != null) {
			postProcessor.process(av);
		}

		return av;
	}
}
