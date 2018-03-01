/*
 * Generation Date: Fri, 11 Nov 2011 12:30:20
 * Generated by:    CSC
 * Generated from:  NPJTSRA
 * 
 * Copyright 2010 CSC, all rights reserved.
 *
 * This software is the proprietary information of CSC.
 * Use is subject to license terms.
*/
 
package com.sears.processing.code.model;

import com.quipoz.framework.datatype.*;
import com.quipoz.COBOLFramework.datatype.ExternalData;
import static com.quipoz.COBOLFramework.COBOLFunctions.*;
import com.quipoz.COBOLFramework.COBOLFunctions;

/**
 * TSROrganizationLayout.
 *	
 * @author  CSC
 * @version $Revision: #1 $
 */
public class TSROrganizationLayout extends ExternalData {

    /**
     * serialVersionUID required as class is serializable.
     */
    private static final long serialVersionUID = 1L;

  //*******************************
  //Attribute Declarations
  //*******************************
  
  	public FixedLengthStringData tsrOrgActivity = new FixedLengthStringData(1000);
  	public FixedLengthStringData tsrOrgKey = new FixedLengthStringData(32).isAPartOf(tsrOrgActivity, 0);
  	public FixedLengthStringData tsrOrgDesc = new FixedLengthStringData(4).isAPartOf(tsrOrgKey, 0);
  	public FixedLengthStringData tsrOrgId = new FixedLengthStringData(2).isAPartOf(tsrOrgKey, 4);
  	public FixedLengthStringData tsrOrgTstamp = new FixedLengthStringData(26).isAPartOf(tsrOrgKey, 6);
  	public FixedLengthStringData tsrOrgNumber = new FixedLengthStringData(7).isAPartOf(tsrOrgActivity, 32);
  	public FixedLengthStringData tsrOrgUnit = new FixedLengthStringData(7).isAPartOf(tsrOrgActivity, 39);
  	public FixedLengthStringData filler = new FixedLengthStringData(954).isAPartOf(tsrOrgActivity, 46, FILLER);


    /**
     * initialize all variables in the class.
     */
	public void initialize() {
		COBOLFunctions.initialize(tsrOrgActivity);
	}	

	
    /**
     * Retrieves the entire copybook as if it was a single string.
     * @return single FixedLengthString
     */
	public FixedLengthStringData getBaseString() {
  		if (baseString == null) {
   			baseString = new FixedLengthStringData(tsrOrgActivity.getLength());
    		tsrOrgActivity.isAPartOf(baseString, true);
   			baseString.resetIsAPartOfOffset();
  		}
  		return baseString;
	}


}