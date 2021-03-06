/*
 * Generation Date: Fri, 11 Nov 2011 12:30:20
 * Generated by:    CSC
 * Generated from:  NPJXTXR
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
 * NPSRegions.
 *	
 * @author  CSC
 * @version $Revision: #1 $
 */
public class NPSRegions extends ExternalData {

    /**
     * serialVersionUID required as class is serializable.
     */
    private static final long serialVersionUID = 1L;

  //*******************************
  //Attribute Declarations
  //*******************************
  
  	public FixedLengthStringData dclnpjxtxr = new FixedLengthStringData(67);
  	public FixedLengthStringData rgnNo = new FixedLengthStringData(7).isAPartOf(dclnpjxtxr, 0);
  	public FixedLengthStringData rgnNm = new FixedLengthStringData(30).isAPartOf(dclnpjxtxr, 7);
  	public FixedLengthStringData rgnScdLngNm = new FixedLengthStringData(30).isAPartOf(dclnpjxtxr, 37);


    /**
     * initialize all variables in the class.
     */
	public void initialize() {
		COBOLFunctions.initialize(dclnpjxtxr);
	}	

	
    /**
     * Retrieves the entire copybook as if it was a single string.
     * @return single FixedLengthString
     */
	public FixedLengthStringData getBaseString() {
  		if (baseString == null) {
   			baseString = new FixedLengthStringData(dclnpjxtxr.getLength());
    		dclnpjxtxr.isAPartOf(baseString, true);
   			baseString.resetIsAPartOfOffset();
  		}
  		return baseString;
	}


}