package com.sears.framework.utils;

import static com.quipoz.COBOLFramework.COBOLFunctions.FILLER;
import static com.quipoz.COBOLFramework.COBOLFunctions.REDEFINE;
import static com.quipoz.COBOLFramework.COBOLFunctions.SPACES;
import static com.quipoz.COBOLFramework.COBOLFunctions.setAddressToAddress;

import com.csc.qre.cics.util.CICSNonConvCodeModel;
import com.quipoz.COBOLFramework.datatype.Validator;
import com.quipoz.COBOLFramework.datatype.ValueRange;
import com.quipoz.framework.datatype.FixedLengthStringData;
import com.quipoz.framework.datatype.ZonedDecimalData;

public class DateValidator extends CICSNonConvCodeModel {

	private FixedLengthStringData trcConvrConversational = new FixedLengthStringData(1000);
	private FixedLengthStringData trcConvrBusinessParameters = new FixedLengthStringData(89).isAPartOf(trcConvrConversational, 0);
	private FixedLengthStringData trcConvrHolidayTbl = new FixedLengthStringData(2).isAPartOf(trcConvrBusinessParameters, 0).init("01");
	private FixedLengthStringData trcConvrFiscyrStart = new FixedLengthStringData(2).isAPartOf(trcConvrBusinessParameters, 2).init("01");
	private FixedLengthStringData trcConvrFiscmoStart = new FixedLengthStringData(2).isAPartOf(trcConvrBusinessParameters, 4).init("01");
	private FixedLengthStringData trcConvrEndPntsDef = new FixedLengthStringData(1).isAPartOf(trcConvrBusinessParameters, 6).init("T");
	private FixedLengthStringData trcConvrDowString = new FixedLengthStringData(7).isAPartOf(trcConvrBusinessParameters, 7).init("0123456");
	private FixedLengthStringData trcConvrProcDayDef = new FixedLengthStringData(7).isAPartOf(trcConvrBusinessParameters, 14).init("NEEEEEN");
	private FixedLengthStringData trcConvrCenturyBreak = new FixedLengthStringData(8).isAPartOf(trcConvrBusinessParameters, 21).init("19/20;40");
	private FixedLengthStringData trcConvrFromDateMask = new FixedLengthStringData(8).isAPartOf(trcConvrBusinessParameters, 29).init("CCYYMMDD");
	private FixedLengthStringData trcConvrToDateMask = new FixedLengthStringData(8).isAPartOf(trcConvrBusinessParameters, 37).init("CCYYMMDD");
	private FixedLengthStringData trcConvrOut1DateMask = new FixedLengthStringData(8).isAPartOf(trcConvrBusinessParameters, 45).init("YYMMDD--");
	private FixedLengthStringData trcConvrOut2DateMask = new FixedLengthStringData(8).isAPartOf(trcConvrBusinessParameters, 53).init("--YYMMDD");
	private FixedLengthStringData trcConvrOut3DateMask = new FixedLengthStringData(8).isAPartOf(trcConvrBusinessParameters, 61).init("-CCYYDDD");
	private FixedLengthStringData filler25 = new FixedLengthStringData(20).isAPartOf(trcConvrBusinessParameters, 69, FILLER).init(SPACES);
	private FixedLengthStringData trcConvrInputParameters = new FixedLengthStringData(56).isAPartOf(trcConvrConversational, 89);
	/**
	 * Function code to indicate what function should be called, <br>
	 * U001 - convert date format to CCYYMMDD
	 * U002 - validate date value - which can be assumed always valid for now
	 */
	private FixedLengthStringData trcConvrFunctionCode = new FixedLengthStringData(4).isAPartOf(trcConvrInputParameters, 0);
//	private FixedLengthStringData trcConvrFunctionType = new FixedLengthStringData(1).isAPartOf(trcConvrFunctionCode, 0);
//	private FixedLengthStringData trcConvrFunctionNumber = new FixedLengthStringData(3).isAPartOf(trcConvrFunctionCode, 1);
	/**
	 * The date to be validated / converted, which should be in format of CCYYMMDD
	 */
	private FixedLengthStringData trcConvrFromDateX = new FixedLengthStringData(8).isAPartOf(trcConvrInputParameters, 4);
	private ZonedDecimalData trcConvrFromDate9 = new ZonedDecimalData(8, 0).isAPartOf(trcConvrFromDateX, 0, REDEFINE).setUnsigned();
	private FixedLengthStringData filler26 = new FixedLengthStringData(20).isAPartOf(trcConvrInputParameters, 36, FILLER).init(SPACES);
	private FixedLengthStringData trcConvrOutputParameters = new FixedLengthStringData(144).isAPartOf(trcConvrConversational, 145);
	private FixedLengthStringData trcConvrReturnCode = new FixedLengthStringData(83).isAPartOf(trcConvrOutputParameters, 0);
	/**
	 * Return code to indicates if it's valid date or if it's converted properly
	 */
	private ZonedDecimalData trcConvrReturnNum = new ZonedDecimalData(3, 0).isAPartOf(trcConvrReturnCode, 0).setUnsigned();
	private Validator trcConvrReturnGood = new Validator(trcConvrReturnNum, 0);
	private Validator trcConvrReturnBad = new Validator(trcConvrReturnNum, new ValueRange(001,999));
	/**
	 * Output date as in CCYYMMDD as well ?!
	 * Assumes no conversion is added, and the input date is passed as output date straight away for POC
	 */
	private FixedLengthStringData trcConvrStdoutDateX = new FixedLengthStringData(8).isAPartOf(trcConvrOutputParameters, 83);
	private FixedLengthStringData filler27 = new FixedLengthStringData(20).isAPartOf(trcConvrOutputParameters, 124, FILLER).init(SPACES);
	private FixedLengthStringData filler33 = new FixedLengthStringData(461).isAPartOf(trcConvrConversational, 539, FILLER).init(SPACES);

	private static final String hostIP = "123.12.23.45";
	private static final String hostName = "test.u2l.com";

	/**
	 * Overridden method to set DFHCOMMAREA
	 * @param commArea - DFHCOMMAREA
	 */
	public void setCommArea(FixedLengthStringData commArea) {
		super.setCommArea(commArea);
		if (commArea != null) {
			trcConvrConversational.changeLength(commArea.getLength());
			setAddressToAddress(trcConvrConversational, commArea);
		}
	}


	/**
	 * The mainline method is the default entry point of the program when called
	 * by other programs using the Quipoz runtime framework.
	 */
	public void mainline() {
		trcConvrReturnGood.setTrue();
		trcConvrStdoutDateX.set(trcConvrFromDateX);
	}

}
