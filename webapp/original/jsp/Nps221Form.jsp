<%--------------------------------------------------------------------%>
<%--                                                                --%>
<%-- Generated by:    CSC                                           --%>
<%-- Generated from:  NPS221.BMS Record: NPS221                   --%>
<%-- Generation Date: Tue, 22 Nov 2011 16:10:01                     --%>
<%--                                                                --%>
<%-- Copyright 2011 CSC, all rights reserved.                       --%>
<%--                                                                --%>
<%-- This software is the proprietary information of CSC.           --%>
<%-- Use is subject to license terms.                               --%>
<%--                                                                --%>
<%--------------------------------------------------------------------%>



<%@ include file="/mainCommon1.jsp"%>

<%@ page import="com.sears.processing.code.model.Nps221ScreenVars" %>

<% Nps221ScreenVars sv = (Nps221ScreenVars) screenModel.getVariables();%>

<%= htmlFormatter.getLit(1, 1, 10, "${NPS22100}")%>
<%= htmlFormatter.getHTMLVar(1, 12, screenModel, sv, sv.nps2101)%>
<%= htmlFormatter.getLit(1, 25, 30, "${NPS_SERVICE_UNIT_INFORMATION}", true)%>
<%= htmlFormatter.getHTMLVar(1, 72, screenModel, sv, sv.nps2102)%>
<%= htmlFormatter.getLit(3, 1, 13, "${UNIT}")%>
<%= htmlFormatter.getHTMLVar(3, 15, screenModel, sv, sv.nps2103)%>
<%= htmlFormatter.getLit(3, 39, 13, "${UNIT_NAME}")%>
<%= htmlFormatter.getHTMLVar(3, 53, screenModel, sv, sv.nps2104)%>
<%= htmlFormatter.getLit(4, 1, 13, "${DRIV_INST}")%>
<%= htmlFormatter.getHTMLVar(4, 15, screenModel, sv, sv.nps2105)%>
<%= htmlFormatter.getLit(5, 1, 22, "${CUST_SERVICE_PHONE}")%>
<%= htmlFormatter.getHTMLVar(5, 24, screenModel, sv, sv.nps2106)%>
<%= htmlFormatter.getLit(5, 28, 1, "${ALL_BRACKET_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(5, 30, screenModel, sv, sv.nps2107)%>
<%= htmlFormatter.getLit(5, 34, 1, "${ALL_DASH_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(5, 36, screenModel, sv, sv.nps2108)%>
<%= htmlFormatter.getLit(7, 1, 13, "${REMARKS}")%>
<%= htmlFormatter.getHTMLVar(7, 15, screenModel, sv, sv.nps2109)%>
<%= htmlFormatter.getHTMLVar(8, 15, screenModel, sv, sv.nps2110)%>
<%= htmlFormatter.getLit(9, 15, 14, "${EFFECTIVE_DATE}")%>
<%= htmlFormatter.getHTMLVar(9, 31, screenModel, sv, sv.nps2111)%>
<%= htmlFormatter.getHTMLVar(9, 35, screenModel, sv, sv.nps2112)%>
<%= htmlFormatter.getHTMLVar(9, 39, screenModel, sv, sv.nps2113)%>
<%= htmlFormatter.getLit(9, 46, 15, "${EXPIRATION_DATE}")%>
<%= htmlFormatter.getHTMLVar(9, 63, screenModel, sv, sv.nps2114)%>
<%= htmlFormatter.getHTMLVar(9, 67, screenModel, sv, sv.nps2115)%>
<%= htmlFormatter.getHTMLVar(9, 71, screenModel, sv, sv.nps2116)%>
<%= htmlFormatter.getLit(11, 1, 16, "${MARKETING_ZONES}")%>
<%= htmlFormatter.getHTMLVar(11, 19, screenModel, sv, sv.nps2117)%>
<%= htmlFormatter.getHTMLVar(11, 26, screenModel, sv, sv.nps2118)%>
<%= htmlFormatter.getHTMLVar(11, 33, screenModel, sv, sv.nps2119)%>
<%= htmlFormatter.getHTMLVar(11, 40, screenModel, sv, sv.nps2120)%>
<%= htmlFormatter.getHTMLVar(11, 47, screenModel, sv, sv.nps2121)%>
<%= htmlFormatter.getLit(12, 1, 16, "${SCHEDULE_NO}")%>
<%= htmlFormatter.getHTMLVar(12, 19, screenModel, sv, sv.nps2122)%>
<%= htmlFormatter.getLit(12, 34, 16, "${PRINT_INDICATOR}")%>
<%= htmlFormatter.getHTMLVar(12, 52, screenModel, sv, sv.nps2123)%>
<%= htmlFormatter.getLit(13, 5, 74, "${SITE_HH_MM_A_P_HH_MM_A_P_SHOP_HH_MM_A_P_HH_MM_A_P}")%>
<%= htmlFormatter.getHTMLVar(14, 1, screenModel, sv, sv.nps2124)%>
<%= htmlFormatter.getHTMLVar(14, 11, screenModel, sv, sv.nps2125)%>
<%= htmlFormatter.getLit(14, 14, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(14, 16, screenModel, sv, sv.nps2126)%>
<%= htmlFormatter.getHTMLVar(14, 19, screenModel, sv, sv.nps2127)%>
<%= htmlFormatter.getLit(14, 23, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(14, 29, screenModel, sv, sv.nps2128)%>
<%= htmlFormatter.getLit(14, 32, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(14, 34, screenModel, sv, sv.nps2129)%>
<%= htmlFormatter.getHTMLVar(14, 37, screenModel, sv, sv.nps2130)%>
<%= htmlFormatter.getHTMLVar(14, 50, screenModel, sv, sv.nps2131)%>
<%= htmlFormatter.getLit(14, 53, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(14, 55, screenModel, sv, sv.nps2132)%>
<%= htmlFormatter.getHTMLVar(14, 58, screenModel, sv, sv.nps2133)%>
<%= htmlFormatter.getLit(14, 62, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(14, 67, screenModel, sv, sv.nps2134)%>
<%= htmlFormatter.getLit(14, 70, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(14, 72, screenModel, sv, sv.nps2135)%>
<%= htmlFormatter.getHTMLVar(14, 75, screenModel, sv, sv.nps2136)%>
<%= htmlFormatter.getHTMLVar(15, 1, screenModel, sv, sv.nps2137)%>
<%= htmlFormatter.getHTMLVar(15, 11, screenModel, sv, sv.nps2138)%>
<%= htmlFormatter.getLit(15, 14, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(15, 16, screenModel, sv, sv.nps2139)%>
<%= htmlFormatter.getHTMLVar(15, 19, screenModel, sv, sv.nps2140)%>
<%= htmlFormatter.getLit(15, 23, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(15, 29, screenModel, sv, sv.nps2141)%>
<%= htmlFormatter.getLit(15, 32, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(15, 34, screenModel, sv, sv.nps2142)%>
<%= htmlFormatter.getHTMLVar(15, 37, screenModel, sv, sv.nps2143)%>
<%= htmlFormatter.getHTMLVar(15, 50, screenModel, sv, sv.nps2144)%>
<%= htmlFormatter.getLit(15, 53, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(15, 55, screenModel, sv, sv.nps2145)%>
<%= htmlFormatter.getHTMLVar(15, 58, screenModel, sv, sv.nps2146)%>
<%= htmlFormatter.getLit(15, 62, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(15, 67, screenModel, sv, sv.nps2147)%>
<%= htmlFormatter.getLit(15, 70, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(15, 72, screenModel, sv, sv.nps2148)%>
<%= htmlFormatter.getHTMLVar(15, 75, screenModel, sv, sv.nps2149)%>
<%= htmlFormatter.getHTMLVar(16, 1, screenModel, sv, sv.nps2150)%>
<%= htmlFormatter.getHTMLVar(16, 11, screenModel, sv, sv.nps2151)%>
<%= htmlFormatter.getLit(16, 14, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(16, 16, screenModel, sv, sv.nps2152)%>
<%= htmlFormatter.getHTMLVar(16, 19, screenModel, sv, sv.nps2153)%>
<%= htmlFormatter.getLit(16, 23, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(16, 29, screenModel, sv, sv.nps2154)%>
<%= htmlFormatter.getLit(16, 32, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(16, 34, screenModel, sv, sv.nps2155)%>
<%= htmlFormatter.getHTMLVar(16, 37, screenModel, sv, sv.nps2156)%>
<%= htmlFormatter.getHTMLVar(16, 50, screenModel, sv, sv.nps2157)%>
<%= htmlFormatter.getLit(16, 53, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(16, 55, screenModel, sv, sv.nps2158)%>
<%= htmlFormatter.getHTMLVar(16, 58, screenModel, sv, sv.nps2159)%>
<%= htmlFormatter.getLit(16, 62, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(16, 67, screenModel, sv, sv.nps2160)%>
<%= htmlFormatter.getLit(16, 70, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(16, 72, screenModel, sv, sv.nps2161)%>
<%= htmlFormatter.getHTMLVar(16, 75, screenModel, sv, sv.nps2162)%>
<%= htmlFormatter.getHTMLVar(17, 1, screenModel, sv, sv.nps2163)%>
<%= htmlFormatter.getHTMLVar(17, 11, screenModel, sv, sv.nps2164)%>
<%= htmlFormatter.getLit(17, 14, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(17, 16, screenModel, sv, sv.nps2165)%>
<%= htmlFormatter.getHTMLVar(17, 19, screenModel, sv, sv.nps2166)%>
<%= htmlFormatter.getLit(17, 23, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(17, 29, screenModel, sv, sv.nps2167)%>
<%= htmlFormatter.getLit(17, 32, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(17, 34, screenModel, sv, sv.nps2168)%>
<%= htmlFormatter.getHTMLVar(17, 37, screenModel, sv, sv.nps2169)%>
<%= htmlFormatter.getHTMLVar(17, 50, screenModel, sv, sv.nps2170)%>
<%= htmlFormatter.getLit(17, 53, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(17, 55, screenModel, sv, sv.nps2171)%>
<%= htmlFormatter.getHTMLVar(17, 58, screenModel, sv, sv.nps2172)%>
<%= htmlFormatter.getLit(17, 62, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(17, 67, screenModel, sv, sv.nps2173)%>
<%= htmlFormatter.getLit(17, 70, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(17, 72, screenModel, sv, sv.nps2174)%>
<%= htmlFormatter.getHTMLVar(17, 75, screenModel, sv, sv.nps2175)%>
<%= htmlFormatter.getHTMLVar(18, 1, screenModel, sv, sv.nps2176)%>
<%= htmlFormatter.getHTMLVar(18, 11, screenModel, sv, sv.nps2177)%>
<%= htmlFormatter.getLit(18, 14, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(18, 16, screenModel, sv, sv.nps2178)%>
<%= htmlFormatter.getHTMLVar(18, 19, screenModel, sv, sv.nps2179)%>
<%= htmlFormatter.getLit(18, 23, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(18, 29, screenModel, sv, sv.nps2180)%>
<%= htmlFormatter.getLit(18, 32, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(18, 34, screenModel, sv, sv.nps2181)%>
<%= htmlFormatter.getHTMLVar(18, 37, screenModel, sv, sv.nps2182)%>
<%= htmlFormatter.getHTMLVar(18, 50, screenModel, sv, sv.nps2183)%>
<%= htmlFormatter.getLit(18, 53, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(18, 55, screenModel, sv, sv.nps2184)%>
<%= htmlFormatter.getHTMLVar(18, 58, screenModel, sv, sv.nps2185)%>
<%= htmlFormatter.getLit(18, 62, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(18, 67, screenModel, sv, sv.nps2186)%>
<%= htmlFormatter.getLit(18, 70, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(18, 72, screenModel, sv, sv.nps2187)%>
<%= htmlFormatter.getHTMLVar(18, 75, screenModel, sv, sv.nps2188)%>
<%= htmlFormatter.getHTMLVar(19, 1, screenModel, sv, sv.nps2189)%>
<%= htmlFormatter.getHTMLVar(19, 11, screenModel, sv, sv.nps2190)%>
<%= htmlFormatter.getLit(19, 14, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(19, 16, screenModel, sv, sv.nps2191)%>
<%= htmlFormatter.getHTMLVar(19, 19, screenModel, sv, sv.nps2192)%>
<%= htmlFormatter.getLit(19, 23, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(19, 29, screenModel, sv, sv.nps2193)%>
<%= htmlFormatter.getLit(19, 32, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(19, 34, screenModel, sv, sv.nps2194)%>
<%= htmlFormatter.getHTMLVar(19, 37, screenModel, sv, sv.nps2195)%>
<%= htmlFormatter.getHTMLVar(19, 50, screenModel, sv, sv.nps2196)%>
<%= htmlFormatter.getLit(19, 53, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(19, 55, screenModel, sv, sv.nps2197)%>
<%= htmlFormatter.getHTMLVar(19, 58, screenModel, sv, sv.nps2198)%>
<%= htmlFormatter.getLit(19, 62, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(19, 67, screenModel, sv, sv.nps2199)%>
<%= htmlFormatter.getLit(19, 70, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(19, 72, screenModel, sv, sv.nps2200)%>
<%= htmlFormatter.getHTMLVar(19, 75, screenModel, sv, sv.nps2201)%>
<%= htmlFormatter.getHTMLVar(20, 1, screenModel, sv, sv.nps2202)%>
<%= htmlFormatter.getHTMLVar(20, 11, screenModel, sv, sv.nps2203)%>
<%= htmlFormatter.getLit(20, 14, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(20, 16, screenModel, sv, sv.nps2204)%>
<%= htmlFormatter.getHTMLVar(20, 19, screenModel, sv, sv.nps2205)%>
<%= htmlFormatter.getLit(20, 23, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(20, 29, screenModel, sv, sv.nps2206)%>
<%= htmlFormatter.getLit(20, 32, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(20, 34, screenModel, sv, sv.nps2207)%>
<%= htmlFormatter.getHTMLVar(20, 37, screenModel, sv, sv.nps2208)%>
<%= htmlFormatter.getHTMLVar(20, 50, screenModel, sv, sv.nps2209)%>
<%= htmlFormatter.getLit(20, 53, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(20, 55, screenModel, sv, sv.nps2210)%>
<%= htmlFormatter.getHTMLVar(20, 58, screenModel, sv, sv.nps2211)%>
<%= htmlFormatter.getLit(20, 62, 4, "${TO}")%>
<%= htmlFormatter.getHTMLVar(20, 67, screenModel, sv, sv.nps2212)%>
<%= htmlFormatter.getLit(20, 70, 1, "${ALL_COLON_LENGTH_1}")%>
<%= htmlFormatter.getHTMLVar(20, 72, screenModel, sv, sv.nps2213)%>
<%= htmlFormatter.getHTMLVar(20, 75, screenModel, sv, sv.nps2214)%>
<%= htmlFormatter.getHTMLVar(21, 1, screenModel, sv, sv.nps2215)%>
<%= htmlFormatter.getHTMLVar(22, 1, screenModel, sv, sv.nps2216)%>
<%= htmlFormatter.getLit(24, 1, 52, "${ENTER_F1_HELP_F3_EXIT_F5_REFRESH_F12_PREV_SCREEN}")%>


<%@ include file="/mainCommon2.jsp"%>

