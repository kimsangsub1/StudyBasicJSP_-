<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch13.real_estate.RealEstateDBBean"%>
<%@ page import="ch13.real_estate.RealEstateDataBean"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="color.jspf"%>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=nk1ogwf37q"></script>

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
						href="#">
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

				</ol>

				<!-- Page Content -->
				
				
				
				<div class="jb-wrap">
      <div id="map" style="width:100%;height:600px;"></div>
      
        
      
     
      
  
		

<script>
var mapOptions = {
    center: new naver.maps.LatLng(37.5435816,126.7965682),
    zoom: 8
};

var map = new naver.maps.Map('map', mapOptions);

//----------------------------사적
var marker1 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.560069, 126.825635),
   
    title: '1번 마커',
    map: map
}),
iwContent1 = [
    '<div style="border:0;background: #8160E2;">',
        '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
        '<a href="https://new.land.naver.com/complexes/126426?ms=37.558828,126.899416,12&a=APT:ABYG:JGC&b=A1:B1:B2:B3&e=RETAIL" title="누르시면 사이트로 이동합니다." target="_blank"><img src = "images/home1.png"></a>',
            '<br><a href = "real_estate.jsp?real_estate=oshedong&home=sky21" title="누르시면 게시판으로 이동합니다."><span style = "color:#ffffff"><i class="fas fa-bed"></i>SKY21 오피스텔</span></a>',
            '<div style="color:#ffffff;">전세2.4억</div><br><br>',
        '</div>',
    '</div>'
].join(''),
infowindow1 = new naver.maps.InfoWindow({
    content: iwContent1
});


naver.maps.Event.addListener(marker1, 'mouseover', function(e) {
infowindow1.open(map, marker1);
});
//----------------------------------------
var marker2 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.556650, 126.825002),
   
    title: '2번 마커',
    map: map
}),
iwContent2 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
    '<img src ="images/home2.png">',
        '<br><a href = "real_estate.jsp?home=swthome"><span style = "color:#ffffff"><i class="fas fa-bed"></i>스위트홈 쉐어하우스</span></a>',
        '<div style="color:#ffffff;">월세100/39</div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow2 = new naver.maps.InfoWindow({
    content: iwContent2
});


naver.maps.Event.addListener(marker2, 'mouseover', function(e) {
infowindow2.open(map, marker2);
});
//---------------------------------
var marker3 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.560704, 126.809988),
   
    title: '3번 마커',
    map: map
}),
iwContent3 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
    '<img src ="images/home3.png">',
        '<br><a href = "real_estate.jsp?home=campT"><span style = "color:#ffffff"><i class="fas fa-bed"></i>캠프타워 오피스텔</span></a>',
        '<div style="color:#ffffff;">월세10/34</div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow3 = new naver.maps.InfoWindow({
    content: iwContent3
});


naver.maps.Event.addListener(marker3, 'mouseover', function(e) {
infowindow3.open(map, marker3);
});

//------------------------------------------------------

var marker4 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.561503, 126.811801),
   
    title: '4번 마커',
    map: map
}),
iwContent4 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
    '<img src = "images/home4.png">',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i>마곡보타닉오피스텔</span>',
        '<div style="color:#ffffff;">월세2000/70</div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow4 = new naver.maps.InfoWindow({
    content: iwContent4
});


naver.maps.Event.addListener(marker4, 'mouseover', function(e) {
infowindow4.open(map, marker4);
});

//-------------------------------------------------------------

var marker5 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.552894, 126.832322),
   
    title: '5번 마커',
    map: map
}),
iwContent5 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i>벽산아파트</span>',
        '<div style="color:#ffffff;">전세2.9~5.2</div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow5 = new naver.maps.InfoWindow({
    content: iwContent5
});


naver.maps.Event.addListener(marker5, 'mouseover', function(e) {
infowindow5.open(map, marker5);
});
//---------------------------
var marker6 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.585668, 126.802710),
   
    title: '1번 마커',
    map: map
}),
iwContent6 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i>청성</span>',
        '<div style="color:#ffffff;">매매4.2억</div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow6 = new naver.maps.InfoWindow({
    content: iwContent6
});


naver.maps.Event.addListener(marker6, 'mouseover', function(e) {
infowindow6.open(map, marker6);
});
//-------------------------------------------------
var marker7 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.538402, 126.897118),
   
    title: '7번 마커',
    map: map
}),
iwContent7 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
    '<img src ="images/home5.png">',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i>한숲마을대림</span>',
        '<div style="color:#ffffff;">월세50만</div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow7 = new naver.maps.InfoWindow({
    content: iwContent7
});


infowindow7.open(map, marker7);

var marker8 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.585668, 126.802710),
   
    title: '1번 마커',
    map: map
}),
iwContent8 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i>한강타운</span>',
        '<div style="color:#ffffff;">월세3500/60만~1백</div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow8 = new naver.maps.InfoWindow({
    content: iwContent8
});


naver.maps.Event.addListener(marker8, 'mouseover', function(e) {
infowindow8.open(map, marker8);
});
var marker9 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.569485, 126.841273),
   
    title: '9번 마커',
    map: map
}),
iwContent9 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i>공항철도아파트</span>',
        '<div style="color:#ffffff;">월세1000/35만~1.7백</div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow9 = new naver.maps.InfoWindow({
    content: iwContent9
});


naver.maps.Event.addListener(marker9, 'mouseover', function(e) {
infowindow9.open(map, marker9);
});


