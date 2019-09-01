<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8");%> 

<%@ page import = "ch13.concern_counseling.ConcernCounselingDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<jsp:useBean id="article" scope="page" class="ch13.concern_counseling.ConcernCounselingDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
    article.setReg_date(new Timestamp(System.currentTimeMillis()) );
	article.setIp(request.getRemoteAddr());

	ConcernCounselingDBBean dbPro = ConcernCounselingDBBean.getInstance();
    dbPro.insertArticle(article);
    
	response.sendRedirect("concern_counseling.jsp?theme=" +request.getParameter("theme"));
%>