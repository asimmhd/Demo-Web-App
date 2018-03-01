<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">             
<%@ page session="true" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.quipoz.framework.util.*" %>
<HTML>                                                            
<HEAD>                                                            
<title>Generic Title page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<%String ctx = request.getContextPath() + "/";
 BaseModel baseModel = (BaseModel) session.getAttribute(BaseModel.SESSION_VARIABLE );
 AppVars av = (AppVars)baseModel.getApplicationVariables();
%>  
<LINK REL="StyleSheet" HREF="theme/QAStyle.jsp" TYPE="text/css">
<LINK REL="StyleSheet" HREF="theme/QAStyle.css" TYPE="text/css">
<LINK REL="StyleSheet" HREF="<%=ctx%>theme/layout_1.css" TYPE="text/css">
<style type="text/css">

#apDiv1 {
	position:absolute;
	left:750px;
	top:10px;
	width:200px;
	height:40px;
	z-index:1;
	overflow: hidden;
}

</style>

<%@ page import="java.util.*" %>
<%@ page import="com.quipoz.framework.error.*" %>
<%@ page import="com.quipoz.framework.util.*" %>
<%@ page import="com.quipoz.framework.tablemodel.*" %>
<%@ page import="com.quipoz.framework.screenmodel.*" %>
</HEAD>                                                            
  <BODY class="main">
	<script src=js/Sidebar.js></script>
      <div id="apDiv1">
  <div align="right"></div>
</div>
 
<div class="container">
			<div class="browsing">
				<div class="logo">
					<img width="300px" height="60px" src="<%=ctx%>images/csclogo.gif">
				</div>
				<div class="navigation">
<%--				 <a href="javascript:;" style="font-style: normal; color: #FFFFFF;  font-weight: 400" onClick="doAction('PFKEY02')">Session Info</a>
					&nbsp; &nbsp;  <a href="javascript:;" style="font-style: normal; color: #FFFFFF;  font-weight: 400" onClick="doAction('PFKEY03')">Home        </a>
					&nbsp; &nbsp;   <a href="javascript:;" style="font-style: normal; color: #FFFFFF;  font-weight: 400" onClick="doAction('PFKEY01')">Help			</a> --%>
					&nbsp; &nbsp;  <a href="javascript:;" style="font-style: normal; color: #FFFFFF;  font-weight: 400" onClick="kill();return false;">Log out		</a>
				&nbsp; &nbsp; 
			</div>
			</div>
	</div>
		<script type="text/javascript">		
	function kill() {
		x = confirm("Are you sure you want to interrupt and kill your session?");
		if (x == true) {
			/*window.showModalDialog ('<%=ctx%>KillSession.jsp?t=' + new Date(), ' ', 'dialogWidth:100px; dialogHeight:100px; resizable:yes; status:yes;');*/
			var killsession='<%=ctx%>logout.jsp';
			parent.location.replace(killsession);
		}
	}
</script>
			
  </BODY>
</HTML>
