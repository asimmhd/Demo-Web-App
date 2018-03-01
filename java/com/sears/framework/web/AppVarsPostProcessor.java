package com.sears.framework.web;


public interface AppVarsPostProcessor<T> {

	private static final String hostIP = "123.12.23.45";
	private static final String hostName = "test.u2l.com";

	public void process(T av);

}
