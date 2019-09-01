<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8");%> 
    
<%@ page import = "ch13.free_board.FreeBoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<jsp:useBean id="article" scope="page" class="ch13.free_board.FreeBoardDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
    article.setReg_date(new Timestamp(System.currentTimeMillis()) );
	article.setIp(request.getRemoteAddr());

	FreeBoardDBBean dbPro = FreeBoardDBBean.getInstance();
    dbPro.insertArticle(article);

	response.sendRedirect("free_board.jsp");
%>