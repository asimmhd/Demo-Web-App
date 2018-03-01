/*
 * Generation Date: Tue, 15 Nov 2011 13:53:15
 * Generated by:    CSC
 * Generated from:   Table: IPSERROR
 * 
 * Copyright 2011 CSC, all rights reserved.
 *
 * This software is the proprietary information of CSC.
 * Use is subject to license terms.
*/
package com.sears.processing.dataaccess;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.csc.qre.cics.fileacess.vsam.FileType;
import com.csc.qre.cics.fileacess.vsam.IndexedVsamFile;
import com.csc.qre.cics.fileacess.vsam.annotations.Vsam;
import com.csc.qre.cics.fileacess.vsam.annotations.VsamKsds;

/**
 * Provides access to the VSAM data objects
 *	
 */
@Entity
@Table(name="IPSERROR")
@Vsam(name="IPSERROR", type=FileType.KeySequenced, length=79, fixedLength=true)
@VsamKsds(keyLength = 4)
public class IpserrorKsdsVsam extends IndexedVsamFile {

	public IpserrorKsdsVsam(String name) {
		super(name);
	}

}