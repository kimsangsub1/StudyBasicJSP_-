<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch13.restaurant_review.RestaurantReviewDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="article" scope="page" class="ch13.restaurant_review.RestaurantReviewDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<%
    String pageNum = request.getParameter("pageNum");

	RestaurantReviewDBBean dbPro = RestaurantReviewDBBean.getInstance();
    int check = dbPro.updateArticle(article); 

    if(check==1){
%>
	  <meta http-equiv="Refresh" content="0;url=restaurant_review.jsp?pageNum=<%=pageNum%>&food=<%=request.getParameter("food") %>" >
<% }else{%>
      <script type="text/javascript">      
      <!--      
        alert("비밀번호가 맞지 않습니다");
        history.go(-1);
      -->
     </script>
<%
  }
%> 