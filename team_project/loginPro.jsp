<%@page import="team01.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%request.setCharacterEncoding("utf-8");%>


      
<!DOCTYPE html>
<%
	String email=request.getParameter("email");
	String passwd=request.getParameter("passwd");
	LogonDBBean logon = LogonDBBean.getInstance();
	System.out.println("email : " +email + ", passwd : " + passwd);
	int check=logon.userCheck(email,passwd);
	if(check==1){
		System.out.println("inside check");
		Cookie cookie = new Cookie("email",email);
		cookie.setMaxAge(20*60);
		response.addCookie(cookie);
		response.sendRedirect("index.jsp");
	}else if(check==0){
%>
	<script>
	
	alert("비밀번호가 맞지 않습니다.");
	history.go(-1);

	</script>
<% 
		
	}else{
%>
	<script>
	
	alert("아이디가 맞지 않습니다.");
	history.go(-1);
	</script>
<% 	
	}
%>



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>