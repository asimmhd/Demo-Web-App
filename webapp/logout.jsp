<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Frameset//EN">
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<HTML LANG="EN">
  <HEAD>
    <LINK REL="StyleSheet" HREF="theme/QAStyle.jsp" TYPE="text/css">
    <LINK REL="StyleSheet" HREF="theme/QAStyle.css" TYPE="text/css">
    <TITLE> LOGOUT PAGE </TITLE>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <HEAD>
<%String ctx = request.getContextPath() + "/";%>
  <FRAMESET COLS="150,*" frameBorder="0" framespacing="0">
    <FRAME SRC="<%=ctx%>logout_2.jsp" NAME="frameMenu">
    <FRAMESET ROWS="*,100" frameBorder="0" framespacing="0">
      <FRAMESET ROWS="60,*" noscroll frameBorder="0" framespacing="0">
        <FRAME SRC="<%=ctx%>logout_1.jsp" NAME="frameTitle" scrolling="no">
        <FRAME SRC="<%=ctx%>logout_3.jsp" NAME="frameForm">
      </FRAMESET>
      <FRAME SRC="<%=ctx%>messageFrame.jsp" NAME="frameMessages">
    </FRAMESET>
  </FRAMESET>
</HTML>