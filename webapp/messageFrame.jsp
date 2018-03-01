<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Frameset//EN">
<%@ page session="false" %>
<%@page import="com.quipoz.framework.datatype.StringBase"%>
<HTML>
<head>  
<%@ page session="false" %>
<title>Untitled Document</title>             
  
<meta name="expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-store">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<LINK REL="StyleSheet" HREF="theme/QAStyle.jsp" TYPE="text/css">
<LINK REL="StyleSheet" HREF="theme/QAStyle.css" TYPE="text/css">
 
<%@ page import="com.quipoz.framework.util.*" %>  
<%@ page import="com.quipoz.framework.error.*" %>
<%@ page import="java.util.*" %>
</head> 
<BODY class="main" onload="doResize();" <%="onResize='doResize();'"%>>
<script src=js/Sidebar.js></script>
<script>    
function doResize() {
	if (window.dialogArguments != null) {
		return;
	}
    xsize = screen.width;
    ysize = screen.height;
    asize = document.body.offsetWidth;
    bsize = document.body.offsetHeight;
    pct   = 100;
    if (xsize >= 1024) {
    	pct = 130;
    }
    document.body.style.fontSize = (asize * pct / xsize) + "%";
    /* alert("Result " + document.body.style.fontSize); */
}
 /* modified by max wang(csc).add message to pass messages to error page.*/
function errorHelp(ctx,code,message) {
	enCodeMessage = encodeURI(message);
    thisElt = code;
    window.open(ctx + "I90ErrorHelp.jsp?code='" + thisElt + "'"+"&message='"+enCodeMessage+"'");
    return false;
}
</script>
<%
	String msgs = "NO MESSAGES";
	try {
		HttpSession sess = request.getSession();    
		BaseModel bm = (BaseModel) sess.getAttribute( BaseModel.SESSION_VARIABLE );
		AppVars av = bm.getApplicationVariables();
		if (!av.mainFrameLoaded) {
  			for (int i=0; i<40; i++) {
				av.waitabit(250);
	  			if (av.mainFrameLoaded) {
		  			break;
		  		}
  			}
  		}
		if (!av.mainFrameLoaded) {
		  	msgs = "Messages failed to load after 10 seconds."
		  		+ "<br>This is usually caused by slow response on the main form; errors may be incorrect."
		  		+ "<br>Press the refresh button here when the main form loads."
		  		+ "<button onClick='document.location.reload(false)'>Refresh errors</Button>";
		}
		else {
			String ctx = request.getContextPath() + "/";
			//msgs = av.getNewMessages();
			//msgs = QPUtilities.replaceSubstring(msgs, "\\n", "<br>");
			MessageList list = av.getMessages();
			Iterator<?> i = list.iterator();
			StringBuffer sb = new StringBuffer();
			while (i.hasNext()) {
				String str = i.next().toString();
				/* Convert to DBCS if required. We could bypass this if lang == "eng" and save some CPU. */
				str = StringBase.convertToDBCS(str);
				/* Remove any trailing ? which is historic and means "stop underlining" */
				str = QPUtilities.removeTrailing(str.trim(), "?");
				
				//added by wayne to parse errorno
				String[] arr = str.split("ErrorMessage");
				if (arr.length < 2)
					sb.append(str + "<br>");
				else{
					sb.append(arr[0]);
					for (int j=1;j<arr.length-1;j++){
						sb.append("<a href='#' onclick=\"return errorHelp('")
						.append(ctx).append("','")
						.append(arr[j].substring(0,4)).append("','")
						.append(av.hf.HTMLIfy(QPUtilities.removeTrailing(arr[j].substring(4), "?")))
						.append("')\">")
						.append(av.hf.HTMLIfy(QPUtilities.removeTrailing(arr[j].substring(4), "?")))
						.append(" &nbsp;  &nbsp;|&nbsp;&nbsp;   ")
						.append("</a>")
						;
					}	
					sb.append("<a href='#' onclick=\"return errorHelp('")
						.append(ctx).append("','")
						.append(arr[arr.length-1].substring(0,4)).append("','")
						.append(av.hf.HTMLIfy(QPUtilities.removeTrailing(arr[arr.length-1].substring(4), "?")))
						.append("')\">")
						.append(av.hf.HTMLIfy(QPUtilities.removeTrailing(arr[arr.length-1].substring(4), "?")))
						.append("</a>");					
						sb.append("<br>");
				}
			}

			msgs =  sb.toString();
		}
	}
	catch (Exception e) {
	}
%>
<div class="Message" style="position:absolute; top:1%; "><%=msgs%></div>
</BODY>
</HTML>
