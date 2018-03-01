/*
 * Generation Date: Fri, 11 Nov 2011 12:30:21
 * Generated by:    CSC
 * Generated from:  PS302SS
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
 * TempAreaForAcceptServiceUnitNumber.
 *	
 * @author  CSC
 * @version $Revision: #1 $
 */
public class TempAreaForAcceptServiceUnitNumber extends ExternalData {

    /**
     * serialVersionUID required as class is serializable.
     */
    private static final long serialVersionUID = 1L;

  //*******************************
  //Attribute Declarations
  //*******************************
  
  	public FixedLengthStringData ssNps302Record = new FixedLengthStringData(202);
  	public FixedLengthStringData filler = new FixedLengthStringData(12).isAPartOf(ssNps302Record, 0, FILLER);
  	public FixedLengthStringData scaSsNps302PgmLevel = new FixedLengthStringData(3).isAPartOf(ssNps302Record, 12);
  	public BinaryData ssNps302PgmLevelLength = new BinaryData(4, 0).isAPartOf(scaSsNps302PgmLevel, 0);
  	public FixedLengthStringData ssNps302PgmLevelAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps302PgmLevel, 2);
  	public FixedLengthStringData ssNps302PgmLevel = new FixedLengthStringData(2).isAPartOf(ssNps302Record, 15);
  	public FixedLengthStringData scaSsNps302TdScreenDate = new FixedLengthStringData(3).isAPartOf(ssNps302Record, 17);
  	public BinaryData ssNps302TdScreenDateL = new BinaryData(4, 0).isAPartOf(scaSsNps302TdScreenDate, 0);
  	public FixedLengthStringData ssNps302TdScreenDateAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps302TdScreenDate, 2);
  	public FixedLengthStringData ssNps302TdScreenDate = new FixedLengthStringData(8).isAPartOf(ssNps302Record, 20);
  	public FixedLengthStringData scaSsNps302SvcUnNo = new FixedLengthStringData(3).isAPartOf(ssNps302Record, 28);
  	public BinaryData ssNps302SvcUnNoLength = new BinaryData(4, 0).isAPartOf(scaSsNps302SvcUnNo, 0);
  	public FixedLengthStringData ssNps302SvcUnNoAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps302SvcUnNo, 2);
  	public FixedLengthStringData ssNps302SvcUnNo = new FixedLengthStringData(7).isAPartOf(ssNps302Record, 31);
  	public FixedLengthStringData scaSsNps302Msg = new FixedLengthStringData(3).isAPartOf(ssNps302Record, 38);
  	public BinaryData ssNps302MsgLength = new BinaryData(4, 0).isAPartOf(scaSsNps302Msg, 0);
  	public FixedLengthStringData ssNps302MsgAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps302Msg, 2);
  	public FixedLengthStringData ssNps302Msg = new FixedLengthStringData(79).isAPartOf(ssNps302Record, 41);
  	public FixedLengthStringData scaSsNps302Msg2 = new FixedLengthStringData(3).isAPartOf(ssNps302Record, 120);
  	public BinaryData ssNps302Msg2Length = new BinaryData(4, 0).isAPartOf(scaSsNps302Msg2, 0);
  	public FixedLengthStringData ssNps302Msg2Attr = new FixedLengthStringData(1).isAPartOf(scaSsNps302Msg2, 2);
  	public FixedLengthStringData ssNps302Msg2 = new FixedLengthStringData(79).isAPartOf(ssNps302Record, 123);


    /**
     * initialize all variables in the class.
     */
	public void initialize() {
		COBOLFunctions.initialize(ssNps302Record);
	}	

	
    /**
     * Retrieves the entire copybook as if it was a single string.
     * @return single FixedLengthString
     */
	public FixedLengthStringData getBaseString() {
  		if (baseString == null) {
   			baseString = new FixedLengthStringData(ssNps302Record.getLength());
    		ssNps302Record.isAPartOf(baseString, true);
   			baseString.resetIsAPartOfOffset();
  		}
  		return baseString;
	}


}