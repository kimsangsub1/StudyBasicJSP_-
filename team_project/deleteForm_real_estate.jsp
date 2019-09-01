<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="color.jspf"%>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>글 삭제</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">

<style>
table {
	width: 70%;
	border-top: 1px solid #E9ECEF;
	border-collapse: collapse;
	margin-right: auto;
	margin-left: auto;
}

#pw {
	display: inline;
}

th, td {
	border-bottom: 1px solid #FFFFFF;
	padding: 10px;
}

#sidebar li {
	padding-left: 30px;
	/* 	border: 1px solid white; */
}
</style>

</head>
<body>

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
					<li><a href="main_realestate.jsp?"> <span
							style="font-size: 20px;">&nbsp;<b>/ 부동산 리뷰</b></span>
					</a></li>
					<li><a
						href="mainNext2_real_estate.jsp?real_estate=<%=request.getParameter("real_estate")%>
">
							<span style="font-size: 20px;">&nbsp;<b>/ <%
								if (request.getParameter("real_estate").equals("oshedong")) {
							%>오쇠동<%
								} else if (request.getParameter("real_estate").equals("hongdae")) {
							%>홍대<%
								} else if (request.getParameter("real_estate").equals("jonggak")) {
							%>종각<%
								} else {
								}
							%>
							</b></span>
					</a></li>
					<li><a
						href="real_estate.jsp?real_estate=<%=request.getParameter("real_estate")%>
									&home=<%=request.getParameter("home")%>">
							<span style="font-size: 20px;">&nbsp;<b>/ <%=request.getParameter("home")%></b></span>
					</a></li>

					<li><a
						href="content_real_estate.jsp?real_estate=<%=request.getParameter("real_estate")%>
									&home=<%=request.getParameter("home")%>
									&num=<%=request.getParameter("num")%>
							&pageNum=<%=request.getParameter("pageNum")%>">
							<span style="font-size: 20px;">&nbsp;<b>/ 글내용 보기</b></span>
					</a></li>

					<li><a href="#"> <span style="font-size: 20px;">&nbsp;<b>/
									글삭제</b></span>
					</a></li>
				</ol>

				<!-- Page Content -->

				<div style="text-align: center">
					<p>
						<b>글삭제</b>
					</p>
				</div>

				<br>
				<form method="POST" name="delForm"
					action="deletePro_real_estate.jsp?real_estate=<%=request.getParameter("real_estate")%>
&home=<%=request.getParameter("home")%>
&num=<%=request.getParameter("num")%>
&pageNum=<%=request.getParameter("pageNum")%>"
					onsubmit="return deleteSave()">
					<table>
						<tr height="40">
							<td align=center bgcolor="#E9ECEF"><b>비밀번호를 입력해 주세요.</b></td>
						</tr>
						<tr height="80">
							<td align=center>
								<div class="input-group-append"></div> 비밀번호 : <input
								type="password" class="form-control" id="pw"
								placeholder="password" style="width: 150px" name="passwd"
								size="8" maxlength="12"> <input type="hidden" name="num"
								value="<%=num%>">
							</td>
						</tr>
						<tr height="40">
							<td align=center bgcolor="#E9ECEF"><input
								class="btn btn-secondary" type="submit" value="글삭제"> <input
								type="button" class="btn btn-secondary" value="글목록"
								onclick="document.location.href='real_estate.jsp?home=<%=request.getParameter("home")%>&real_estate=<%=request.getParameter("real_estate")%>&pageNum=<%=pageNum%>'">
							</td>
						</tr>
					</table>
				</form>
			</div>
			<!-- /.container-fluid -->

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
					<a class="btn btn-primary" href="main.jsp">Logout</a>
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
</body>
</html>