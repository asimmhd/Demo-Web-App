<%@ page import="java.util.*"%>
<%@ page import="com.quipoz.framework.error.*"%>
<%@ page import="com.quipoz.framework.exception.*"%>
<%@ page import="com.quipoz.framework.util.*"%>
<%@ page import="com.quipoz.framework.screenmodel.*"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<LINK REL="StyleSheet" HREF="theme/QAStyle.jsp" TYPE="text/css">
<LINK REL="StyleSheet" HREF="theme/QAStyle.css" TYPE="text/css">
<BODY class="menu">
	<script>
		function goMainMenu() {
			parent.location.href = 'process?action_key=screenInit&screen=default&previousMenu=index.jsp';
			return false;
		}
	</script>
	<table>
		<tr>
			<td><img src="images/csclogo.gif" class="logo"></td>
		</tr>
	</table>

	<BR />
	<P TITLE="Return to Main Menu">
		<button style='width:100%' onClick="javaScript:goMainMenu();">Go Main Menu</Button>
	</P>
</BODY>
</HTML>