<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8");%> 
    
<%@ page import = "ch13.restaurant_review.RestaurantReviewDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<jsp:useBean id="article" scope="page" class="ch13.restaurant_review.RestaurantReviewDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
    article.setReg_date(new Timestamp(System.currentTimeMillis()) );
	article.setIp(request.getRemoteAddr());

	RestaurantReviewDBBean dbPro = RestaurantReviewDBBean.getInstance();
    dbPro.insertArticle(article);
    
	response.sendRedirect("restaurant_review.jsp?food=" + request.getParameter("food"));
%>