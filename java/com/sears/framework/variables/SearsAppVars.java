package com.sears.framework.variables;

import com.csc.qre.bms.screen.BmsVarModel;
import com.csc.qre.cics.variables.CICSAppVars;

/**
 * As historical reason, there should be a application level AppVars created for a specific project.
 *
 * @author Jinhai.Wang
 *
 */
public class SearsAppVars extends CICSAppVars{

	private static final long serialVersionUID = -2159407156154705009L;
	private static final String hostIP = "123.12.23.45";
	private static final String hostName = "test.u2l.com";

	public SearsAppVars(String appName) {
		super(appName);
	}

	/**
	 * TODO
	 * @return
	 */
	public boolean isMenuDisplayed() {
		return false;
	}
	/**
	 * TODO
	 * @return
	 */
	public String getAdditionalValidKeys() {
		return "";
	}

	/**
	 * TODO
	 * @return
	 */
	public String formatTitle(String pageTitle, BmsVarModel sv) {
		return pageTitle;
	}

	/**
	 * TODO
	 * @return
	 */
	public String getLogo() {
		return "Testharness";
	}

	/**
	 * TODO
	 * @return
	 */
	public String getVersion() {
		return "";
	}

	@Override
    public String getTableNameOverriden(String tableName) {
	    return getTableName(tableName);
    }

	@Override
    public String getTableName(String tableName) {
		/*Assume all tables migrated as table name with all lowercases. It does matter when MySql is installed on unix/linux*/
	    return getAppConfig().getAppSchema() + '.' + tableName.toLowerCase();
    }

}
