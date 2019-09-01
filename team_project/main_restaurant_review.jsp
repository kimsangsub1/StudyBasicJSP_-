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

.text-center{
margin-top: 10px;
height:255px;

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
img{
  width: 150px; height: 150px;
    border-radius: 50%;

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

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li ><a href="index.jsp">
					<span style="color: #EF0000; font-size:20px;"><b>ASIANA IDT</b></span></a>
					</li>
					<li ><a href= "home_restaurant_review.jsp">
					<span style="font-size:20px;">&nbsp;<b>/ 맛집탐방</b></span></a></li>
					<li ><a href= "#">
					<span style="font-size:20px;">&nbsp;<b>/ 맛집리뷰</b></span></a></li>
				</ol>


<div id="shopify-section-1553027532070" class="shopify-section index-section"><div class="container-indent">
  <div class="container"><div class="tt-block-title">
      <h2 class="tt-title"><b>맛집 <span style = "color:red;">탐방</b></span></h2><div class="tt-description">오쇠동 맛집을 찾아보세요</div></div><div class="row tt-layout-promo02"><div class="col-sm-6 col-md-4 col-12-440width" >
      
        <div class="tt-promo02 text-center" data-hovercolors>
          <img class="lazyload"
                 src="images/food3.png"
                 data-src="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_15_400x.png?v=1553027723"
                 data-srcset="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_15_400x.png?v=1553027723 360w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_15_600x.png?v=1553027723 540w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_15_800x.png?v=1553027723 720w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_15_1024x.png?v=1553027723 1024w"
                 alt="">
          <div class="tt-description">
            
            <a href="restaurant_review.jsp" class="tt-title">
              
              <div class="tt-title-large"
                                           style="color:#191919;"
                                           data-c="#191919"
                                           data-ac="#64a862"
                                           ><b>개성삼계탕</b></div>
            </a>
            
            <span style="color:#888888;font-size:14px;">오랜 전통의 삼계탕맛집</span><br>
            <form name="form1" method="post" action="restaurant_review.jsp" style="padding:0; margin:0; font-size: 13px;">
            <button type = "button" class = "btn btn-secondary btn-sm" value = "food=gaes">더보기</button>
            </form>
            
          </div>
        </div>
      </div><div class="col-sm-6 col-md-4 col-12-440width" >
        <div class="tt-promo02 text-center" data-hovercolors>
          <a href="restaurant_review.jsp" class="image-box"
              style="border-radius: 50%;-moz-border-radius: 50%;-webkit-border-radius: 50%; max-width: 280px;"
             ><img class="lazyload"
                 src="images/food4.jpg"
                 data-src="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_12_400x.png?v=1553027721"
                 data-srcset="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_12_400x.png?v=1553027721 360w, 
                 //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_12_600x.png?v=1553027721 540w, 
                 //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_12_800x.png?v=1553027721 720w, 
                 //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_12_1024x.png?v=1553027721 1024w"
                 alt="" id = "baren" ></a>
          <div class="tt-description">
            
            <a href="restaurant_review.jsp" class="tt-title">
              
              <div class="tt-title-large"
                                           style="color:#191919;"
                                           data-c="#191919"
                                           data-ac="#64a862"
                                           ><b>또왔네</b></div>
            </a>
            
            <span style="color:#888888;font-size:14px;">점심으로 삼겹살을 즐겨보자</span><br>
            <form name="form1" method="post" action="restaurant_review.jsp" style="padding:0; margin:0; font-size: 13px;">
            <button type = "button" class = "btn btn-secondary btn-sm" value = "food=ddowat">더보기</button>
            </form>
            
          </div>
        </div>
      </div><div class="col-sm-6 col-md-4 col-12-440width" >
        <div class="tt-promo02 text-center" data-hovercolors>
          <a href="restaurant_review.jsp" class="image-box"
              style="border-radius: 50%;-moz-border-radius: 50%;-webkit-border-radius: 50%; max-width: 280px;"
             ><img class="lazyload"
                 src="images/food5.jpg"
                 data-src="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_10_400x.png?v=1553027721"
                 data-srcset="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_10_400x.png?v=1553027721 360w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_10_600x.png?v=1553027721 540w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_10_800x.png?v=1553027721 720w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_10_1024x.png?v=1553027721 1024w"
                 alt=""></a>
          <div class="tt-description">
            
            <a href="restaurant_review.jsp" class="tt-title">
              
              <div class="tt-title-large"
                                           style="color:#191919;"
                                           data-c="#191919"
                                           data-ac="#64a862"
                                           ><b>팽오리농장</b></div>
            </a>
            
            <span style="color:#888888;font-size:14px;">점심특선으로 맛있는 한식 제공</span>
            <form name="form1" method="post" action="restaurant_review.jsp" style="padding:0; margin:0; font-size: 13px;">
            <button type = "button" class = "btn btn-secondary btn-sm" value = "food=duckfm">더보기</button>
            </form>
          </div>
        </div>
      </div><div class="col-sm-6 col-md-4 col-12-440width">
        <div class="tt-promo02 text-center" data-hovercolors>
          <a href="restaurant_review.jsp" class="image-box"
              style="border-radius: 50%;-moz-border-radius: 50%;-webkit-border-radius: 50%; max-width: 280px;"
             ><img class="lazyload"
                 src="images/food6.jpg"
                 data-src="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_400x.png?v=1553027722"
                 data-srcset="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_400x.png?v=1553027722 360w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_600x.png?v=1553027722 540w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_800x.png?v=1553027722 720w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_1024x.png?v=1553027722 1024w"
                 alt=""></a>
          <div class="tt-description">
            
            <a href="restaurant_review.jsp" class="tt-title">
              
              <div class="tt-title-large"
                                           style="color:#191919;"
                                           data-c="#191919"
                                           data-ac="#64a862"
                                           ><b>양씨네왕순대</b></div>
            </a>
            
            <span style="color:#888888;font-size:14px;">얼큰한순대국이 일품인 맛집</span>
            <form name="form1" method="post" action="restaurant_review.jsp" style="padding:0; margin:0; font-size: 13px;">
            <button type = "button" class = "btn btn-secondary btn-sm" value = "food=Doma">더보기</button>
            </form>
            
          </div>
        </div>
        </div>
        
        <div class="col-sm-6 col-md-4 col-12-440width" >
        <div class="tt-promo02 text-center" data-hovercolors>
          <a href="restaurant_review.jsp" class="image-box"
              style="border-radius: 50%;-moz-border-radius: 50%;-webkit-border-radius: 50%; max-width: 280px;"
             ><img class="lazyload"
                 src="images/food1.jpg"
                 data-src="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_400x.png?v=1553027722"
                 data-srcset="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_400x.png?v=1553027722 360w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_600x.png?v=1553027722 540w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_800x.png?v=1553027722 720w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_1024x.png?v=1553027722 1024w"
                 alt=""></a>
          <div class="tt-description">
            
            <a href="restaurant_review.jsp" class="tt-title">
              
              <div class="tt-title-large"
                                           style="color:#191919;"
                                           data-c="#191919"
                                           data-ac="#64a862"
                                           ><b>타코야놀자</b></div>
            </a>
            
            <span style="color:#888888;font-size:14px;">맛있는 타고를 즐길 수 있는 맛집</span>
            <form name="form1" method="post" action="restaurant_review.jsp" style="padding:0; margin:0; font-size: 13px;">
            <button type = "button" class = "btn btn-secondary btn-sm" value = "tacho">더보기</button>
            </form>
            
          </div>
        </div>
        </div>
        <div class="col-sm-6 col-md-4 col-12-440width" >
        <div class="tt-promo02 text-center" data-hovercolors>
          <a href="/collections/eco-food" class="image-box"
              style="border-radius: 50%;-moz-border-radius: 50%;-webkit-border-radius: 50%; max-width: 280px;"
             ><img class="lazyload" id="ctsize"
                 src="images/food2.jpg"
                 data-src="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_400x.png?v=1553027722"
                 data-srcset="//cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_400x.png?v=1553027722 360w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_600x.png?v=1553027722 540w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_800x.png?v=1553027722 720w, //cdn.shopify.com/s/files/1/0042/3673/8649/files/ecofood_13_1024x.png?v=1553027722 1024w"
                 alt=""></a>
          <div class="tt-description">
            
            <a href="/collections/eco-food" class="tt-title">
              
              <div class="tt-title-large"
                                           style="color:#191919;"
                                           data-c="#191919"
                                           data-ac="#64a862"
                                           ><b>오발탄</b></div>
            </a>
            
            <span style="color:#888888;font-size:14px;">맛있는 찌개도 즐길 수 있는 고기맛집</span>
            <form name="form1" method="post" action="restaurant_review.jsp" style="padding:0; margin:0; font-size: 13px;">
            <button type = "button" class = "btn btn-secondary btn-sm" value = "obartan">더보기</button>
            </form>
            
          </div>
        </div>
        </div>
        
        <script type="text/javascript"> 
	$("button").click(function() {
    var fired_button = $(this).val();
   alert(fired_button); 
    
    location.href="restaurant_review.jsp?"+fired_button;

    
});

</script>
        </body>
        </html>