<%@page import="team01.LogonDataBean"%>
<%@page import="team01.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>

<%@ page import="java.sql.*" %>
<%@ page import="team01.LogonDBBean" %>

   
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>회원가입 페이지</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  
  <style type="text/css">
  	#form-group{
  		text-align : center;
  	}
  	
  </style>
  
  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top" class="bg-dark">

	  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">


 <a class="navbar-brand mr-1" href="register.jsp"><b style = "font-size:35px;">&nbsp;ASIANA</b><span style="color: #EF0000;">
		&nbsp;<b style = "font-size:35px;">IDT</b></span>&nbsp;<br><b style = "font-size:31px;">&nbsp;COMMUNITY</b></a>
		
    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      
    </button>

                              <!-- 메인배너 로그아웃 설정 부분 지움-->
                              
  </nav>
  
                                      <!-- 끝 -->



<!--  </head>
<body class="bg-dark">-->

	<jsp:useBean id="member" class="team01.LogonDataBean">
		<jsp:setProperty name="member" property="*"/>
	</jsp:useBean>
	
	<%
	
	String email=request.getParameter("email");
	String passwd=request.getParameter("passwd");
	
	LogonDataBean memeber = new LogonDataBean();
	member.setEmail(email);
	member.setPasswd(passwd);
	member.setReg_date(new Timestamp(System.currentTimeMillis()));
	LogonDBBean logon= LogonDBBean.getInstance();
	logon.insertMember(member);
	System.out.println("member : " + member.getEmail());
	
	%>
	
	<div class="container">
    <div class="card card-register mx-auto mt-3">  
      <div class="card-body">
          
         <div class="form-group">
             <jsp:getProperty property="email" name="member"/> 님 회원가입을 축하합니다!
          </div>

        <div class="text-center">
        	<input type="button" class="btn btn-primary" onclick="location.href='index.jsp'" value="시작하기">
        </div>
      </div>
    </div>
  </div>

</body>
</html>






