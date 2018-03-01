package com.resource.locale;

import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

import com.csc.qre.cics.variables.CICSAppVars;
import com.quipoz.framework.datatype.StringData;

public class ResourceBundleHandler {


	private static final String hostIP = "123.12.23.45";
	private static final String hostName = "test.u2l.com";

	private static ResourceBundle resourceBundle_local = null;
	private static ResourceBundle resourceBundle_master = null;
	private String screenName = null;
	private String language = null;

	/**
	 *
	 */
	public ResourceBundleHandler(){
		this.language = CICSAppVars.getInstance().getUserLanguage().toString().trim();
	};



	/**
	 *
	 * @param screenName
	 * @param language
	 */
	public ResourceBundleHandler(String screenName, String language) {
		this.screenName = screenName;
		this.language = language;

	}

	/**
	 *
	 * @param localeValue
	 * @return
	 */
	public static synchronized ResourceBundle getResourceLocalBundle(Locale localeValue){

		ResourceBundle resourceBundle = null;
			if(resourceBundle == null){
				resourceBundle = ResourceBundle.getBundle("MessagesBundle", localeValue);
				resourceBundle = resourceBundle;
			}else{
				resourceBundle = resourceBundle;
			}
		return resourceBundle;
	}


public static synchronized ResourceBundle getResourceMasterBundle(Locale localeValue){

		ResourceBundle resourceBundle = null;
			if(resourceBundle == null){
				resourceBundle = ResourceBundle.getBundle("MessagesBundle", localeValue);
				resourceBundle = resourceBundle;
			}else{
				resourceBundle = resourceBundle;
			}
		return resourceBundle;
	}

	public String gettingValueFromBundle(String key) {
		String value = null;
		String formattedKey = null;
		ResourceBundle rb = null;
		Locale localeValue = null;

		try {
			localeValue = new Locale(this.language);
			rb = getResourceLocalBundle(localeValue);
			formattedKey = this.screenName + "." + key.trim().replaceAll(" ", "_");
		    value = rb.getString(formattedKey);
		} catch (MissingResourceException mre) {
			try {
			rb = getResourceMasterBundle(localeValue);
			formattedKey = key.trim().replaceAll(" ", "_");
		    value = rb.getString(formattedKey);
			} catch (MissingResourceException e) {
				return key;
			}
		}
		return value;

	}

	/**
	 * @param clazz
	 * @param key
	 * @return the String wrapped in String data object to be used for in18
	 */
	public StringData gettingValueFromBundle(Class clazz, String key) {
		String value = null;
		String formattedKey = null;
		ResourceBundle rb = null;
		Locale localeValue = null;

		try {
			localeValue = new Locale(this.language);

			/*
			 * Locale localeValue = new Locale(this.language); ResourceBundle rb
			 * = getResourceBundle(localeValue);
			 */
			rb = getResourceLocalBundle(localeValue);
			formattedKey = this.screenName + "."
					+ key.trim().replaceAll(" ", "_");
			value = rb.getString(formattedKey);

		} catch (MissingResourceException mre) {
			try {
				rb = getResourceMasterBundle(localeValue);
				formattedKey = key.trim().replaceAll(" ", "_");
			    value = rb.getString(formattedKey);
				} catch (MissingResourceException e) {
					value =  key;
				}

		}

		return new StringData(value);

	}


}
