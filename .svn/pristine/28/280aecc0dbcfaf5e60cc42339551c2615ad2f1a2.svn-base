<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<!--
	Slate by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
<style>
/*GLOBALS*/
* {
	margin: 0;
	padding: 0;
	list-style: none;
}

a {
	text-decoration: none;
	color: #666;
}

a:hover {
	color: #1bc1a3;
}

body, hmtl {
	background: #ecf0f1;
	font-family: 'Nanum Gothic Coding', monospace;
}

#slider-wrap {
	width: 100%;
	height: 300px;
	position: relative;
	overflow: hidden;
}

#slider-wrap ul#slider {
	width: 100%;
	height: 300px;
	position: absolute;
	top: 0;
	left: 0;
}

#slider-wrap ul#slider li {
	float: left;
	position: relative;
	width: 600px;
	height: 400px;
}

#slider-wrap ul#slider li>div {
	position: absolute;
	top: 20px;
	left: 35px;
}

#slider-wrap ul#slider li>div h3 {
	font-size: 36px;
	text-transform: uppercase;
}

#slider-wrap ul#slider li>div span {
	font-family: 'Nanum Gothic Coding', monospace;
	font-size: 21px;
}

#slider-wrap ul#slider li img {
	display: block;
	width: 100%;
	height: 300px;
}

.mypage_menu {
	display: flex;
}

.leftMenu {
	width: 25%;
	float: left;
	margin-right: 10px;
}

.sub_contents {
	width: 100%;
}

input.sub_button1, input.sub_button2, input.sub_button3, input.sub_button4,
	input.sub_button5 {
	box-shadow: none;
	width: 100%;
	text-align: left;
}

.lnb_menu {
	padding-left: 0;
}

.lnb_menu>li {
	padding-left: 0;
}

.lnb_menu>li:first-of-type {
	border-top: none;
}

li {
	border-top: 1px solid #e3e5e4;
	list-style: none outside none;
}

li>a {
	display: block;
	padding: 14px 0 12px;
	border-bottom-color: transparent;
}

/*btns*/
.btns {
	position: absolute;
	width: 50px;
	height: 60px;
	top: 50%;
	margin-top: -25px;
	line-height: 57px;
	text-align: center;
	cursor: pointer;
	background: rgba(0, 0, 0, 0.1);
	z-index: 100;
	-webkit-user-select: none;
	-moz-user-select: none;
	-khtml-user-select: none;
	-ms-user-select: none;
	-webkit-transition: all 0.1s ease;
	-moz-transition: all 0.1s ease;
	-o-transition: all 0.1s ease;
	-ms-transition: all 0.1s ease;
	transition: all 0.1s ease;
}

.btns:hover {
	background: rgba(0, 0, 0, 0.3);
}

#next {
	right: -50px;
	border-radius: 7px 0px 0px 7px;
}

#previous {
	left: -50px;
	border-radius: 0px 7px 7px 7px;
}

#counter {
	top: 30px;
	right: 35px;
	width: auto;
	position: absolute;
}

#slider-wrap.active #next {
	right: 0px;
}

#slider-wrap.active #previous {
	left: 0px;
}

/*bar*/
#pagination-wrap {
	min-width: 20px;
	margin-top: 350px;
	margin-left: auto;
	margin-right: auto;
	height: 15px;
	position: relative;
	text-align: center;
}

#pagination-wrap ul {
	width: 100%;
}

#pagination-wrap ul li {
	margin: 0 4px;
	display: inline-block;
	width: 5px;
	height: 5px;
	border-radius: 50%;
	background: #fff;
	opacity: 0.5;
	position: relative;
	top: 0;
}

#pagination-wrap ul li.active {
	width: 12px;
	height: 12px;
	top: 3px;
	opacity: 1;
	box-shadow: rgba(0, 0, 0, 0.1) 1px 1px 0px;
}

/*Header*/
h1, h2 {
	text-shadow: none;
	text-align: center;
}

h1 {
	color: #666;
	text-transform: uppercase;
	font-size: 36px;
}

h2 {
	color: #7f8c8d;
	font-family: 'Nanum Gothic Coding', monospace;
	font-size: 18px;
	margin-bottom: 30px;
}

/*ANIMATION*/
#slider-wrap ul, #pagination-wrap ul li {
	-webkit-transition: all 0.3s cubic-bezier(1, .01, .32, 1);
	-moz-transition: all 0.3s cubic-bezier(1, .01, .32, 1);
	-o-transition: all 0.3s cubic-bezier(1, .01, .32, 1);
	-ms-transition: all 0.3s cubic-bezier(1, .01, .32, 1);
	transition: all 0.3s cubic-bezier(1, .01, .32, 1);
}

