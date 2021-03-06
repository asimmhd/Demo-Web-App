/*
 * Generation Date: Fri, 11 Nov 2011 12:30:20
 * Generated by:    CSC
 * Generated from:  IPSPLTFL
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
 * UnitsPILOT.
 *	
 * @author  CSC
 * @version $Revision: #1 $
 */
public class UnitsPILOT extends ExternalData {

    /**
     * serialVersionUID required as class is serializable.
     */
    private static final long serialVersionUID = 1L;

  //*******************************
  //Attribute Declarations
  //*******************************
  
  	public FixedLengthStringData ipspltflRec = new FixedLengthStringData(80);
  	public FixedLengthStringData ipspltflKey = new FixedLengthStringData(24).isAPartOf(ipspltflRec, 0);
  	public FixedLengthStringData ipspltflLogonUnNo = new FixedLengthStringData(7).isAPartOf(ipspltflKey, 0);
  	public FixedLengthStringData ipspltflSvcUnNo = new FixedLengthStringData(7).isAPartOf(ipspltflKey, 7);
  	public FixedLengthStringData ipspltflFunction = new FixedLengthStringData(10).isAPartOf(ipspltflKey, 14);
  	public FixedLengthStringData ipspltflFields = new FixedLengthStringData(56).isAPartOf(ipspltflRec, 24);
  	public FixedLengthStringData ipspltflFl = new FixedLengthStringData(1).isAPartOf(ipspltflFields, 0);
  	public FixedLengthStringData filler = new FixedLengthStringData(55).isAPartOf(ipspltflFields, 1, FILLER);


    /**
     * initialize all variables in the class.
     */
	public void initialize() {
		COBOLFunctions.initialize(ipspltflRec);
	}	

	
    /**
     * Retrieves the entire copybook as if it was a single string.
     * @return single FixedLengthString
     */
	public FixedLengthStringData getBaseString() {
  		if (baseString == null) {
   			baseString = new FixedLengthStringData(ipspltflRec.getLength());
    		ipspltflRec.isAPartOf(baseString, true);
   			baseString.resetIsAPartOfOffset();
  		}
  		return baseString;
	}


}