<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="ch13.free_board.FreeBoardDBBean" %>    
    
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum=request.getParameter("pageNum");
	
	FreeBoardDBBean dbPro=FreeBoardDBBean.getInstance();
	int res = dbPro.deleteAdmin(num);
	System.out.println("delete res : " + res);
	
	if(res>0){
%>
	<meta http-equiv="Refresh" content="0;url=free_board.jsp?pageNum=<%=pageNum%>">

<%				
	}else{%>
    <script type="text/javascript">      
       <!--      
         alert("비밀번호가 맞지 않습니다");
         history.go(-1);
       -->
   </script>
   <%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>Insert title here</title>
</head>
<body>

</body>
</html>