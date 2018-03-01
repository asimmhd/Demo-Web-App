<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">             
<%@ page session="false" %>
<%@ page import="com.quipoz.framework.util.*" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
<title> Quipoz sample application </title>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />   
<%String ctx = request.getContextPath() + "/";%>
<%  HttpSession sess = request.getSession();    
	BaseModel baseModel = (BaseModel) sess.getAttribute(BaseModel.SESSION_VARIABLE );
	AppVars av = baseModel.getApplicationVariables();
	long hb = av.getAppConfig().userHeartbeat;
%>

<LINK REL="StyleSheet" HREF="<%=ctx%>theme/QAStyle.jsp" TYPE="text/css"> 
<LINK REL="StyleSheet" HREF="<%=ctx%>theme/QAStyle.css" TYPE="text/css"> 
</head>
<body  onload='beatHeart()'>
<iframe  name='heart' src="heartbeat1.jsp"></iframe>
</body>
<script>
	function beatHeart() {
		setTimeout("delayedBeatHeart()", <%=hb%>);
	}
	
	function delayedBeatHeart() {
		try {
			if (document.frames.heart.document.forms[0].heartcore.value == 0) {
				alert("The Server has gone down, is inaccessible, or has been restarted. You must log in again. Attempting to redirect you to the main menu ... V2'" + document.frames[0].document.forms[0].heartcore.value + "'");
				parent.location.replace('<%=ctx%>');
			}
			else if (document.frames.heart.document.forms[0].heartcore.value == -1) {
				parent.location.replace('<%=ctx%>timeout.jsp');
			}
			else {
				//document.frames.heart.location = document.frames.heart.location;
				document.frames.heart.location.reload(false);
				setTimeout("delayedBeatHeart()", <%=hb%>);
			}
		}
		catch (e) {
			alert("Error - The Server has gone down, is inaccessible, or has been restarted. You must log in again. Attempting to redirect you to the main menu ..." + e.toString());
			parent.location.replace('<%=ctx%>');
		}
	}
</script>
</html>