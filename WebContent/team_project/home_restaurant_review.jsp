<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch13.restaurant_review.RestaurantReviewDBBean"%>
<%@ page import="ch13.restaurant_review.RestaurantReviewDataBean"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="color.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link href="style.css" rel="stylesheet" type="text/css">



<title>맛집리뷰</title>
<style>
#nuu {
	border-bottom: 1px solid #ffffff;
	/* width: 490px; */
}
#sidebar li{
	padding-left: 30px;
/* 	border: 1px solid white; */

} 
</style>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">

<style>
.jb-wrap {

	margin: 10px auto;
/* 	border: 1px solid #000000; */
	position: relative;
}
.jb-wrap img {
	width:100%;
	vertical-align: middle;
}
#jb-text {
	padding: 5px 10px;
	background-color: #E7111D;
	text-align: center;
	
	position: absolute;
	top: 20%;
	left: 20%;
	transform: translate( -10%, -50% );
	border-radius: 50%;
	opacity: .8;
}

#jb-text2 {
	padding: 5px 10px;
	background-color: #E7111D;
	text-align: center;
	
	position: absolute;
	top: 40%;
	left: 55%;
	transform: translate( -10%, -50% );
	border-radius: 50%;
	opacity: .8;
}

#jb-text3 {
	padding: 5px 10px;
	background-color: #E7111D;
	text-align: center;
	
	position: absolute;
	top: 15%;
	left: 80%;
	transform: translate( -10%, -50% );
	border-radius: 50%;
	opacity: .8;
}

#jb-text:hover{

opacity:.5;
cursor:pointer;
}

#jb-text2:hover{

opacity:.5;
cursor:pointer;
}
#jb-text3:hover{

opacity:.5;
cursor:pointer;
}


</style>

</head>





<body id="page-top">


	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

		<a class="navbar-brand mr-1" href="index.jsp"><b style = "font-size:35px;">&nbsp;ASIANA</b><span style="color: #EF0000;">
		&nbsp;<b style = "font-size:35px;">IDT</b></span>&nbsp;<br><b style = "font-size:31px;">&nbsp;COMMUNITY</b></a>

		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
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
					<a class="dropdown-item" href="main.jsp">Logout</a>
				</div>
			</li>
    </ul>

  </nav>
  
                                      <!-- 끝 -->

	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="sidebar navbar-nav" id = "sidebar">
			<li class="nav-item"><a class="nav-link" href="free_board.jsp">
					<i class="fas fa-comments"></i><span>와글와글 잡담방</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="praise.jsp"> 
					<i class="fa fa-thumbs-up"></i> <span>칭찬합시다</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="main_concern_counseling.jsp">
					<i class="fa fa-medkit"></i> <span>고민상담소</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="home_restaurant_review.jsp">
					<i class="fas fa-utensils"></i> <span>맛집리뷰</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="main_realestate.jsp">
					<i class="fa fa-home"></i> <span>부동산리뷰</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="IDT_market.jsp">
					<i class="fas fa-shopping-cart"></i> <span>IDT 장터</span>
			</a></li> 
		</ul>


		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li ><a href="index.jsp">
					<span style="color: #EF0000; font-size:20px;"><b>ASIANA IDT</b></span></a>
					</li>
					<li ><a href= "home_restaurant_review.jsp">
					<span style="font-size:20px;">&nbsp;<b>/ 맛집탐방</b></span></a></li>
				</ol>



      <h2 class="tt-title"><b>맛집 <span style = "color:red;">탐방</b></span></h2>
      <h4>지역을 골라주세요</h4>
      
      <div class="jb-wrap">
      <div class="jb-image">
      <img src = "images/map.png" alt = "">
      </div>
      
      <div id="jb-text" class="clickable">
				<p><br><span style="color:#ffffff;"><b><i class="fas fa-drumstick-bite"></i>오쇠동맛집</span><br>
				<span style="text-align:center;color:#ffffff;">111곳</b></span>
				</p>
			</div>
	   <div id="jb-text2" class="clickable">
				<p ><br><span style="color:#ffffff;"><b><i class="fas fa-drumstick-bite"></i>홍대맛집</span><br>
				<span style="text-align:center;color:#ffffff;">108곳</b></span>
				</p>
			</div>
		 <div id="jb-text3" class="clickable">
				<p ><br><span style="color:#ffffff;"><b><i class="fas fa-drumstick-bite"></i>종각맛집</span><br>
				<span style="text-align:center;color:#ffffff;">201곳</b></span>
				</p>
			</div>
		</div>
		
		
		<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin.min.js"></script>
		<script type= "text/javascript">
		
		$('#jb-text').click(function() { 
			
			location.href="main_restaurant_review.jsp?"+"oshedong";
			
		});
		$('#jb-text2').click(function() {
			
			
			location.href="main_restaurant_review.jsp?"+"hongdae";
		
		});
		$('#jb-text3').click(function() { 
			
			location.href="main_restaurant_review2.jsp?"+"jongkak";
			});
		

		
		
	
		
		</script>
      </div>
      </div>
     
      </div>
      </body>
      </html>
      
      