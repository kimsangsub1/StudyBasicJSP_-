<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8");%> 
   
<%@ page import = "ch13.IDT_marketplace.IDTMarketplaceDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<jsp:useBean id="article" scope="page" class="ch13.IDT_marketplace.IDTMarketplaceDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
    article.setReg_date(new Timestamp(System.currentTimeMillis()) );
	article.setIp(request.getRemoteAddr());

	IDTMarketplaceDBBean dbPro = IDTMarketplaceDBBean.getInstance();
    dbPro.insertArticle(article);
    
	response.sendRedirect("IDT_marketplace.jsp");
%>