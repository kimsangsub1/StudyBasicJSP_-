<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch13.real_estate.RealEstateDBBean"%>
<%@ page import="ch13.real_estate.RealEstateDataBean"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="color.jspf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>글 내용 보기</title>

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

					<li><a href="#"> <span style="font-size: 20px;">&nbsp;<b>/
									글내용 보기</b></span>
					</a></li>
				</ol>

				<!-- Page Content -->

				<%
					int num = Integer.parseInt(request.getParameter("num"));
					String pageNum = request.getParameter("pageNum");

					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

					try {
						RealEstateDBBean dbPro = RealEstateDBBean.getInstance();
						RealEstateDataBean article = dbPro.getArticle(num);

						int ref = article.getRef();
						int re_step = article.getRe_step();
						int re_level = article.getRe_level();
				%>

				<p>
					<b>글내용 보기</b>
				</p>

				<form>
					<table>
						<tr height="30">
							<td align="center" width="125" bgcolor="#E9ECEF"">글번호</td>
							<td align="center" width="125" align="center"><%=article.getNum()%></td>
							<td align="center" width="125" bgcolor="#E9ECEF"">조회수</td>
							<td align="center" width="125" align="center"><%=article.getReadcount()%></td>
						</tr>

						<tr height="30">
							<td align="center" width="125" bgcolor="#E9ECEF"">작성자</td>
							<td align="center" width="125" align="center"><%=article.getWriter()%></td>
							<td align="center" width="125" bgcolor="#E9ECEF"">작성일</td>
							<td align="center" width="125" align="center"><%=sdf.format(article.getReg_date())%></td>
						</tr>

						<tr height="30">
							<td align="center" width="125" bgcolor="#E9ECEF"">글제목</td>
							<td align="left" width="375" align="center" colspan="3"><%=article.getSubject()%></td>
						</tr>

						<tr>
							<td align="center" width="125" bgcolor="#E9ECEF"">글내용</td>
							<td align="left" width="375" colspan="3"><pre><%=article.getContent()%></pre></td>
						</tr>

						<tr height="30">
							<td colspan="4" bgcolor="#E9ECEF" align="right"><input
								type="button" class="btn btn-secondary" value="글수정"
								onclick="document.location.href='updateForm_real_estate.jsp?real_estate=<%=request.getParameter("real_estate")%>&home=<%=request.getParameter("home")%>&num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
								&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" class="btn btn-secondary" value="글삭제"
								onclick="document.location.href='deleteForm_real_estate.jsp?real_estate=<%=request.getParameter("real_estate")%>&home=<%=request.getParameter("home")%>&num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
								&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" class="btn btn-secondary" value="답글쓰기"
								onclick="document.location.href='writeForm_real_estate.jsp?real_estate=<%=request.getParameter("real_estate")%>&home=<%=request.getParameter("home")%>&num=<%=num%>&ref=<%=ref%>&re_step=<%=re_step%>&re_level=<%=re_level%>'">
								&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" class="btn btn-secondary" value="글목록"
								onclick="document.location.href='real_estate.jsp?real_estate=<%=request.getParameter("real_estate")%>&home=<%=request.getParameter("home")%>&num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
							</td>
						</tr>
					</table>
					<%
						} catch (Exception e) {
						}
					%>
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