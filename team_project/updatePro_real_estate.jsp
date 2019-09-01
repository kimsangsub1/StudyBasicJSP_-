<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch13.real_estate.RealEstateDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="article" scope="page" class="ch13.real_estate.RealEstateDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<%
 
    String pageNum = request.getParameter("pageNum");

	RealEstateDBBean dbPro = RealEstateDBBean.getInstance();
    int check = dbPro.updateArticle(article); 

    if(check==1){
%>
	  <meta http-equiv="Refresh" content="0;url=real_estate.jsp?real_estate=<%=request.getParameter("real_estate")%>&home=<%=request.getParameter("home") %>" >
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