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
<title>회원가입 페이지</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	
	function check01(){
		var val1= $("#email").val();
		var val2="asianaidt.com";
		
		if (val1.indexOf(val2)!=-1){;
			return true;
		}else{
			alert("아시아나IDT 계정으로 등록해주세요!")
			return false;
		}
	}
			
</script>

<!-- 이 부분 주석처리 해야 로그아웃 이모티콘 눌렀을 때 로그아웃 문구가 뜸 -->

<!-- Bootstrap-->

<!-- <script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

Core plugin JavaScript
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

Custom fonts for this template
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

Custom styles for this template
<link href="css/sb-admin.css" rel="stylesheet"> -->

<!-- -------------- -->

<!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

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

</style>  
 
 
</head>

<body id="page-top" class="bg-dark">

	  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

   <a class="navbar-brand mr-1" href="register.jsp"><b style = "font-size:35px;">&nbsp;ASIANA</b><span style="color: #EF0000;">
		&nbsp;<b style = "font-size:35px;">IDT</b></span>&nbsp;<br><b style = "font-size:31px;">&nbsp;COMMUNITY</b></a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      
    </button> 
    
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



  <div class="container">
    <div class="card card-register mx-auto mt-5" style="background-color : #747474">
      <div class="card-header" style="color : white; font-weight : bold; font-size : 18px">환영합니다 ASIANA 
      <span style="font-weight : bold; color : #ef0000;">IDT </span>COMMUNITY 입니다</div>
      <div class="card-body">
      
        <form method="post" onsubmit="return check01()" action="checkidt.jsp">      
         <div class="form-group">
             <label style="color : white;  font-size : 18px">Email address</label>
              <input type="email" name="email" id="email" class="form-control" placeholder="@asianaidt.com" required="required">
          </div>
          <div class="form-group">
          	<label style="color : white;  font-size : 18px">Password</label>
              <input type="password" name="passwd" id="passwd" class="form-control" placeholder="Password" required="required">
          </div>
          <div class="form-group text-center">
          	<input type="submit" id="join-submit" class="btn btn-light btn-blzock"  value="회원가입" onsubmit=""/>
          	<%System.out.println("회원가입누름"); %>
          </div>

        </form>

      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  
  <footer id="footer">
			<p>	Copyright © AISANA IDT</p>
		
		</footer>

</body>
</html>