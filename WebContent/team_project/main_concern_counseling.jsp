<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch13.concern_counseling.ConcernCounselingDBBean"%>
<%@ page import="ch13.concern_counseling.ConcernCounselingDataBean"%>
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
	List<ConcernCounselingDataBean> articleList = null;

	ConcernCounselingDBBean dbPro = ConcernCounselingDBBean.getInstance();
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
<link href="style.css" rel="stylesheet" type="text/css">
<title>게시판</title>
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
	width:80%;
	vertical-align: middle;
}


#jb-text {
	padding: 5px 10px;
	
	text-align: center;
	
	position: absolute;
	top: 21%;
	left: 29%;
	transform: translate( -10%, -50% );
	border-radius: 50%;
	opacity: .8;
}

#jb-text2 {
	padding: 5px 10px;
	
	text-align: center;
	
	position: absolute;
	top: 19%;
	left: 57%;
	transform: translate( -10%, -50% );
	
	opacity: .8;
}

#jb-text3 {
	padding: 5px 10px;
	
	text-align: center;
	
	position: absolute;
	top: 66%;
	left: 47%;
	transform: translate( -10%, -50% );
	
	opacity: .8;
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
					<a class="dropdown-item" href="register.jsp">Logout</a>
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

				<ol class="breadcrumb">
					<li><a href="index.jsp"> <span
							style="color: #EF0000; font-size: 20px;"><b>ASIANA IDT</b></span></a>
					</li>
					<li><a href="#"> <span
							style="font-size: 20px;">&nbsp;<b>/ 고민카테고리</b></span></a></li>
				</ol>
				<!-- /.container-fluid -->
			<h2><b><span style= "color:#E20000">고민</span> 상담소</b></h2>
			<h4>고민하지마세요 하고 싶은 이야기 들려주세요</h4>
			
			
			
			 <div class="jb-wrap">
      <div class="jb-image">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id ="postoffice"  src = "images/post-it.png.png">
    
      </div>
      
      <div id="jb-text" class="clickable">
				<button type ="button" class="btn btn-primary" value = "diary">일기장</button>
				
				
			</div>
	   <div id="jb-text2" class="clickable">
				<button type ="button" class="btn btn-success" value = "family">가족</button>
			</div>
		 <div id="jb-text3" class="clickable">
				<button type ="button" class="btn btn-warning" value = "Baren">회사생활</button>
			</div> 
		</div>
			
			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span><b>Copyright © AISANA IDT</b></span>
					</div>
				</div>
			</footer>

		</div>
		<!-- /.content-wrapper -->

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
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
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
	$("button").click(function() {
    var fired_button = $(this).val();
  
    
    location.href="concern_counseling.jsp?"+"theme="+fired_button;

    
});

</script>

</body>

</html>
