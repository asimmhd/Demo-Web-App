/*
 * Generation Date: Fri, 11 Nov 2011 12:30:21
 * Generated by:    CSC
 * Generated from:  NPSXTD1
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
 * NPSStatusCodes.
 *	
 * @author  CSC
 * @version $Revision: #1 $
 */
public class NPSStatusCodes extends ExternalData {

    /**
     * serialVersionUID required as class is serializable.
     */
    private static final long serialVersionUID = 1L;

  //*******************************
  //Attribute Declarations
  //*******************************
  
  	public FixedLengthStringData dclnpsxtd1 = new FixedLengthStringData(22);
  	public FixedLengthStringData stsCd = new FixedLengthStringData(2).isAPartOf(dclnpsxtd1, 0);
  	public FixedLengthStringData stsDs = new FixedLengthStringData(20).isAPartOf(dclnpsxtd1, 2);


    /**
     * initialize all variables in the class.
     */
	public void initialize() {
		COBOLFunctions.initialize(dclnpsxtd1);
	}	

	
    /**
     * Retrieves the entire copybook as if it was a single string.
     * @return single FixedLengthString
     */
	public FixedLengthStringData getBaseString() {
  		if (baseString == null) {
   			baseString = new FixedLengthStringData(dclnpsxtd1.getLength());
    		dclnpsxtd1.isAPartOf(baseString, true);
   			baseString.resetIsAPartOfOffset();
  		}
  		return baseString;
	}


}