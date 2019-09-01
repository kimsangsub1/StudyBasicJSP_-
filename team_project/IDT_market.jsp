<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch13.real_estate.RealEstateDBBean"%>
<%@ page import="ch13.real_estate.RealEstateDataBean"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="color.jspf"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="style.css" rel="stylesheet" type="text/css">
	<title>IDT 장터</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">

<style>
.list{
 	border : 1px solid #ffffff;
 }
#sidebar li{
	padding-left: 30px;
/* 	border: 1px solid white; */

}
</style>


</script>
</head>

<style media="screen">


  body {
   
    font-size: 16px;
    color: #E9ECEF;
  }

  ul {
    list-style-type: none;
  }

  .clear {
    clear: both;
  }

  #new h3 {
    padding-bottom: 5px;
    border-bottom: solid 2px #007bff;
  }

  #new h3 span {
    font-size:30px;
  /*   color: #80a727; */
  color:#007bff;
  }

  #new .item {
    float: left;
    margin-top: 20px;
    text-align: center;
  }

  #new .subject {
    font-size : 20px;
    margin-top: 10px;
    color: #000000;
    font-weight: bold;
  }

  #new .comment {
    font-size : 20px;
    margin-top: 5px;
    color : #ff0000;
    font-weight: bold;
    /* color: #888888 */ 
  }

  #new .price {
    font-size : 15px;
    margin-top: k5px;
    color: #343a40;
    /* font-weight: bold; */
  }
 ul img{
    width:190px;
    height:150px;
  } 
  #move{
    display:inline; 
/* 	border:1px solid black; */
	width:480px;
	/* background-color:#E9ECEF; */
	text-align:center;
}

#nuu {
	border-bottom: 1px solid #ffffff;
	/* width: 490px; */
}
 #sidebar li{
	 padding-left: 30px; 
 	

}

#content-wrapper{
font-family: sans-serif;

} 
</style>

<body bgcolor=#FFFFFF id="page-top">

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
					<li ><a href= "#">
					<span style="font-size:20px;">&nbsp;<b>/ IDT 장터</b></span></a></li>
				</ol>


				<h2 style="color:#212529"><b>ASIANA <span style= "color:#E20000">IDT </span>장터</b></h2>
			<h4 style="color:#212529">팝니다 & 삽니다   <input type="button" class="btn btn-primary" value="더보기"
				OnClick="window.location='IDT_marketplace.jsp'"></h4>
				<!-- Page Content -->
	
	
  <div id="new">
    
		
 
		<ul class="item">
    
      <li><a href = "http://localhost:8080/StudyBasicJSP/team_project/IDT_marketplace.jsp"><img src="images_market/Notebook.png" alt=""></a></li>
      <li class="subject"><삼성노트북3></li>
      <li class="comment">190,000원</li>
      <li class="price">[팝니다] CPU:G3865U/메모리:4GB
      <br>SSD:추가가능/HDD:500GB/FHD:광시야각</li>
    </ul>

    <ul class="item">
      <li><a href = "http://localhost:8080/StudyBasicJSP/team_project/IDT_marketplace.jsp"><img src="images_market/desk.png" alt=""></a></li>
      <li class="subject"><대형 철제테이블&의자></li>
     <li class="comment">150,000원</li>
      <li class="price">[팝니다] 가로:80cm 세로:180cm
      <br>조립식 테이블이며 의자도 포함된 가격 </li>
    </ul>

		<ul class="item">
      <li><a href = "http://localhost:8080/StudyBasicJSP/team_project/IDT_marketplace.jsp"><img src="images_market/bicycle.png" alt=""></a></li>
      <li class="subject"><자전거></li>
      <li class="comment">80,000원</li>
      <li class="price">[팝니다] 구매 후 동네만 몇번 탔습니다 
      <br>바퀴,핸들,브레이크에 이상 無 </li>
    </ul>

    <div class="clear">

    </div>

    <ul class="item">
      <li><a href = "http://localhost:8080/StudyBasicJSP/team_project/IDT_marketplace.jsp"><img src="images_market/plate.png" alt=""></a></li>
      <li class="subject"><그릇></li>
      <li class="comment">30,000원</li>
      <li class="price">[팝니다] 이사를 가게되어 그릇을 팝니다 
      <br>필요하신 분들은 편하게 연락주세요 </li>
    </ul>

    <ul class="item">
      <li><a href = "http://localhost:8080/StudyBasicJSP/team_project/IDT_marketplace.jsp"><img src="images_market/galaxy.png" alt=""></a></li>
      <li class="subject"><갤럭시 탭 S3></li>
      <li class="comment">180,000원</li>
      <li class="price">[삽니다] 중고 갤럭시탭 삽니다.
      <br>신입사원 中 안쓰시는 분들 연락주세요</li>
    </ul>

    <ul class="item">
      <li><a href = "http://localhost:8080/StudyBasicJSP/team_project/IDT_marketplace.jsp"><img src="images_market/sofa.png" alt=""></a></li>
      <li class="subject"><휴시스 스퀘어 4인용 소파></li>
      <li class="comment">200,000원</li>
      <li class="price">[팝니다] 1년 사용한 4인용 소파 팝니다.
      <br>베이지색상/가로:280cm 세로:85cm </li>
    </ul>

  </div>
  </div>
  </div>
  </div>
  
</body>
</html>