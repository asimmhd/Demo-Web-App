<%@ page session="false" %>
<%/* Contains CSS entries dependent on the context path.*/
  String ctx = request.getContextPath() + "/";
%>

.blink 			{ behavior:url(<%=ctx%>theme/blink.htc);}
.reverse		{ behavior:url(<%=ctx%>theme/reverse.htc);}

.dropNotSelected {
	border:1px solid #ccc;
	padding-right:1em;
	font-size:100%;
	background:url(<%=ctx%>/images/arrow.gif) top center no-repeat;
	display:block;
	position:relative;
}

.dropSelected {
	border:1px solid #ccc;
	color:white;
	padding-right:1em;
	font-size:100%;
	background: blue;
	display:block;
	position:relative;
}
