<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch13.real_estate.RealEstateDBBean"%>
<%@ page import="ch13.real_estate.RealEstateDataBean"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="color.jspf"%>

<%!int pageSize = 10;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>

<%
	String pageNum = request.getParameter("pageNum");

	if (pageNum == null) {
		pageNum = "1";
	}

	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;
	int count = 0;
	int number = 0;
	List<RealEstateDataBean> articleList = null;

	RealEstateDBBean dbPro = RealEstateDBBean.getInstance();
	count = dbPro.getArticleCount();

	if (count > 0) {
		articleList = dbPro.getArticles(startRow, pageSize);
	}

	number = count - (currentPage - 1) * pageSize;
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=nk1ogwf37q"></script>

<title>부동산 리뷰</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">
<style>
#jb-text {
	display: inline-block;
	padding: 5px 10px;
	height: 600px;
	width: 320px;
	background-color: #E7111D;
	text-align: center;
	position: absolute;
	top: 29%;
	left: 17%;
	opacity: .1;
}

#jb-text2 {
	display: inline-block;
	padding: 5px 10px;
	height: 600px;
	width: 320px;
	background-color: #E7111D;
	text-align: center;
	position: absolute;
	top: 29%;
	left: 44.5%;
	opacity: .1;
}

#jb-text3 {
	display: inline-block;
	padding: 5px 10px;
	height: 600px;
	width: 320px;
	background-color: #E7111D;
	text-align: center;
	position: absolute;
	top: 29%;
	left: 72%;
	opacity: .1;
}

#jb-text:hover {
	opacity: .8;
	cursor: pointer;
}

#jb-text2:hover {
	opacity: .8;
	cursor: pointer;
}

#jb-text3:hover {
	opacity: .8;
	cursor: pointer;
}

#nuu {
	border-bottom: 1px solid #ffffff;
	/* width: 490px; */
}

#sidebar li {
	padding-left: 30px;
	/* 	border: 1px solid white; */
}
</style>
</head>

<body id="page-top">


	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

		<a class="navbar-brand mr-1" href="index.jsp"><b
			style="font-size: 35px;">&nbsp;ASIANA</b><span
			style="color: #EF0000;"> &nbsp;<b style="font-size: 35px;">IDT</b></span>&nbsp;<br>
			<b style="font-size: 31px;">&nbsp;COMMUNITY</b></a>

		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>

		<!-- Navbar Search -->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">

		</form>


		<!-- Navbar -->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
						data-target="#logoutModal">Logout</a>
				</div></li>
		</ul>

	</nav>

	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="sidebar navbar-nav" id="sidebar">
			<li class="nav-item"><a class="nav-link" href="free_board.jsp">
					<i class="fas fa-comments"></i><span>와글와글 잡담방</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="praise.jsp">
					<i class="fa fa-thumbs-up"></i> <span>칭찬합시다</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="main_concern_counseling.jsp"> <i class="fa fa-medkit"></i>
					<span>고민상담소</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="home_restaurant_review.jsp"> <i class="fas fa-utensils"></i>
					<span>맛집리뷰</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="main_realestate.jsp"> <i class="fa fa-home"></i> <span>부동산리뷰</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="IDT_market.jsp">
					<i class="fas fa-shopping-cart"></i> <span>IDT 장터</span>
			</a></li>
		</ul>


		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li><a href="index.jsp"> <span
							style="color: #EF0000; font-size: 20px;"><b>ASIANA IDT</b></span></a></li>
					<li><a href=#"> <span style="font-size: 20px;">&nbsp;<b>/
									부동산 리뷰</b></span>
					</a></li>
				</ol>
				<h2>
					<b><span style="color: #E20000">부동산</span> 탐방</b>
				</h2>
				<h4>원하는 지역을 선택해주세요</h4>

				<!-- Page Content -->

				<div class="jb-wrap">
					<div id="map" style="width: 100%; height: 600px;"></div>

					<div id="jb-text" class="clickable">
						<p>
							<br> <br> <span style="color: #ffffff;"><b><i
									class="fas fa-drumstick-bite"></i>&nbsp;&nbsp;&nbsp;아시아나타운
									집탐색&nbsp;&nbsp;&nbsp;</span><br> <span
								style="text-align: center; color: #ffffff;"><b>231곳</b><br>
								<br></span>
						</p>
					</div>
					<div id="jb-text2" class="clickable">
						<p>
							<br> <br> <br> <span style="color: #ffffff;"><i
								class="fas fa-drumstick-bite"><b></b></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;중간지점
								집탐색&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br> <span
								style="text-align: center; color: #ffffff;"><b>448곳</b><br>
								<br> <br></span>
						</p>
					</div>
					<div id="jb-text3" class="clickable">
						<p>
							<br> <br> <br> <span style="color: #ffffff;"><b><i
									class="fas fa-drumstick-bite"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;본사
									집탐색&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br> <span
								style="text-align: center; color: #ffffff;">301곳</b><br>
								<br> <br></span>
						</p>
					</div>
				</div>

				<script>
					var mapOptions = {
						center : new naver.maps.LatLng(37.557527, 126.9244669),
						zoom : 8
					};

					var map = new naver.maps.Map('map', mapOptions);
				</script>
				<!-- /.content-wrapper -->

			</div>
		</div>
		<!-- /#wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="main.jsp">Logout</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin.min.js"></script>
	<script type="text/javascript">
	
	
	$('#jb-text').click(function() { 
		
		location.href="mainNext2_real_estate.jsp?"+"real_estate=oshedong";
		
	});
	$('#jb-text2').click(function() {
		
		
		location.href="mainNext_real_estate.jsp?"+"real_estate=hongdae";
	
	});
	$('#jb-text3').click(function() { 
		
		location.href="mainNext_real_estate.jsp?"+"real_estate=jongkak";
		});
	
	</script>

</body>

</html>