#bannerCategory {
	background-color: white;
}

#bannerCategory input[type="button"], #bannerCategory a {
	box-shadow: none;
}

#bannerCategory {
	text-align: center;
	vertical-align: middle;
	width: 5%;
	font-size: 13px;
	margin-top: 1%;
}

#bannerCategory th {
	text-align: center;
	vertical-align: middle;
	background-color: #E1DBF5;
	padding: 0;
}

#bannerCategory th>a {
	background-color: #FFFFFF;
}

#bannerCategory td {
	padding: 0;
}
			.martlist {
				float: left;
    			width: 32%;
    			position:relative;
    			margin-top: 5%;
    			margin-right: 0.25%;
    			margin-left: 0.25%;
			}
			
			.marttitle span {
				font-size: smaller;
			}
			
			.martdelivery {
				position: absolute;
				left: 3% !important;
				bottom: 37%;
				padding: 1% 5%;
				color: white;
				font-size: 0.65rem;
				border-radius: 500px;
				background-color: #646ECB;
			}	
			
element.style {
    width: -webkit-fill-available;
    contain: layout;
    display: inline;
    object-fit: fill;
    }
    


</style>
</head>
<body class="is-preload"
	style="padding: 0 25%; background-color: white;">
	<c:set var="type" value="${type}" />
	<!-- Header -->
	<header>
			<jsp:include page="/app/fix/header.jsp"/>
	</header>
	<!-- 행사 정보 (갤러리 형식으로)-->
	<!-- 사이드바 -->
	<div style="float: right; margin-top: 39%;">
		<div id="bannerCategory"
			style="position: fixed; width: 250px; height: 421px; margin-left: 2%; border: 1px solid #e6e6e6; padding: 30px 20px;">
