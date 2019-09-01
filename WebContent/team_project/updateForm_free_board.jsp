<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "ch13.free_board.FreeBoardDBBean" %>
<%@ page import = "ch13.free_board.FreeBoardDataBean" %>
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

<title>와글와글 잡담방</title>

<style>
  table {
    width: 40%;
    /* border-top: 1px solid #E9ECEF; */
   /*  border: 1px solid #E9ECEF; */
    border-collapse: collapse;
    margin-right:auto;
	margin-left:auto;
     
  }
 .list{
 	border-bottom: 1px solid #ffffff;
 }
 
 #nuu{
 	background-color:#E9ECEF;
 	width: 483px;
 }
 
 #nuup{
 	text-align:center;
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
</head>
<body>
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
			<li class="nav-item"><a class="nav-link" href="concern_counseling.jsp">
					<i class="fa fa-medkit"></i> <span>고민상담소</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="home_restaurant_review.jsp">
					<i class="fas fa-utensils"></i> <span>맛집리뷰</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="real_estate.jsp">
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
					<li ><a href= "free_board.jsp">
					<span style="font-size:20px;">&nbsp;<b>/ 와글와글 잡담방</b></span></a></li>
					<li ><a href= "content_free_board.jsp?num=<%=num%>&pageNum<%=pageNum%>">
					<span style="font-size:20px;">&nbsp;<b>/ 글내용 보기</b></span></a></li>
						<li ><a href= "#">
					<span style="font-size:20px;">&nbsp;<b>/ 글수정</b></span></a></li>
				</ol>

				<!-- Page Content -->
				<%
/*   int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum"); */
  try{
	  FreeBoardDBBean dbPro = FreeBoardDBBean.getInstance(); 
	  FreeBoardDataBean article =  dbPro.updateGetArticle(num);

%>

				<div style="text-align:center"><b>글수정</b></div>
				<br>
				<form method="post" name="writeform"
					action="updatePro_free_board.jsp?pageNum=<%=pageNum%>"
					onsubmit="return writeSave()">
					
					<table style = "width:100px;">
						<tr>
							<td width="100" bgcolor="#E9ECEF" align="center"class = "list">이 름</td>
							<td align="left" width="500"><input type="text" size="10"
								maxlength="10" name="writer" value="<%=article.getWriter()%>"
								style="ime-mode: active; width:400px"> <input type="hidden"
								name="num" value="<%=article.getNum()%>"></td>
						</tr>
						<tr>
							<td width="100" bgcolor="#E9ECEF" align="center" class = "list">제 목</td>
							<td align="left" width="500"><input type="text" size="40"
								maxlength="50" name="subject" value="<%=article.getSubject()%>"
								style="ime-mode: active; width:400px"></td>
						</tr>
						<tr>
							<td width="100" bgcolor="#E9ECEF" align="center"  class = "list">Email</td>
							<td align="left" width="500"><input type="text" size="40"
								maxlength="30" name="email" value="<%=article.getEmail()%>"
								style="ime-mode: inactive; width:400px"></td>
						</tr> 
						<tr>
							<td width="100" bgcolor="#E9ECEF" align="center" class = "list">내 용</td>
							<td align="left" width="500"><textarea name="content"
									rows="13" cols="54" style="ime-mode: active width:400px;"><%=article.getContent()%></textarea></td>
						</tr>
						<tr>
							<td width="100" bgcolor="#E9ECEF" align="center" class = "list">비밀번호</td>
							<td align="left" width="500"><input type="password"
								size="8" maxlength="12" name="passwd"
								style="ime-mode: inactive; width:402px"></td>
						</tr>
						
						<tr>
							<td colspan=2 align="center" id = "nuup">
							
							<div id = "nuu">
							<input type="submit" class="btn btn-secondary" value="글수정">&nbsp;&nbsp; 
							<input type="reset" class="btn btn-secondary" value="다시작성">&nbsp;&nbsp;
							<input type="button" class="btn btn-secondary" value="목록보기" 
							onclick="document.location.href='free_board.jsp'">
								</div>
							</td>
						</tr>
						
					</table>
				</form>
				<%
}catch(Exception e){}%>

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