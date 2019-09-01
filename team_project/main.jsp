<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>WELCOME TO ASIANA IDT COMMUNITY</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">

<style type="text/css">
body {
	background-color: rgba(0, 0, 0, 0.5);
	background:linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url(img/background.jpg);
	background-repeat: no-repeat;
	background-size : cover;

}

 footer{
	position: absolute;
	
	bottom: 0;
	height: 30px;
	color: white;
	text-align: center;
	border-top: 1px solid lightgray;
	left:50%; 
	transform:translateX(-50%);
	
}

.btn-primary {
    background-color: #F22727;
    border-color: #F22727;
    color: white; }

#login{

	
}
</style>

</head>

<body>

		<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

			<a class="navbar-brand mr-1" href="main.jsp"><b style = "font-size:35px;">&nbsp;ASIANA</b><span style="color: #EF0000;">
		&nbsp;<b style = "font-size:35px;">IDT</b></span>&nbsp;<br><b style = "font-size:31px;">&nbsp;COMMUNITY</b></a>


			<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
				id="sidebarToggle" href="#"></button>

			                              <!-- 메인배너 로그아웃 설정 부분 -->
    <!-- Navbar Search -->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			
		</form> 

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown no-arrow mx-1">
        
      </li>
      <li class="nav-item dropdown no-arrow mx-1">
        
      </li>
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
        			<a class="dropdown-item" href="index.jsp">Login</a>
					<a class="dropdown-item" href="main.jsp">Logout</a>
				</div>
			</li>
    </ul>

  </nav>
  
                                      <!-- 끝 -->
		<br><br>
		<div id="login">
			<jsp:include page="login.jsp"></jsp:include>
		</div>


		<footer id="footer">
			<p>Copyright © AISANA IDT</p>
		</footer>

</body>
</html>