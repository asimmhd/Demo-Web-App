<%--------------------------------------------------------------------%>
<%--                                                                --%>
<%-- Generated by:    CSC                                           --%>
<%-- Generated from:  NPS302.BMS Record: NPS302                   --%>
<%-- Generation Date: Tue, 22 Nov 2011 16:10:01                     --%>
<%--                                                                --%>
<%-- Copyright 2011 CSC, all rights reserved.                       --%>
<%--                                                                --%>
<%-- This software is the proprietary information of CSC.           --%>
<%-- Use is subject to license terms.                               --%>
<%--                                                                --%>
<%--------------------------------------------------------------------%>



<%@ include file="/mainCommon1.jsp"%>

<%@ page import="com.sears.processing.code.model.Nps302ScreenVars" %>

<% Nps302ScreenVars sv = (Nps302ScreenVars) screenModel.getVariables();%>

<%= htmlFormatter.getLit(1, 1, 10, "${NPS30202}")%>
<%= htmlFormatter.getHTMLVar(1, 12, screenModel, sv, sv.nps3101)%>
<%= htmlFormatter.getLit(1, 26, 30, "${NPS_UNIT_SELECTION_MENU}", true)%>
<%= htmlFormatter.getHTMLVar(1, 71, screenModel, sv, sv.nps3102)%>
<%= htmlFormatter.getLit(5, 3, 61, "${TO_VIEW_DATA_FOR_A_SPECIFIC_UNIT_TYPE_THE_INFORMATION_BELOW}")%>
<%= htmlFormatter.getLit(6, 3, 17, "${THEN_PRESS_ENTER}")%>
<%= htmlFormatter.getLit(9, 11, 17, "${UNIT_NUMBER}")%>
<%= htmlFormatter.getHTMLVar(9, 30, screenModel, sv, sv.nps3103)%>
<%= htmlFormatter.getHTMLVar(22, 1, screenModel, sv, sv.nps3104)%>
<%= htmlFormatter.getHTMLVar(23, 1, screenModel, sv, sv.nps3105)%>
<%= htmlFormatter.getLit(24, 1, 79, "${ENTER_F1_HELP_F3_EXIT_F5_REFRESH_F12_PREV_SCREEN}", true)%>


<%@ include file="/mainCommon2.jsp"%>