<table style="justify-content: end; margin-right:5%; width:200px;">
			<tr>
				<th>순위</th>
				<th>인기 품목</th>
				<th><a href="#" class="button small">더보기</a></th>
			</tr>
			<tr>
				<td><a href="#" class="button small">1위</a></td>
				<td><a href="#" class="button small">꿀간장</a></td>
				<td><a href="#"><img
						src="${pageContext.request.contextPath}/images/up.gif"></a></td>
			</tr>
			<tr>
				<td><a href="#" class="button small">2위</a></td>
				<td><a href="#" class="button small">고구마</a></td>
				<td><a href="#"><img
						src="${pageContext.request.contextPath}/images/up.gif"></a></td>
			</tr>
			<tr>
				<td><a href="#" class="button small">3위</a></td>
				<td><a href="#" class="button small">치킨</a></td>
				<td><a href="#"><img
						src="${pageContext.request.contextPath}/images/up.gif"></a></td>
			</tr>
			<tr>
				<td><a href="#" class="button small">4위</a></td>
				<td><a href="#" class="button small">강정</a></td>
				<td><a href="#"><img
						src="${pageContext.request.contextPath}/images/up.gif"></a></td>
			</tr>
			<tr>
				<td><a href="#" class="button small">5위</a></td>
				<td><a href="#" class="button small">뭐하지</a></td>
				<td><a href="#"><img
						src="${pageContext.request.contextPath}/images/up.gif"></a></td>
			</tr>

		</table>
			<div style="text-align: center;">
			<video width="200px;" src="${pageContext.request.contextPath}/video/Banana.mp4" autoplay muted></video>
					

			</div>
		</div>
	</div>



	<!-- Main -->
	<section id="banner" style="height: 300px; margin-top:10%; min-height:40em;">
					<video width="750px" src="${pageContext.request.contextPath}/video/Banana.mp4" autoplay muted playsinline loops style="display:inline; object-fit: fill;"></video>
				<article>
					<div class="inner" style="height:350px;">
						<h2><a href="#">신선한 재료</a></h2>
					</div>
				</article>
				<article>
					<div class="inner"  style="height:350px;">
						<h2><a href="#"><img class="image fit"
						src="${pageContext.request.contextPath}/images/familydinner2.jpg" style="display:object-fit;">
					건강한 식탁</a></h2>
					</div>
				</article>
			</section>

	<section id="one">
		<div class="xe-widget-wrapper "
			style="float: left; width: 70%; border-width: 0px; border-style: solid; border-color: rgb(225, 225, 225); margin: 10px 0px 0px; 
			background-image: none; background-repeat: repeat; background-position: 0% 0%; background-color: #ffffff;">
			<div style="padding: 0px 0px 0px 0px !important;">
				<div class="wg_container">
					<div style="background-color: #fff" class="td_header bxs">
						마트행사 정보</div>
					<div
						class="prt swiper-container swiper-3323124 swiper-container-horizontal">
						<div class="swiper-wrapper">
							<div class="swiper-slide swiper-slide-active"
								style="width: 100%;">
								<ul class="vs_mc bxs">
									<li class="t_center p_rt"><a
										href="/index.php?mid=incheon&amp;document_srl=134756&amp;read_review_tab=evaluation#comment_464279">
											<span class="vs_tq bxs or_txt fl t_left"> <span
												class="vnw_color t_center"> <span class="fw_b">인천</span>
											</span> [ 8/30 ~ 9/25 ] 코스트코 송도점 로드쇼 행사
										</span>
									</a></li>
									<li class="t_center p_rt"><a
										href="/index.php?mid=incheon&amp;document_srl=24615&amp;read_review_tab=evaluation#comment_464275">
											<span class="vs_tq bxs or_txt fl t_left"> <span
												class="vnw_color t_center"> <span class="fw_b">충남·세종</span>
											</span> [ 8/30 ~ 9/25 ] 코
										</span>
									</a></li>
									<li class="t_center p_rt"><a
										href="/index.php?mid=incheon&amp;document_srl=1709&amp;read_review_tab=evaluation#comment_464271">
											<span class="vs_tq bxs or_txt fl t_left"> <span
												class="vnw_color t_center"> <span class="fw_b">울산</span>
											</span> [ 8/30 ~ 9/25
										</span>
									</a></li>
									<li class="t_center p_rt"><a
										href="/index.php?mid=incheon&amp;document_srl=233584&amp;read_review_tab=evaluation#comment_464267">
											<span class="vs_tq bxs or_txt fl t_left"> <span
												class="vnw_color t_center"> <span class="fw_b">충남·세종</span>
											</span> [ 8/30 ~ 9/25 ] 코
										</span>
									</a></li>
									<li class="t_center p_rt"><a
										href="/index.php?mid=incheon&amp;document_srl=2079&amp;read_review_tab=evaluation#comment_464263">
											<span class="vs_tq bxs or_txt fl t_left"> <span
												class="vnw_color t_center"> <span class="fw_b">서울</span>
											</span> [ 8/30 ~ 9/25 ] 코스트코 양평
										</span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 순위 -->
	<section id="bannerCategory" class="post" style="width: 25%;">
		<table style="justify-content: end;">
			<tr>
				<th>순위</th>
				<th>인기 품목</th>
				<th><a href="#" class="button small">더보기</a></th>
			</tr>
			<tr>
				<td><a href="#" class="button small">1위</a></td>
				<td><a href="#" class="button small">꿀간장</a></td>
				<td><a href="#"><img
						src="${pageContext.request.contextPath}/images/up.gif"></a></td>
			</tr>
			<tr>
				<td><a href="#" class="button small">2위</a></td>
				<td><a href="#" class="button small">고구마</a></td>
				<td><a href="#"><img
						src="${pageContext.request.contextPath}/images/up.gif"></a></td>
			</tr>
			<tr>
				<td><a href="#" class="button small">3위</a></td>
				<td><a href="#" class="button small">치킨</a></td>
				<td><a href="#"><img
						src="${pageContext.request.contextPath}/images/up.gif"></a></td>
			</tr>
			<tr>
				<td><a href="#" class="button small">4위</a></td>
				<td><a href="#" class="button small">강정</a></td>
				<td><a href="#"><img
						src="${pageContext.request.contextPath}/images/up.gif"></a></td>
			</tr>
			<tr>
				<td><a href="#" class="button small">5위</a></td>
				<td><a href="#" class="button small">뭐하지</a></td>
				<td><a href="#"><img
						src="${pageContext.request.contextPath}/images/up.gif"></a></td>
			</tr>

		</table>
		<!--    <div>
   		<a href="#"  class="button small">인기 품목</a>
   		<a href="#" class="button small">More</a>
   		</div>
   <div>
   		<a href="#"  class="button small">추석 선물</a>
   		<a href="#" class="button small">More</a>
   		</div>
   <div>
   		<a href="#"  class="button small">마감 임박</a>
   		<a href="#" class="button small">More</a>
   		</div>
    <div>
    <a href="#" class="button">구매하러가기</a>
    </div>
 -->
	</section>

	<!-- 사용자가 찜한 마트목록 리스트 -->	
	<section class="one">
				<div class="sub_button2">
					<div class="mini_bar">
						<h3 class="mini_bar_title">찜한마트목록</h3>
					</div>
					<div class="martlist_wrapper">
					<div class="martlist">
						<div class="martinfo">
							<img src="${pageContext.request.contextPath}/images/mart1.jpg" style="width:100%; filter: brightness(80%);">
							<div class="marttag">
								<div class="martdelivery">
									<span>배달가능</span>
								</div>
								<div class="marttitle">
									<span><b>오색할인마트</b></span><br>
									<span style="font-size:xx-small;">경기 오산시 오산동 854-6</span>
								</div>
							</div>
						</div>
					</div>
					<div class="martlist">
						<div class="martinfo">
							<img src="${pageContext.request.contextPath}/images/mart2.jpg" style="width:100%; filter: brightness(80%);">
							<div class="marttag">
								<div class="martdelivery">
									<span>배달가능</span>
								</div>
								<div class="marttitle">
									<span><b>우리할인마트</b></span><br>
									<span style="font-size:xx-small;">경기 오산시 원동 560-3</span>
								</div>
							</div>
						</div>
					</div>
					<div class="martlist">
						<div class="martinfo">
							<img src="${pageContext.request.contextPath}/images/mart3.jpg" style="width:100%; filter: brightness(80%);">
							<div class="marttag">
								<div class="marttitle">
									<span><b>석수할인마트</b></span><br>
									<span style="font-size:xx-small;">경기 안양시 만안구 석수동 374-7</span>
								</div>
							</div>
						</div>
					</div>
					<hr style="border:none">
					<div class="martlist">
						<div class="martinfo">
							<img src="${pageContext.request.contextPath}/images/mart1.jpg" style="width:100%; filter: brightness(80%);">
							<div class="marttag">
								<div class="martdelivery">
									<span>배달가능</span>
								</div>
								<div class="marttitle">
									<span><b>오색할인마트</b></span><br>
									<span style="font-size:xx-small;">경기 오산시 오산동 854-6</span>
								</div>
							</div>
						</div>
					</div>
					<div class="martlist">
						<div class="martinfo">
							<img src="${pageContext.request.contextPath}/images/mart2.jpg" style="width:100%; filter: brightness(80%);">
							<div class="marttag">
								<div class="martdelivery">
									<span>배달가능</span>
								</div>
								<div class="marttitle">
									<span><b>우리할인마트</b></span><br>
									<span style="font-size:xx-small;">경기 오산시 원동 560-3</span>
								</div>
							</div>
						</div>
					</div>
					<div class="martlist">
						<div class="martinfo">
							<img src="${pageContext.request.contextPath}/images/mart3.jpg" style="width:100%; filter: brightness(80%);">
							<div class="marttag">
								<div class="marttitle">
									<span><b>석수할인마트</b></span><br>
									<span style="font-size:xx-small;">경기 안양시 만안구 석수동 374-7</span>
								</div>
							</div>
						</div>
					</div>
				</div>
	         <!-- 페이지 넘기는 부분 -->
         		<div class="myboard_page">
					<ul class="pagination" style="text-align:center;">
							<li><span class="button small disabled" style="box-shadow: none;">&lt;</span></li>
							<li><a href="#" class="page active">1</a></li>
							<li><a href="#" class="page">2</a></li>
							<li><a href="#" class="page">3</a></li>
							<li><span>…</span></li>
							<li><a href="#" class="page">8</a></li>
							<li><a href="#" class="page">9</a></li>
							<li><a href="#" class="page">10</a></li>
							<li><a href="#" class="button small" style="box-shadow: none;">&gt;</a></li>
					</ul>
				</div>
				</div>
				</section>
	<section>
		<div class="swiper-slide swiper-slide-next" style="width: 772px;">
			<ul class="vs_mc bxs">
				<li class="t_center p_rt"><a
					href="/index.php?mid=chungnam&amp;document_srl=2098&amp;read_review_tab=evaluation#comment_464259">
						<span class="vs_tq bxs or_txt fl t_left"> <span
							class="vnw_color t_center"> <span class="fw_b">서울</span>
						</span> [ 8/30 ~ 9/25 ] 코스트코 양
					</span>
				</a></li>
				<li class="t_center p_rt"><a
					href="/index.php?mid=chungnam&amp;document_srl=2104&amp;read_review_tab=evaluation#comment_464255">
						<span class="vs_tq bxs or_txt fl t_left"> <span
							class="vnw_color t_center"> <span class="fw_b">서울</span>
						</span> [ 8/30 ~ 9/25 ] 코스트코 상봉점 로드쇼
					</span>
				</a></li>
				<li class="t_center p_rt"><a
					href="/index.php?mid=chungnam&amp;document_srl=2116&amp;read_review_tab=evaluation#comment_464251">
						<span class="vs_tq bxs or_txt fl t_left"> <span
							class="vnw_color t_center"> <span class="fw_b">부산</span>
						</span> [ 8/30 ~ 9/25 ] 코스트코 부산점 로드쇼
					</span>
				</a></li>
				<li class="t_center p_rt"><a
					href="/index.php?mid=chungnam&amp;document_srl=1705&amp;read_review_tab=evaluation#comment_464247">
						<span class="vs_tq bxs or_txt fl t_left"> <span
							class="vnw_color t_center"> <span class="fw_b">대전</span>
						</span> [ 8/30 ~ 9/25 ] 코스트코 대전점 로드쇼
					</span>
				</a></li>
				<li class="t_center p_rt"><a
					href="/index.php?mid=chungnam&amp;document_srl=194820&amp;read_review_tab=evaluation#comment_464243">
						<span class="vs_tq bxs or_txt fl t_left"> <span
							class="vnw_color t_center"> <span class="fw_b">대구</span>
						</span> [ 8/30 ~ 9/25 ] 코스트코 대구 혁신도시점 로드쇼
					</span>
				</a></li>
			</ul>
		</div>

	</section>
	<!-- Footer -->
	<footer class="wrapper align-center">
		<div class="inner">
			<p class="copyright">&copy; Untitled Corp. All rights reserved.
				Lorem ipsum dolor sit amet feugiat tempus aliquam.</p>
			<ul class="icons">
				<li><a href="https://twitter.com/?lang=en"
					class="icon brands style2 fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="https://www.facebook.com/"
					class="icon brands style2 fa-facebook-f"><span class="label">Facebook</span></a></li>
				<li><a href="https://www.instagram.com/"
					class="icon brands style2 fa-instagram"><span class="label">Instagram</span></a></li>
				<li><a href="https://www.linkedin.com/"
					class="icon brands style2 fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
				<li><a href="#" class="icon style2 fa-envelope"><span
						class="label">Email</span></a></li>
			</ul>
			<p>&copy; Untitled.</p>
		</div>
	</footer>


	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	function getParameterByName(name) { 
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]"); 
	var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), 
	results = regex.exec(location.search); return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " ")); 
	}
	
	//current position
	var pos = 0;
	//number of slides
	var totalSlides = $('#slider-wrap ul li').length;
	//get the slide width
	var sliderWidth = $('#slider-wrap').width();

	$(document).ready(function() {

		/*****************
		 BUILD THE SLIDER
		 *****************/
		//set width to be 'x' times the number of slides
		$('#slider-wrap ul#slider').width(sliderWidth * totalSlides);

		//next slide  
		$('#next').click(function() {
			slideRight();
		});

		//previous slide
		$('#previous').click(function() {
			slideLeft();
		});

		/*************************
		 //*> OPTIONAL SETTINGS
		 ************************/
		//automatic slider
		var autoSlider = setInterval(slideRight, 1000);

		//for each slide 
		$.each($('#slider-wrap ul li'), function() {

			//create a pagination
			var li = document.createElement('li');
			$('#pagination-wrap ul').append(li);
		});

		

		//hide/show controls/btns when hover
		//pause automatic slide when hover
		$('#slider-wrap').hover(function() {
			$(this).addClass('active');
			clearInterval(autoSlider);
		}, function() {
			$(this).removeClass('active');
			autoSlider = setInterval(slideRight, 0);
		});

	});//DOCUMENT READY

	/***********
	 SLIDE LEFT
	 ************/
	function slideLeft() {
		pos--;
		if (pos == -1) {
			pos = totalSlides - 1;
		}
		$('#slider-wrap ul#slider').css('left', -(sliderWidth * pos));

	}

	/************
	 SLIDE RIGHT
	 *************/
	function slideRight() {
		pos++;
		if (pos == totalSlides) {
			pos = 0;
		}
		$('#slider-wrap ul#slider').css('left', -(sliderWidth * pos));


	}

</script>
</html>