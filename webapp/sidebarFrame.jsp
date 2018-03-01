<%@page import="com.csc.qre.bms.screen.BmsScreenModel"%>
<%@page import="com.csc.qre.cics.variables.CICSAppVars"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="com.quipoz.framework.screenmodel.ScreenModel"%>
<%@page import="com.quipoz.framework.util.BaseModel"%>
<%	final BaseModel bm = (BaseModel) request.getSession().getAttribute(BaseModel.SESSION_VARIABLE );
	final CICSAppVars av;
	final BmsScreenModel sm;
	if (bm == null) {
		av = null;
		sm = null;
	} else {
		av = (CICSAppVars) bm.getApplicationVariables();
		sm = (BmsScreenModel) bm.getScreenModel();
	}
%>
<HTML>

<HEAD> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script language="javascript" src="js/menuG4f.js"></script>
<script language='javaScript'>
	function isSupportKey(action){
		doAction('PFkey'+action);
	}
</script>
                                                          
<title>Generic SideBar</title>   
<LINK REL="StyleSheet" HREF="theme/QAStyle.jsp" TYPE="text/css">
<LINK REL="StyleSheet" HREF="theme/QAStyle.css" TYPE="text/css">
<script type="text/javascript">
function changeImg(id,path){
document.getElementById(id).src=path;
}
</script>
</HEAD>
<% if (sm != null && sm.getVariables() != null) {%>
<BODY class="menu" onload="initMenu();initMenu2('Demo', 'top');setSubFrame('Demo', parent.main)" onResize="doResize(); ">
	<script src=js/Sidebar.js></script>
	<script language="JavaScript" src="js/HMenu.js"></script> 
	<BR/>
	<div style='position:absolute; z-index:9; left: 0; top: 300;'>
	<!-- <div class="functions"><img src="images/function.gif" ></div> -->
	<br>
	<%-- No need to generate buttons as no restriction on what key can be pressed --%>
	<%--=CICSAppVars.hf.getHTMLButtons4FormActions(sm.getVariables())--%>
	
	</div> 

	<div style='position: absolute; z-index:9; left: 20; top: 460'><img src="images/pfkey03.gif" style="cursor:pointer"  alt="Exit" onclick="isSupportKey(03)" ></div>
	<div style='position: absolute; z-index:9; left: 80; top: 460'><img src="images/pfkey05.gif" style="cursor:pointer"  alt="Refresh" onclick="isSupportKey(12)"></div>
</BODY>
<%}%> 
</HTML>
