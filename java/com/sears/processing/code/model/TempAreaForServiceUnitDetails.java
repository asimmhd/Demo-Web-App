/*
 * Generation Date: Fri, 11 Nov 2011 12:30:21
 * Generated by:    CSC
 * Generated from:  PS220SS
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
 * TempAreaForServiceUnitDetails.
 *	
 * @author  CSC
 * @version $Revision: #1 $
 */
public class TempAreaForServiceUnitDetails extends ExternalData {

    /**
     * serialVersionUID required as class is serializable.
     */
    private static final long serialVersionUID = 1L;

  //*******************************
  //Attribute Declarations
  //*******************************
  
  	public FixedLengthStringData ssNps220Record = new FixedLengthStringData(654);
  	public FixedLengthStringData filler = new FixedLengthStringData(12).isAPartOf(ssNps220Record, 0, FILLER);
  	public FixedLengthStringData scaSsNps220PgmLevel = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 12);
  	public BinaryData ssNps220PgmLevelLen = new BinaryData(4, 0).isAPartOf(scaSsNps220PgmLevel, 0);
  	public FixedLengthStringData ssNps220PgmLevelAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220PgmLevel, 2);
  	public FixedLengthStringData ssNps220PgmLevel = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 15);
  	public FixedLengthStringData scaSsNps220TdScreenDate = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 17);
  	public BinaryData ssNps220TdScreenDateLen = new BinaryData(4, 0).isAPartOf(scaSsNps220TdScreenDate, 0);
  	public FixedLengthStringData ssNps220TdScreenDateAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220TdScreenDate, 2);
  	public FixedLengthStringData ssNps220TdScreenDate = new FixedLengthStringData(8).isAPartOf(ssNps220Record, 20);
  	public FixedLengthStringData scaSsNps220SuNo = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 28);
  	public BinaryData ssNps220SuNoLen = new BinaryData(4, 0).isAPartOf(scaSsNps220SuNo, 0);
  	public FixedLengthStringData ssNps220SuNoAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220SuNo, 2);
  	public FixedLengthStringData ssNps220SuNo = new FixedLengthStringData(7).isAPartOf(ssNps220Record, 31);
  	public FixedLengthStringData scaSsNps220SuName = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 38);
  	public BinaryData ssNps220SuNameLen = new BinaryData(4, 0).isAPartOf(scaSsNps220SuName, 0);
  	public FixedLengthStringData ssNps220SuNameAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220SuName, 2);
  	public FixedLengthStringData ssNps220SuName = new FixedLengthStringData(27).isAPartOf(ssNps220Record, 41);
  	public FixedLengthStringData scaSsNps220AddrLine1 = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 68);
  	public BinaryData ssNps220AddrLine1Len = new BinaryData(4, 0).isAPartOf(scaSsNps220AddrLine1, 0);
  	public FixedLengthStringData ssNps220AddrLine1Attr = new FixedLengthStringData(1).isAPartOf(scaSsNps220AddrLine1, 2);
  	public FixedLengthStringData ssNps220AddrLine1 = new FixedLengthStringData(30).isAPartOf(ssNps220Record, 71);
  	public FixedLengthStringData scaSsNps220AddrLine2 = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 101);
  	public BinaryData ssNps220AddrLine2Len = new BinaryData(4, 0).isAPartOf(scaSsNps220AddrLine2, 0);
  	public FixedLengthStringData ssNps220AddrLine2Attr = new FixedLengthStringData(1).isAPartOf(scaSsNps220AddrLine2, 2);
  	public FixedLengthStringData ssNps220AddrLine2 = new FixedLengthStringData(30).isAPartOf(ssNps220Record, 104);
  	public FixedLengthStringData scaSsNps220City = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 134);
  	public BinaryData ssNps220CityLen = new BinaryData(4, 0).isAPartOf(scaSsNps220City, 0);
  	public FixedLengthStringData ssNps220CityAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220City, 2);
  	public FixedLengthStringData ssNps220City = new FixedLengthStringData(20).isAPartOf(ssNps220Record, 137);
  	public FixedLengthStringData scaSsNps220State = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 157);
  	public BinaryData ssNps220StateLen = new BinaryData(4, 0).isAPartOf(scaSsNps220State, 0);
  	public FixedLengthStringData ssNps220StateAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220State, 2);
  	public FixedLengthStringData ssNps220State = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 160);
  	public FixedLengthStringData scaSsNps220Zip5 = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 162);
  	public BinaryData ssNps220Zip5Len = new BinaryData(4, 0).isAPartOf(scaSsNps220Zip5, 0);
  	public FixedLengthStringData ssNps220Zip5Attr = new FixedLengthStringData(1).isAPartOf(scaSsNps220Zip5, 2);
  	public FixedLengthStringData ssNps220Zip5 = new FixedLengthStringData(5).isAPartOf(ssNps220Record, 165);
  	public FixedLengthStringData scaSsNps220Zip4 = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 170);
  	public BinaryData ssNps220Zip4Len = new BinaryData(4, 0).isAPartOf(scaSsNps220Zip4, 0);
  	public FixedLengthStringData ssNps220Zip4Attr = new FixedLengthStringData(1).isAPartOf(scaSsNps220Zip4, 2);
  	public FixedLengthStringData ssNps220Zip4 = new FixedLengthStringData(4).isAPartOf(ssNps220Record, 173);
  	public FixedLengthStringData scaSsNps220UnitType = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 177);
  	public BinaryData ssNps220UnitTypeLen = new BinaryData(4, 0).isAPartOf(scaSsNps220UnitType, 0);
  	public FixedLengthStringData ssNps220UnitTypeAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220UnitType, 2);
  	public FixedLengthStringData ssNps220UnitType = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 180);
  	public FixedLengthStringData scaSsNps220UnitDesc = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 182);
  	public BinaryData ssNps220UnitDescLen = new BinaryData(4, 0).isAPartOf(scaSsNps220UnitDesc, 0);
  	public FixedLengthStringData ssNps220UnitDescAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220UnitDesc, 2);
  	public FixedLengthStringData ssNps220UnitDesc = new FixedLengthStringData(60).isAPartOf(ssNps220Record, 185);
  	public FixedLengthStringData scaSsNps220InqCmyCd = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 245);
  	public BinaryData ssNps220InqCmyCdLen = new BinaryData(4, 0).isAPartOf(scaSsNps220InqCmyCd, 0);
  	public FixedLengthStringData ssNps220InqCmyCdAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220InqCmyCd, 2);
  	public FixedLengthStringData ssNps220InqCmyCd = new FixedLengthStringData(1).isAPartOf(ssNps220Record, 248);
  	public FixedLengthStringData scaSsNps220MsgCmyLst = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 249);
  	public BinaryData ssNps220MsgCmyLstLen = new BinaryData(4, 0).isAPartOf(scaSsNps220MsgCmyLst, 0);
  	public FixedLengthStringData ssNps220MsgCmyLstAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220MsgCmyLst, 2);
  	public FixedLengthStringData ssNps220MsgCmyLst = new FixedLengthStringData(16).isAPartOf(ssNps220Record, 252);
  	public FixedLengthStringData scaSsNps220RegionNo = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 268);
  	public BinaryData ssNps220RegionNoLen = new BinaryData(4, 0).isAPartOf(scaSsNps220RegionNo, 0);
  	public FixedLengthStringData ssNps220RegionNoAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220RegionNo, 2);
  	public FixedLengthStringData ssNps220RegionNo = new FixedLengthStringData(7).isAPartOf(ssNps220Record, 271);
  	public FixedLengthStringData scaSsNps220SvcPvdFl = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 278);
  	public BinaryData ssNps220SvcPvdFlLen = new BinaryData(4, 0).isAPartOf(scaSsNps220SvcPvdFl, 0);
  	public FixedLengthStringData ssNps220SvcPvdFlAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220SvcPvdFl, 2);
  	public FixedLengthStringData ssNps220SvcPvdFl = new FixedLengthStringData(1).isAPartOf(ssNps220Record, 281);
  	public FixedLengthStringData scaSsNps220CentralNo = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 282);
  	public BinaryData ssNps220CentralNoLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CentralNo, 0);
  	public FixedLengthStringData ssNps220CentralNoAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CentralNo, 2);
  	public FixedLengthStringData ssNps220CentralNo = new FixedLengthStringData(7).isAPartOf(ssNps220Record, 285);
  	public FixedLengthStringData scaSsNps220MktAtvFl = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 292);
  	public BinaryData ssNps220MktAtvFlLen = new BinaryData(4, 0).isAPartOf(scaSsNps220MktAtvFl, 0);
  	public FixedLengthStringData ssNps220MktAtvFlAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220MktAtvFl, 2);
  	public FixedLengthStringData ssNps220MktAtvFl = new FixedLengthStringData(1).isAPartOf(ssNps220Record, 295);
  	public FixedLengthStringData scaSsNps220HostNo = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 296);
  	public BinaryData ssNps220HostNoLen = new BinaryData(4, 0).isAPartOf(scaSsNps220HostNo, 0);
  	public FixedLengthStringData ssNps220HostNoAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220HostNo, 2);
  	public FixedLengthStringData ssNps220HostNo = new FixedLengthStringData(7).isAPartOf(ssNps220Record, 299);
  	public FixedLengthStringData scaSsNps220UnitConverted = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 306);
  	public BinaryData ssNps220UnitConvertedLen = new BinaryData(4, 0).isAPartOf(scaSsNps220UnitConverted, 0);
  	public FixedLengthStringData ssNps220UnitConvertedAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220UnitConverted, 2);
  	public FixedLengthStringData ssNps220UnitConverted = new FixedLengthStringData(1).isAPartOf(ssNps220Record, 309);
  	public FixedLengthStringData scaSsNps220PosUnNo = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 310);
  	public BinaryData ssNps220PosUnNoLen = new BinaryData(4, 0).isAPartOf(scaSsNps220PosUnNo, 0);
  	public FixedLengthStringData ssNps220PosUnNoAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220PosUnNo, 2);
  	public FixedLengthStringData ssNps220PosUnNo = new FixedLengthStringData(7).isAPartOf(ssNps220Record, 313);
  	public FixedLengthStringData scaSsNps220PrtInvCryFl = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 320);
  	public BinaryData ssNps220PrtInvCryFlLen = new BinaryData(4, 0).isAPartOf(scaSsNps220PrtInvCryFl, 0);
  	public FixedLengthStringData ssNps220PrtInvCryFlAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220PrtInvCryFl, 2);
  	public FixedLengthStringData ssNps220PrtInvCryFl = new FixedLengthStringData(1).isAPartOf(ssNps220Record, 323);
  	public FixedLengthStringData scaSsNps220RfsAcctNo = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 324);
  	public BinaryData ssNps220RfsAcctNoLen = new BinaryData(4, 0).isAPartOf(scaSsNps220RfsAcctNo, 0);
  	public FixedLengthStringData ssNps220RfsAcctNoAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220RfsAcctNo, 2);
  	public FixedLengthStringData ssNps220RfsAcctNo = new FixedLengthStringData(7).isAPartOf(ssNps220Record, 327);
  	public FixedLengthStringData scaSsNps220CrtDrcOrdFl = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 334);
  	public BinaryData ssNps220CrtDrcOrdFlLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CrtDrcOrdFl, 0);
  	public FixedLengthStringData ssNps220CrtDrcOrdFlAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CrtDrcOrdFl, 2);
  	public FixedLengthStringData ssNps220CrtDrcOrdFl = new FixedLengthStringData(1).isAPartOf(ssNps220Record, 337);
  	public FixedLengthStringData scaSsNps220RteUnNo = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 338);
  	public BinaryData ssNps220RteUnNoLen = new BinaryData(4, 0).isAPartOf(scaSsNps220RteUnNo, 0);
  	public FixedLengthStringData ssNps220RteUnNoAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220RteUnNo, 2);
  	public FixedLengthStringData ssNps220RteUnNo = new FixedLengthStringData(7).isAPartOf(ssNps220Record, 341);
  	public FixedLengthStringData scaSsNps220UnOpnDtMm = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 348);
  	public BinaryData ssNps220UnOpnDtMmLen = new BinaryData(4, 0).isAPartOf(scaSsNps220UnOpnDtMm, 0);
  	public FixedLengthStringData ssNps220UnOpnDtMmAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220UnOpnDtMm, 2);
  	public FixedLengthStringData ssNps220UnOpnDtMm = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 351);
  	public FixedLengthStringData scaSsNps220UnOpnDtDd = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 353);
  	public BinaryData ssNps220UnOpnDtDdLen = new BinaryData(4, 0).isAPartOf(scaSsNps220UnOpnDtDd, 0);
  	public FixedLengthStringData ssNps220UnOpnDtDdAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220UnOpnDtDd, 2);
  	public FixedLengthStringData ssNps220UnOpnDtDd = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 356);
  	public FixedLengthStringData scaSsNps220UnOpnDtYy = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 358);
  	public BinaryData ssNps220UnOpnDtYyLen = new BinaryData(4, 0).isAPartOf(scaSsNps220UnOpnDtYy, 0);
  	public FixedLengthStringData ssNps220UnOpnDtYyAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220UnOpnDtYy, 2);
  	public FixedLengthStringData ssNps220UnOpnDtYy = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 361);
  	public FixedLengthStringData scaSsNps220CnvSpdeDtMm = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 363);
  	public BinaryData ssNps220CnvSpdeDtMmLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CnvSpdeDtMm, 0);
  	public FixedLengthStringData ssNps220CnvSpdeDtMmAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CnvSpdeDtMm, 2);
  	public FixedLengthStringData ssNps220CnvSpdeDtMm = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 366);
  	public FixedLengthStringData scaSsNps220CnvSpdeDtDd = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 368);
  	public BinaryData ssNps220CnvSpdeDtDdLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CnvSpdeDtDd, 0);
  	public FixedLengthStringData ssNps220CnvSpdeDtDdAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CnvSpdeDtDd, 2);
  	public FixedLengthStringData ssNps220CnvSpdeDtDd = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 371);
  	public FixedLengthStringData scaSsNps220CnvSpdeDtYy = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 373);
  	public BinaryData ssNps220CnvSpdeDtYyLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CnvSpdeDtYy, 0);
  	public FixedLengthStringData ssNps220CnvSpdeDtYyAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CnvSpdeDtYy, 2);
  	public FixedLengthStringData ssNps220CnvSpdeDtYy = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 376);
  	public FixedLengthStringData scaSsNps220SvcUnCloDtMm = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 378);
  	public BinaryData ssNps220SvcUnCloDtMmLen = new BinaryData(4, 0).isAPartOf(scaSsNps220SvcUnCloDtMm, 0);
  	public FixedLengthStringData ssNps220SvcUnCloDtMAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220SvcUnCloDtMm, 2);
  	public FixedLengthStringData ssNps220SvcUnCloDtMm = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 381);
  	public FixedLengthStringData scaSsNps220SvcUnCloDtDd = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 383);
  	public BinaryData ssNps220SvcUnCloDtDdLen = new BinaryData(4, 0).isAPartOf(scaSsNps220SvcUnCloDtDd, 0);
  	public FixedLengthStringData ssNps220SvcUnCloDtDAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220SvcUnCloDtDd, 2);
  	public FixedLengthStringData ssNps220SvcUnCloDtDd = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 386);
  	public FixedLengthStringData scaSsNps220SvcUnCloDtYy = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 388);
  	public BinaryData ssNps220SvcUnCloDtYyLen = new BinaryData(4, 0).isAPartOf(scaSsNps220SvcUnCloDtYy, 0);
  	public FixedLengthStringData ssNps220SvcUnCloDtYAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220SvcUnCloDtYy, 2);
  	public FixedLengthStringData ssNps220SvcUnCloDtYy = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 391);
  	public FixedLengthStringData scaSsNps220CnvNpnDtMm = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 393);
  	public BinaryData ssNps220CnvNpnDtMmLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CnvNpnDtMm, 0);
  	public FixedLengthStringData ssNps220CnvNpnDtMmAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CnvNpnDtMm, 2);
  	public FixedLengthStringData ssNps220CnvNpnDtMm = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 396);
  	public FixedLengthStringData scaSsNps220CnvNpnDtDd = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 398);
  	public BinaryData ssNps220CnvNpnDtDdLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CnvNpnDtDd, 0);
  	public FixedLengthStringData ssNps220CnvNpnDtDdAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CnvNpnDtDd, 2);
  	public FixedLengthStringData ssNps220CnvNpnDtDd = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 401);
  	public FixedLengthStringData scaSsNps220CnvNpnDtYy = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 403);
  	public BinaryData ssNps220CnvNpnDtYyLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CnvNpnDtYy, 0);
  	public FixedLengthStringData ssNps220CnvNpnDtYyAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CnvNpnDtYy, 2);
  	public FixedLengthStringData ssNps220CnvNpnDtYy = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 406);
  	public FixedLengthStringData scaSsNps220PosStaDtMm = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 408);
  	public BinaryData ssNps220PosStaDtMmLen = new BinaryData(4, 0).isAPartOf(scaSsNps220PosStaDtMm, 0);
  	public FixedLengthStringData ssNps220PosStaDtMmAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220PosStaDtMm, 2);
  	public FixedLengthStringData ssNps220PosStaDtMm = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 411);
  	public FixedLengthStringData scaSsNps220PosStaDtDd = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 413);
  	public BinaryData ssNps220PosStaDtDdLen = new BinaryData(4, 0).isAPartOf(scaSsNps220PosStaDtDd, 0);
  	public FixedLengthStringData ssNps220PosStaDtDdAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220PosStaDtDd, 2);
  	public FixedLengthStringData ssNps220PosStaDtDd = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 416);
  	public FixedLengthStringData scaSsNps220PosStaDtYy = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 418);
  	public BinaryData ssNps220PosStaDtYyLen = new BinaryData(4, 0).isAPartOf(scaSsNps220PosStaDtYy, 0);
  	public FixedLengthStringData ssNps220PosStaDtYyAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220PosStaDtYy, 2);
  	public FixedLengthStringData ssNps220PosStaDtYy = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 421);
  	public FixedLengthStringData scaSsNps220CnvCarsDtMm = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 423);
  	public BinaryData ssNps220CnvCarsDtMmLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CnvCarsDtMm, 0);
  	public FixedLengthStringData ssNps220CnvCarsDtMmAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CnvCarsDtMm, 2);
  	public FixedLengthStringData ssNps220CnvCarsDtMm = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 426);
  	public FixedLengthStringData scaSsNps220CnvCarsDtDd = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 428);
  	public BinaryData ssNps220CnvCarsDtDdLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CnvCarsDtDd, 0);
  	public FixedLengthStringData ssNps220CnvCarsDtDdAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CnvCarsDtDd, 2);
  	public FixedLengthStringData ssNps220CnvCarsDtDd = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 431);
  	public FixedLengthStringData scaSsNps220CnvCarsDtYy = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 433);
  	public BinaryData ssNps220CnvCarsDtYyLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CnvCarsDtYy, 0);
  	public FixedLengthStringData ssNps220CnvCarsDtYyAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CnvCarsDtYy, 2);
  	public FixedLengthStringData ssNps220CnvCarsDtYy = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 436);
  	public FixedLengthStringData scaSsNps220CpuAidRte = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 438);
  	public BinaryData ssNps220CpuAidRteLen = new BinaryData(4, 0).isAPartOf(scaSsNps220CpuAidRte, 0);
  	public FixedLengthStringData ssNps220CpuAidRteAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220CpuAidRte, 2);
  	public FixedLengthStringData ssNps220CpuAidRte = new FixedLengthStringData(1).isAPartOf(ssNps220Record, 441);
  	public FixedLengthStringData scaSsNps220FgnStrPrtMku = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 442);
  	public BinaryData ssNps220FgnStrPrtMkuLen = new BinaryData(4, 0).isAPartOf(scaSsNps220FgnStrPrtMku, 0);
  	public FixedLengthStringData ssNps220FgnStrPrtMkuAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220FgnStrPrtMku, 2);
  	public FixedLengthStringData ssNps220FgnStrPrtMku = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 445);
  	public FixedLengthStringData scaSsNps220StateRegNo = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 447);
  	public BinaryData ssNps220StateRegNoLen = new BinaryData(4, 0).isAPartOf(scaSsNps220StateRegNo, 0);
  	public FixedLengthStringData ssNps220StateRegNoAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220StateRegNo, 2);
  	public FixedLengthStringData ssNps220StateRegNo = new FixedLengthStringData(12).isAPartOf(ssNps220Record, 450);
  	public FixedLengthStringData scaSsNps220InhomePrtMku = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 462);
  	public BinaryData ssNps220InhomePrtMkuLen = new BinaryData(4, 0).isAPartOf(scaSsNps220InhomePrtMku, 0);
  	public FixedLengthStringData ssNps220InhomePrtMkuAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220InhomePrtMku, 2);
  	public FixedLengthStringData ssNps220InhomePrtMku = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 465);
  	public FixedLengthStringData scaSsNps220ShipDest = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 467);
  	public BinaryData ssNps220ShipDestLen = new BinaryData(4, 0).isAPartOf(scaSsNps220ShipDest, 0);
  	public FixedLengthStringData ssNps220ShipDestAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220ShipDest, 2);
  	public FixedLengthStringData ssNps220ShipDest = new FixedLengthStringData(1).isAPartOf(ssNps220Record, 470);
  	public FixedLengthStringData scaSsNps220ShopPrtMku = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 471);
  	public BinaryData ssNps220ShopPrtMkuLen = new BinaryData(4, 0).isAPartOf(scaSsNps220ShopPrtMku, 0);
  	public FixedLengthStringData ssNps220ShopPrtMkuAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220ShopPrtMku, 2);
  	public FixedLengthStringData ssNps220ShopPrtMku = new FixedLengthStringData(2).isAPartOf(ssNps220Record, 474);
  	public FixedLengthStringData scaSsNps220AcsDckUnNo = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 476);
  	public BinaryData ssNps220AcsDckUnNoLen = new BinaryData(4, 0).isAPartOf(scaSsNps220AcsDckUnNo, 0);
  	public FixedLengthStringData ssNps220AcsDckUnNoAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220AcsDckUnNo, 2);
  	public FixedLengthStringData ssNps220AcsDckUnNo = new FixedLengthStringData(7).isAPartOf(ssNps220Record, 479);
  	public FixedLengthStringData scaSsNps220Msg = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 486);
  	public BinaryData ssNps220MsgLen = new BinaryData(4, 0).isAPartOf(scaSsNps220Msg, 0);
  	public FixedLengthStringData ssNps220MsgAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220Msg, 2);
  	public FixedLengthStringData ssNps220Msg = new FixedLengthStringData(79).isAPartOf(ssNps220Record, 489);
  	public FixedLengthStringData scaSsNps220Msg2 = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 568);
  	public BinaryData ssNps220Msg2Len = new BinaryData(4, 0).isAPartOf(scaSsNps220Msg2, 0);
  	public FixedLengthStringData ssNps220Msg2Attr = new FixedLengthStringData(1).isAPartOf(scaSsNps220Msg2, 2);
  	public FixedLengthStringData ssNps220Msg2 = new FixedLengthStringData(79).isAPartOf(ssNps220Record, 571);
  	public FixedLengthStringData scaSsNps220Command = new FixedLengthStringData(3).isAPartOf(ssNps220Record, 650);
  	public BinaryData ssNps220CommandLen = new BinaryData(4, 0).isAPartOf(scaSsNps220Command, 0);
  	public FixedLengthStringData ssNps220CommandAttr = new FixedLengthStringData(1).isAPartOf(scaSsNps220Command, 2);
  	public FixedLengthStringData ssNps220Command = new FixedLengthStringData(1).isAPartOf(ssNps220Record, 653);


    /**
     * initialize all variables in the class.
     */
	public void initialize() {
		COBOLFunctions.initialize(ssNps220Record);
	}	

	
    /**
     * Retrieves the entire copybook as if it was a single string.
     * @return single FixedLengthString
     */
	public FixedLengthStringData getBaseString() {
  		if (baseString == null) {
   			baseString = new FixedLengthStringData(ssNps220Record.getLength());
    		ssNps220Record.isAPartOf(baseString, true);
   			baseString.resetIsAPartOfOffset();
  		}
  		return baseString;
	}


}