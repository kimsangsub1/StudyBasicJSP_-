<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<%@ page import="ch13.real_estate.RealEstateDBBean"%>
<%@ page import="java.sql.Timestamp"%>

<jsp:useBean id="article" scope="page"
	class="ch13.real_estate.RealEstateDataBean">
	<jsp:setProperty name="article" property="*" />
</jsp:useBean>

<%
	article.setReg_date(new Timestamp(System.currentTimeMillis()));
	article.setIp(request.getRemoteAddr());

	RealEstateDBBean dbPro = RealEstateDBBean.getInstance();
	dbPro.insertArticle(article);
	response.sendRedirect("real_estate.jsp" + "?real_estate=" + request.getParameter("real_estate") + "&home=" + request.getParameter("home"));
%>