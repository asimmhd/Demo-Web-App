<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<HTML>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /></head>
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
		<tr><td><img src="images/csclogo.gif" class="logo"></td></tr>
	</table>

    <BR/>
        <P TITLE="Log on again"><button style='width:100%' onClick="javaScript:goMainMenu();">Logon</Button></P>
	</BODY>
</HTML>


