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
<title>로그인</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">

<!-- Bootstrap -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!--Core plugin JavaScript  -->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<style type="text/css">
	
	input{
		font-weight : bold;
	}

</style>


</head>

<body class="bg-dark">

  <div class="container">
    <div class="card card-register mx-auto mt-10" style="background-color : #747474">
      <div class="card-header" style="color : white; font-weight : bold; font-size : 18px">환영합니다 ASIANA 
      <span style="font-weight : bold; color : #ef0000;">IDT </span>COMMUNITY 입니다</div>
      <div class="card-body">
        
        <form method="post" action="loginPro.jsp">
          <div class="form-group">
            <div>
              <input type="email" name="email" id="email" class="form-control" placeholder="Email address@asianaidt.com" required="required" autofocus="autofocus">
            </div>
          </div>
          <div class="form-group">
            <div>
              <input type="password" name="passwd" id="passwd" class="form-control" placeholder="Password" required="required">
            </div>
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label>
                <input type="checkbox" value="remember-me">
                Remember Password
              </label>
            </div>
          </div>
          <div class="form-group text-center">
          	<input type="submit" id="login" value="로그인" class="btn btn-light" />
          	<input type="button" value="회원가입" class="btn btn-light " onclick="location.href='register.jsp'">
          </div>          
        </form>
        
        <div class="text-center">
          <a class="d-block small mt-3" href="register.jsp">Register an Account</a>
        </div>
      </div>
    </div>
  </div>

</body>
</html>