var marker10 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.570337, 126.844478),
   
    title: '10번 마커',
    map: map
}),
iwContent10 = [
	
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i><b>마곡샤르망</b></span>',
        '<div style="color:#ffffff;"><b>월세1.5억/34</b></div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow10 = new naver.maps.InfoWindow({
    content: iwContent10
});


naver.maps.Event.addListener(marker10, 'mouseover', function(e) {
infowindow10.open(map, marker10);
});
var marker16 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.564917, 126.840712),
   
    title: '16번 마커',
    map: map
}),
iwContent16 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i><b>마곡샤르망</b></span>',
        '<div style="color:#ffffff;"><b>월세1.5억/34</b></div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow16 = new naver.maps.InfoWindow({
    content: iwContent16
});


naver.maps.Event.addListener(marker16, 'mouseover', function(e) {
infowindow16.open(map, marker16);
});

var marker11 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.569237, 126.817466),
   
    title: '11번 마커',
    map: map
}),
iwContent11 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i><b>힐스테이트마곡역점</b></span>',
        '<div style="color:#ffffff;"><b>전세3억</b></div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow11 = new naver.maps.InfoWindow({
    content: iwContent11
});


naver.maps.Event.addListener(marker11, 'mouseover', function(e) {
infowindow11.open(map, marker11);
});


var marker12 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.568825, 126.825878),
   
    title: '12번 마커',
    map: map
}),
iwContent12 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i><b>공항타워팰리스</b></span>',
        '<div style="color:#ffffff;"><b>전세1.5억</b></div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow12 = new naver.maps.InfoWindow({
    content: iwContent12
});


naver.maps.Event.addListener(marker12, 'mouseover', function(e) {
infowindow12.open(map, marker12);
});

var marker13 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.534795, 126.823617),
   
    title: '13번 마커',
    map: map
}),
iwContent13 = [
	'<div style="border:0;background: #8160E2;">',
    '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
        '<br><span style = "color:#ffffff"><i class="fas fa-bed"></i><b>창성스카이</b></span>',
        '<div style="color:#ffffff;"><b>월세2000/1.4백</b></div><br><br>',
    '</div>',
'</div>'
].join(''),
infowindow13 = new naver.maps.InfoWindow({
    content: iwContent13
});


naver.maps.Event.addListener(marker13, 'mouseover', function(e) {
infowindow13.open(map, marker13);
});


var marker14 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.557089, 126.852372),
   
    title: '14번 마커',
    map: map
}),
iwContent14 = [
    '<div style="border:0;background: #8160E2;">',
        '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
            '<div style= "color:#ffffff;"><i class="fas fa-bed"></i>마곡샤르망2</a>',
            '<div style="color:#ffffff;">월세3000/30만~33만</div>',
        '</div>',
    '</div>'
].join(''),
infowindow14 = new naver.maps.InfoWindow({
    content: iwContent14
});


naver.maps.Event.addListener(marker14, 'mouseover', function(e) {
infowindow14.open(map, marker14);
});

var marker15 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.547842, 126.831094),
   
    title: '15번 마커',
    map: map
}),
iwContent15 = [
    '<div style="border:0;background: #8160E2;">',
        '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
            '<div style= "color:#ffffff;"><i class="fas fa-bed"></i>전원파스텔</a>',
            '<div style="color:#ffffff;">매매5,350만원</div>',
        '</div>',
    '</div>'
].join(''),
infowindow16 = new naver.maps.InfoWindow({
    content: iwContent15
});


naver.maps.Event.addListener(marker16, 'mouseover', function(e) {
infowindow16.open(map, marker16);
});

var marker16 = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.540620, 126.837860),
   
    title: '16번 마커',
    map: map
}),
iwContent15 = [
    '<div style="border:0;background: #8160E2;">',
        '<div style="margin:0;padding:5px; background: #8160E2;border-radius: 10%;width:250px;" class="clickable" >',
            '<div style= "color:#ffffff;"><i class="fas fa-bed"></i>서림골드</a>',
            '<div style="color:#ffffff;">월세70만</div>',
        '</div>',
    '</div>'
].join(''),
infowindow16 = new naver.maps.InfoWindow({
    content: iwContent16
});


naver.maps.Event.addListener(marker16, 'mouseover', function(e) {
infowindow16.open(map, marker16);
});





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
		function Request() {
			var requestParam = "";
			//getParameter 펑션
			this.getParameter = function(param) {
				//현재 주소를 decoding
				var url = unescape(location.href);
				//파라미터만 자르고, 다시 &그분자를 잘라서 배열에 넣는다. 
				var paramArr = (url.substring(url.indexOf("?") + 1, url.length))
						.split("&");

				for (var i = 0; i < paramArr.length; i++) {
					var temp = paramArr[i].split("="); //파라미터 변수명을 담음

					if (temp[0].toUpperCase() == param.toUpperCase()) {
						// 변수명과 일치할 경우 데이터 삽입
						requestParam = paramArr[i].split("=")[1];
						break;
					}
				}
				return requestParam;
			}
		}
		//tipland.tistory.com/29 [외로운 개발자]

		var request = new Request();

		var real_estate = request.getParameter("real_estate");

		$('#jb-text').click(
				function() {

					location.href = "real_estate.jsp?real_estate="
							+ real_estate + "&home=sky21";

				});
		$('#jb-text2').click(
				function() {

					location.href = "real_estate.jsp?real_estate="
							+ real_estate + "&home=sweethome";

				});
		$('#jb-text3').click(
				function() {

					location.href = "real_estate.jsp?real_estate="
							+ real_estate + "home=campTower";
				});
	</script>
	

</body>

</html>
