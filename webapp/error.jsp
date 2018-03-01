<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Frameset//EN">
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%String ctx = request.getContextPath() + "/";%>
<HTML LANG="EN">
  <HEAD>
    <LINK REL="StyleSheet" HREF="theme/QAStyle.jsp" TYPE="text/css">
    <LINK REL="StyleSheet" HREF="theme/QAStyle.css" TYPE="text/css">
    <TITLE> ERROR PAGE </TITLE>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <HEAD>
  <FRAMESET COLS="150,*" frameBorder="0" framespacing="0">
    <FRAME SRC="<%=ctx%>error_2.jsp" NAME="frameMenu">
    <FRAMESET ROWS="*,100" frameBorder="0" framespacing="0">
      <FRAMESET ROWS="60,*" noscroll frameBorder="0" framespacing="0">
        <FRAME SRC="<%=ctx%>error_1.jsp" NAME="frameTitle" scrolling="no">
        <FRAME SRC="<%=ctx%>error_3.jsp" NAME="frameForm">
      </FRAMESET>
    </FRAMESET>
  </FRAMESET>
</HTML>