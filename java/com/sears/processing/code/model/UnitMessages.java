/*
 * Generation Date: Fri, 11 Nov 2011 12:30:20
 * Generated by:    CSC
 * Generated from:  IPSUMGFL
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
 * UnitMessages.
 *	
 * @author  CSC
 * @version $Revision: #1 $
 */
public class UnitMessages extends ExternalData {

    /**
     * serialVersionUID required as class is serializable.
     */
    private static final long serialVersionUID = 1L;

  //*******************************
  //Attribute Declarations
  //*******************************
  
  	public FixedLengthStringData ipsumgflRecord = new FixedLengthStringData(15);
  	public FixedLengthStringData ipsumgflKey = new FixedLengthStringData(8).isAPartOf(ipsumgflRecord, 0);
  	public FixedLengthStringData ipsumgflUnNo = new FixedLengthStringData(7).isAPartOf(ipsumgflKey, 0);
  	public FixedLengthStringData ipsumgflInqCmyCd = new FixedLengthStringData(1).isAPartOf(ipsumgflKey, 7);
  	public FixedLengthStringData filler = new FixedLengthStringData(7).isAPartOf(ipsumgflRecord, 8, FILLER);


    /**
     * initialize all variables in the class.
     */
	public void initialize() {
		COBOLFunctions.initialize(ipsumgflRecord);
	}	

	
    /**
     * Retrieves the entire copybook as if it was a single string.
     * @return single FixedLengthString
     */
	public FixedLengthStringData getBaseString() {
  		if (baseString == null) {
   			baseString = new FixedLengthStringData(ipsumgflRecord.getLength());
    		ipsumgflRecord.isAPartOf(baseString, true);
   			baseString.resetIsAPartOfOffset();
  		}
  		return baseString;
	}


}