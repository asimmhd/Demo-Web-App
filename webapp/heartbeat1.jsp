<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">   
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>          
<html>
<head>
<title> Quipoz sample application </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">
<%String ctx = request.getContextPath() + "/";%>
<%@ page import="com.quipoz.framework.util.BaseModel" %>
<%@ page import="com.quipoz.framework.util.AppVars" %>
</head>
<%
    long heartBeat = 0;
    HttpSession sess = request.getSession();    
    BaseModel bm = (BaseModel) sess.getAttribute(BaseModel.SESSION_VARIABLE );
    if (bm != null) {
    	AppVars av = bm.getApplicationVariables();
    	if (av != null) {
    		if (av.getHeartBeat() == 0) {
    			heartBeat = -1;
    		}
    		else {
    			long then = av.getScreenEntry();
    			long now = System.currentTimeMillis();
				long msecs = now - then;
				if (av.getAppConfig() == null || msecs >= 2 * av.getAppConfig().userTimeout) {
					heartBeat = -1;
				}
	    		else {
    				heartBeat = now;
    				av.setHeartBeat(now);
    			}
    		}
    	}
    }
%>
<body>
<form name='heartform'>
Heartbeat: <input disabled name='heartcore' value='<%=(heartBeat<=0?String.valueOf(heartBeat):new java.sql.Time(heartBeat).toString())%>'>
</form>
</body >
</html>