<%
  String user = null;
  
  if (request.getUserPrincipal() != null) {
  
  	user = request.getUserPrincipal().getName();
  }

 	request.getSession().invalidate();

%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>logout</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<LINK REL="StyleSheet" HREF="theme/QAStyle.jsp" TYPE="text/css">
	<LINK REL="StyleSheet" HREF="theme/QAStyle.css" TYPE="text/css">
</head>

<body class="main">
	<table class="main_table">
		<tr >
			<td class="page_heading" align="left" colspan="2"> LOGOUT </td>
		</tr>
		<tr>
			<td class="break"/>
		</tr>
		<tr>
			<td>
				<% if (user != null) {%>
					<P>User '<%=user%>' has been successfully logged out of the System.</p>
				<% } else {%>
					<P>You are now logged off.</P>
				<%}%>
		    </td>
		</tr>
	</table>
</body>
</html>
