<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

#buttonForCities {
	display: flex;
	justify-content: center;
}

#buttonForCities input[type="button"] {

	margin: 5px;
	font-size: 14px;
	box-shadow: none;
	color: #646ECB;
}

#buttonForCities input[type="button"]:hover {
	background-color: #E1DBF5;
}

#marketGallery{
padding:0;
}
#marketGallery input[type="button"]{
box-shadow: none;
font-family: 'Nanum Gothic Coding', monospace;
margin-right:5px;
vertical-align: middle;
font-size: 13px;
}

#marketGallery input[type="button"]:hover {
	background-color: #E1DBF5;
}


#marketTitle{
width:30%;
background-color: #ffffff;

}

#marketPost{
padding:2%;
margin-bottom: 15%;
background-color: #ffffff;
font-family: 'Nanum Gothic Coding', monospace;
	color:#646ECB;

}

#martName{
background-color: #ffffff;

}
#contact{
background-color: #ffffff;
}
#martTel{
background-color: #ffffff;
}


#seeMore{
box-shadow: none;
margin:0 auto;
display: inline-block;
font-family: 'Nanum Gothic Coding', monospace;
font_size:18px;
}

#seeMore:hover{
	background-color: #E1DBF5;
	box-shadow: none;
}

#seeMoreArea{
padding:0 0 0 35%;
}

#marketTable{
margin:0;
font-size: 13px;
}

#marketGallery{
font-size: 14px;
}

</style>
</head>
<body class="is-preload" style="padding: 0 25%;">
<c:set var="marts" value="${marts}"/>
<c:set var="searchCnt" value="${searchCnt}"/>
<c:set var="area" value="${area}"/>

		<!-- Header -->
	<header>
			<jsp:include page="/app/fix/header.jsp"/>
	</header>


	<!-- Wrapper -->
	<div class="wrapper">

		<!-- Main -->
		<section class="main" style="margin-top:5%;">

			<!-- 지역 선택 버튼 -->
			<div
				class="ed board-header padding-horizontal-small@s margin-bottom-small">
				<div class="ed category category-pill-new">
					<div id="buttonForCities" class="actions">
						<div>
							<input type="button" class="button" value="전체" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="서울" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="경기" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="인천" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="부산" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="대구" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="광주" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="대전" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="울산" onclick="getAreaList(this)">
						</div>
					</div>
					<div id="buttonForCities" class="actions">
						<div>
							<input type="button" class="button" value="강원" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="충북" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="충남" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="세종" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="경북" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="경남" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="전북" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="전남" onclick="getAreaList(this)">
						</div>
						<div>
							<input type="button" class="button" value="제주" onclick="getAreaList(this)">
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- 매장 소개 갤러리 -->

	<section id="marketGallery" class="wrapper"
		style="display: flex; background-color: #f4f4f5;">
		<div>
			<input type="button" id="famous" value="추천매장순" onclick="getKategorieList(this)"/>
		</div>
		<div>
			<input type="button" id="famous" value="최근등록순" onclick="getKategorieList(this)"/>
		</div>
		<div>
			<input type="button" id="famous" value="재난지원금" onclick="getKategorieList(this)"/>
		</div>
	</section>
	
	<section id="marketGallery" class="wrapper"
		style="display: flex; background-color: #f4f4f5;">
		<c:choose>
		<c:when test="${searchCnt > 0}">
		<!-- 1번 영역 -->
		<div class="content" style="padding: 0; margin-left: 2%; width: 31%;">
		<c:forEach var="mart" items="${marts[0]}">
			<div id="marketPost">
			<a href="${pageContext.request.contextPath}/shopping/ShoppingMartItemsOK.sh?mart_num=${mart.getMart_num()}">
				<img class="image fit" src="${pageContext.request.contextPath}/images/${mart.getMart_file()}" alt="" />
				</a>
				<table id="marketTable">
					<tr>
						<td id="marketTitle"><strong>매장명:</strong></td>
						<td id="martName">${mart.getMart_name()}</td>
					</tr>
					<tr>
						<td id="address"><strong>주소:</strong></td>
						<td id="martAddress">${mart.getMart_address()}</td>
					</tr>
					<tr>
						<td id="contact"><strong>연락처:</strong></td>
						<td id="martTel">${mart.getMart_tel()}</td>
					</tr>
				</table>
			</div>
			</c:forEach>
		</div>


		<!-- line number 2 -->
		<div class="content" style="padding: 0; margin-left: 1.5%; width: 31%;">
		<c:forEach var="mart" items="${marts[1]}">
			<div id="marketPost">
			<a href="${pageContext.request.contextPath}/shopping/ShoppingMartItemsOK.sh?mart_num=${mart.getMart_num()}">
				<img class="image fit"
					src="${pageContext.request.contextPath}/images/${mart.getMart_file()}"
					alt="" />
					</a>
				<table id="marketTable">
					<tr>
						<td id="marketTitle"><strong>매장명:</strong></td>
						<td id="martName">${mart.getMart_name()}</td>
					</tr>
					<tr>
						<td id="address"><strong>주소:</strong></td>
						<td id="martAddress">${mart.getMart_address()}</td>
					</tr>
					<tr>
						<td id="contact"><strong>연락처:</strong></td>
						<td id="martTel">${mart.getMart_tel()}</td>
					</tr>
				</table>
			</div>
			</c:forEach>

		</div>


		<!-- line number 3 -->
		<div class="content" style="padding: 0; margin-left: 1.5%; width: 31%;">
		<c:forEach var="mart" items="${marts[2]}">
			<div id="marketPost">
		<a href="${pageContext.request.contextPath}/shopping/ShoppingMartItemsOK.sh?mart_num=${mart.getMart_num()}">
				<img class="image fit"
					src="${pageContext.request.contextPath}/images/${mart.getMart_file()}" alt="" />
					</a>
				<table id="marketTable">
					<tr>
						<td id="marketTitle"><strong>매장명:</strong></td>
						<td id="martName">${mart.getMart_name()}</td>
					</tr>
					<tr>
						<td id="address"><strong>주소:</strong></td>
						<td id="martAddress">${mart.getMart_address()}</td>
					</tr>
					<tr>
						<td id="contact"><strong>연락처:</strong></td>
						<td id="martTel">${mart.getMart_tel()}</td>
					</tr>
				</table>
			</div>
			</c:forEach>
		</div>
	</c:when>
	
	<c:otherwise>
	<div style="margin-left: 34%;">
		<img src="${pageContext.request.contextPath}/images/noSearch.png" style="width: 60%; margin-top: 10%; margin-bottom: 10%;">
	</div>
	</c:otherwise>
	
	</c:choose>
	</section>



	<!-- Footer -->
	<footer class="wrapper" style="text-align: center;">
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
<script>
		var type = '${param.type}'
	function getAreaList(val) {
		var area = val.value;
		location.href="${pageContext.request.contextPath}/shopping/AreaOK.sh?area="+area+"&type="+type;
	}
	
	function getKategorieList(val) {
		var kategorie = val.value;
		location.href="${pageContext.request.contextPath}/shopping/KategorieOK.sh?area=${area}&kategorie="+kategorie+"&type="+type;
	}
	
</script>
</html>