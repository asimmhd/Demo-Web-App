<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"> 
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>            
<html>         
<head>  
<title>Untitled Document</title>             

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />   
<meta name="expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-store">
<LINK REL="StyleSheet" HREF="theme/QAStyle.jsp" TYPE="text/css">
<LINK REL="StyleSheet" HREF="theme/QAStyle.css" TYPE="text/css">
 
<%@ page import="java.util.*" %> 
<%@ page import="com.quipoz.framework.error.*" %>   
<%@ page import="com.quipoz.framework.exception.*" %> 
<%@ page import="com.quipoz.framework.util.*" %>  
<%@ page import="com.quipoz.framework.screenmodel.*" %> 

<%
	String stackTrace = null;
	String diags = null;
	BaseModel bm = (BaseModel) session.getAttribute( BaseModel.SESSION_VARIABLE);
	ErrorScreenModel screenModel = null;

	if (bm == null) {
		screenModel = new ErrorScreenModel(bm.getApplicationVariables()); 
	} 
    else {
		screenModel = (ErrorScreenModel) bm.getScreenModel();
	}

	WebServerException wse = screenModel.getException();
	if (wse != null) {
		stackTrace = wse.getOriginalStackTrace();
		if (stackTrace == null) stackTrace =  "Stack Trace not available";
	}
	else {
		stackTrace =  "Stack Trace not available";
	}
	
	stackTrace = stackTrace.replaceAll("\n", "<br>");

%>
 
</head>     
<body class="main">
	<form name="form1" method="post" action="process" target="_top" onClick="javascript:document.form1.<%=RequestParms.ACTIVE_FIELD%>.value=document.activeElement.name;">
		<input type="hidden" name="<%=RequestParms.ACTIVE_FIELD%>" value="">
		<input type="hidden" name="<%=RequestParms.ACTION%>" value="">
		<input type="hidden" name="<%=RequestParms.PLACE_HOLDER%>" value="<%=session.getAttribute(RequestParms.PLACE_HOLDER)%>">          
		<input type="hidden" name="<%=RequestParms.SCREEN_NAME%>" value="Error"/>
		<table class="main_table">
			<tr>
				<td class="error">
					<% 
						out.print(wse.getHtml());
					%>


					<P class="stacktrace" style="display: none; visibility: hidden">
					<% if (screenModel.getShowStackTrace()) { %>
						<%= stackTrace %>

					<% } %>
				</td>               
    		</tr>                 
		</table>
	</form> 
	
	<span style="display: none; visibility: hidden">
	<h3>Diagnostics</h3>
	<font face="Courier New"> 
	<Pre>
	
	<%BaseModel baseModel = (BaseModel) session.getAttribute(BaseModel.SESSION_VARIABLE );
      if ( baseModel != null) {
        ScreenModel fw = (ScreenModel) baseModel.getScreenModel();
        boolean llblank = false;
		String[] sa = QPUtilities.parseXML(fw.getDiagnostics().toString(), "line");%>
        <%=sa[0]%>
		<%while (!sa[1].equals("")) {
  			String aLine = sa[1];
			aLine = QPUtilities.replaceSubstring(aLine, "'", "&#039;");
			aLine = QPUtilities.replaceSubstring(aLine, "\"", "&#039;&#039;");

  			String sb[] = QPUtilities.parseXML(aLine, "longtext");
  			if (!sb[1].equals("")) {
  				aLine = "\n<br>" + AppVars.hf.formatDiagnosticPreamble(sb[0], sb[1]) + sb[2];
  			}
  			else {
  				aLine = "\n<br>" + aLine;
  			}
  	
  			sb = QPUtilities.parseXML(aLine, "SQLmsg");
  			boolean neitherfound = true;
		  	if (!sb[1].equals("")) {
			  	neitherfound = false;
		  		String sql = QPUtilities.extractXMLTag(sb[1], "msg");
				sql = QPUtilities.replaceSubstring(sql, "\n", " ");
		  		String access = QPUtilities.extractXMLTag(sb[1], "access");
		  		String where = QPUtilities.extractXMLTag(sb[1], "where");
		  		String code = QPUtilities.extractXMLTag(sb[1], "code");
		  		String time = QPUtilities.extractXMLTag(sb[1], "time").trim();
		  		aLine = sb[0] + AppVars.hf.formatDiagnosticSQL(sql, access, where, code, time) + sb[2];
		  	}
		  	
		  	sb = QPUtilities.parseXML(aLine, "SQLLongmsg");
		  	if (!sb[1].equals("")) {
			  	neitherfound = false;
		  		String sql = QPUtilities.extractXMLTag(sb[1], "msg");
				sql = QPUtilities.replaceSubstring(sql, "\n", " ");
		  		String access = QPUtilities.extractXMLTag(sb[1], "access");
		  		String where = QPUtilities.extractXMLTag(sb[1], "where");
		  		String code = QPUtilities.extractXMLTag(sb[1], "code");
		  		String time = QPUtilities.extractXMLTag(sb[1], "time");
		  		aLine = sb[0] + AppVars.hf.formatDiagnosticLongSQL(sql, access, where, code, time) + sb[2];
		  	}
			if (neitherfound) {
				aLine = QPUtilities.replaceSubstring(aLine, "\n", "<br>");
				aLine = QPUtilities.replaceSubstring(aLine, "<br><br>", "<br>");
				aLine = QPUtilities.removeTrailing(aLine, "<br>");
			}
			if (aLine.trim().length() > 0 || llblank == false) {
			
		  	%><%=aLine.trim()%>
		  	<%
		  	}
		  	llblank = (aLine.trim().length() == 0);
		  	sa = QPUtilities.parseXML(sa[2], "line");
		 }
		}
		else {%>
		 	<p>No diagnostics available
		 <%}%>
		 <%session.invalidate();%>
		 </Pre>
		 </Font>
	</span>
</body>
</html>
