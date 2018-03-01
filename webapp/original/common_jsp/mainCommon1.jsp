<%@page import="com.quipoz.framework.util.RequestParms"%>
<%@page import="com.quipoz.framework.util.BaseModel"%>
<%@page import="com.csc.qre.bms.screen.BmsScreenModel"%>
<%@page import="com.quipoz.framework.datatype.*" %>
<%@page import="java.lang.reflect.Field" %>
<%@page import="com.csc.qre.bms.screen.Color"%>
<%@page import="com.csc.qre.bms.web.BmsHtmlFormatter"%>
<%@page import="com.csc.qre.cics.variables.CICSAppVars"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.Locale"%>
<%@page import="java.util.ResourceBundle"%>
<html>
<head>
<meta http-equiv="pragram" content="no-cache">
<meta http-equiv="cache-control" content="no-cache, must-revalidate">
<meta http-equiv="expires" content="0">
<%String ctx = request.getContextPath() + "/";%>
<LINK REL="StyleSheet" HREF="<%=ctx%>theme/QAStyle.jsp" TYPE="text/css"> 
<LINK REL="StyleSheet" HREF="<%=ctx%>theme/QAStyle.css" TYPE="text/css">  
<script language="javascript" src="<%=ctx%>js/menuG4f.js"></script>
</head>
<%  
	

    final BmsHtmlFormatter htmlFormatter = BmsHtmlFormatter.getInstance(); 
	
	final BaseModel baseModel = (BaseModel) request.getSession().getAttribute(BaseModel.SESSION_VARIABLE );
    if ( baseModel == null) {
    	return;
    }
    final BmsScreenModel screenModel = (BmsScreenModel) baseModel.getOnScreenModel();
    final CICSAppVars appVars = (CICSAppVars)baseModel.getApplicationVariables();
    
    final String contextPath = request.getContextPath();
    
    final String lang = appVars.getUserLanguage().toString().toUpperCase() + "/";  
%>
<script language='javaScript'>
	function doCheck() { 
		keyClosing = (event.altKey == 1 || event.ctrlKey == 1) && thisKey == 115;
		if (!submitted && (event.clientY <= 0 || keyClosing))  {
			event.returnValue = "Your transactions will be rolled back and you will be logged off."; 
		}
	}
	function doCancel() {
		window.showModelessDialog ("<%=contextPath%>/AutoKill.jsp", null, "dialogWidth:640px; dialogHeight:420px; resizable:yes;");
	}
		
	
function hyperLinkTo(nextField){
		nextField.value="X";
		doAction('PFKEY0');
}
</script>
<script language='javaScript'>
   	thisField = ' ';
   	lastField = ' ';
   	currField = '<%=screenModel.getActiveField()%>';
   	nextOPrev = ' ';
   	semaphore = '<%=screenModel.getSemaphore()%>';
   	popupMenu = '<%=false%>';
   	todayDate = '<%=screenModel.getCurrentDate()%>';
   	popup     = '<%=false%>';
   	error     = '<%=false%>';
   	thisElt   = null;
   	validKeys    = null;
   	<%-- rollUpEnabled and rollDownEnabled will be set in commonScript2.jsp--%>
   	rollUpEnabled = false;
   	rollDownEnabled = false;
  	    cancelled = true; //Will be set to false in process action code. If true, means the user closed the browser.
</script>

<script language='javaScript'>
	function suppressit() {
		return false;
	}
</script>
<script language="javaScript" src='<%=contextPath%>/js/calendar1.js'></script>
<!-- <script language="javaScript" src='<%=contextPath%>/js/popcalendar.js'></script> -->
<script language='javaScript' src='<%=contextPath%>/js/commonScript1.js'></script>
<script language='javaScript' src='<%=contextPath%>/js/Sidebar.js'></script>
<Script>
	ctx = "<%=contextPath%>" + "/";
	lang = "<%=lang%>";
</Script>
<body class="main" style='overflow-x:hidden; overflow-y:hidden; width=700px;' onload="initSub('Demo');doLoad();" onKeyDown="return checkAllKeys();" <%="onResize='doResize();'"%> onHelp="return screenHelp();" onClick='doClick(this);' onBeforeUnload='return doCheck()' unUnload='doCancel()'>
<DIV class="main" style='position: absolute; left: 1%; top:-16px; width: 100%; height: 100%'>
<form name="form1" method="post" action="<%=contextPath%>/process" target="_top" onSubmit="return suppressit()" onClick="selectSpecial()">
<div style='position:absolute; top:-20; left:-20'>
<input name='stopper1' class="invisibleSubmit" type="BUTTON" onFocus="selectFirstField();" TABINDEX=1>
<input name='imgpath' id='imgpath' style="visibility:hidden" value="<%=contextPath%>/images/">
<input name='hiddeninput' id='hiddeninput' style="position: relative; top:0; left:0; width:0; z-index:2;">
</div>
      <input type="hidden" name="<%=RequestParms.ACTIVE_FIELD%>" value="">
      <input type="hidden" name="<%=RequestParms.PLACE_HOLDER%>" value="<%=request.getSession().getAttribute(RequestParms.PLACE_HOLDER)%>">
      <input type="hidden" name="<%=RequestParms.PROCESSTIME%>" value="">
