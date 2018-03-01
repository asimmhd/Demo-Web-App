<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<%@ page session="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
	<h2>Demo Menu</h2>
	<h3>Currently available options</h3>
	<SCRIPT>
		function openMain() {
			var pageURL = 'process?action_key=screenInit&screen=default&previousMenu=index.jsp';
			var title = 'SearsPoC';
			var w = screen.width * 0.95;
			var h = screen.height * 0.95;
			var left = (screen.width/2)-(w/2);
			var top = (screen.height/2)-(h/2);
			window.open (pageURL, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width='+w+', height='+h+', top='+top+', left='+left);
		}
		
	</SCRIPT>
	<ol>
		<li><a href='javascript:openMain()'>Go Main Menu</a></li>
	</ol>
	<!-- 
<form name="submitForm" action="process" method="post">
	<input name="action_key" value="screenInit" type="hidden">
	<input name="previousMenu" value="index.jsp" type="hidden">
	<input name="screen" value="default" type="hidden">
	Please enter test case no (1-7): <input name="caseNo" value="1" type="text">
	<input type="submit" value="Submit">
</form>
 -->
</body>
</html>