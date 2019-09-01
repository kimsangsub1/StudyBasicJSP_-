z<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch13.praise.PraiseDBBean"%>
<%@ page import="ch13.praise.PraiseDataBean"%>
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
	List<PraiseDataBean> articleList = null;

	PraiseDBBean dbPro = PraiseDBBean.getInstance();
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

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">


	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

		<a class="navbar-brand mr-1" href="index.jsp"><span
			style="color: red">ASIANA IDT</span><br>COMMUNITY</a>

		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>

		<!-- Navbar Search -->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for..."
					aria-label="Search" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>

		<!-- Navbar -->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown no-arrow mx-1"></li>
			<li class="nav-item dropdown no-arrow mx-1"></li>
			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">Settings</a> <a
						class="dropdown-item" href="#">Activity Log</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
						data-target="#logoutModal">Logout</a>
				</div></li>
		</ul>

	</nav>

	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item"><a class="nav-link" href="free_board.jsp">
					<!-- <i class="fas fa-fw fa-tachometer-alt"></i> --> <span>와글와글
						잡담방</span>
			</a></li>

			<li class="nav-item active"><a class="nav-link" href="praise.jsp">
					<span>칭찬합시다</span>
			</a></li>

			<li class="nav-item"><a class="nav-link"
				href="concern_counseling.jsp"> <span>고민상담소</span>
			</a></li>

			<li class="nav-item"><a class="nav-link"
				href="restaurant_review.jsp"> <span>맛집리뷰</span>
			</a></li>

			<li class="nav-item"><a class="nav-link" href="real_estate.jsp">
					<span>부동산 리뷰</span>
			</a></li>

			<li class="nav-item"><a class="nav-link"
				href="IDT_marketplace.jsp"> <span>IDT 장터</span>
			</a></li>
		</ul>


		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.jsp"><span
							style="color: #EF0000;">ASIANA IDT</span></a></li>
					<li class="breadcrumb-item active">칭찬합시다</li>
				</ol>

				<!-- Page Content -->
				<b> 글목록(전체 글:<%=count%>)
				</b>
				<table>

					<tr>
						<td align="right" bgcolor="#E9ECEF"><a href="writeForm_praise.jsp"><button
									type="button" class="btn btn-#E9ECEF">글쓰기</button></a></td>
					</tr>
				</table>

				<%
					if (count == 0) {
				%>

				<table>
					<tr>
						<td align="center">게시판에 저장된 글이 없습니다.</td>
				</table>

				<%
					} else {
				%>
				<table class="table table-hover">	
					<tr height="30" bgcolor="#E9ECEF">
						<td align="center" width="50">번 호</td>
						<td align="center" width="250">제 목</td>
						<td align="center" width="100">작성자</td>
						<td align="center" width="150">작성일</td>
						<td align="center" width="50">조 회</td>
						<td align="center" width="100">IP</td>
					</tr>
					<%
						for (int i = 0; i < articleList.size(); i++) {
							PraiseDataBean article = articleList.get(i);
					%>
					<tr height="30">
						<td width="50"><%=number--%></td>
						<td width="250" align="left">
							<%
								int wid = 0;
										if (article.getRe_level() > 0) {
											wid = 5 * (article.getRe_level());
							%> <img src="images/level.png" width="<%=wid%>" height="16">
							<img src="images/re.png"> <%
 	} else {
 %> <img src="images/level.png" width="<%=wid%>" height="16"> <%
 	}
 %> <a
							href="content_praise.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
								<%=article.getSubject()%></a> <%
 	if (article.getReadcount() >= 20) {
 %> <img src="images/hot.png" border="0" height="16"> <%
 	}
 %>
						</td>
						<td width="100" align="left"><a
							href="mailto:<%=article.getEmail()%>"> <%=article.getWriter()%></a></td>
						<td width="150"><%=sdf.format(article.getReg_date())%></td>
						<td width="50"><%=article.getReadcount()%></td>
						<td width="100"><%=article.getIp()%></td>
					</tr>
					<%
						}
					%>
				</table>
				<%
					}
				%>

				<%
					if (count > 0) {
						int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
						int startPage = 1;

						if (currentPage % 10 != 0)
							startPage = (int) (currentPage / 10) * 10 + 1;
						else
							startPage = ((int) (currentPage / 10) - 1) * 10 + 1;

						int pageBlock = 10;
						int endPage = startPage + pageBlock - 1;
						if (endPage > pageCount)
							endPage = pageCount;

						if (startPage > 10) {
				%>
				<a href="list.jsp?pageNum=<%=startPage - 10%>">[이전]</a>
				<%
					}

						for (int i = startPage; i <= endPage; i++) {
				%>
				<div class="text-center">
					<a href="list.jsp?pageNum=<%=i%>"><span style="color: #000000;">[<%=i%>]
					</span> </a>

				</div>
				<%
					}

						if (endPage < pageCount) {
				%>
				<a href="list.jsp?pageNum=<%=startPage + 10%>">[다음]</a>
				<%
					}
					}
				%>

			</div>
			<!-- /.container-fluid -->

			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright © AISANA IDT</span>
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

</body>

</html>
