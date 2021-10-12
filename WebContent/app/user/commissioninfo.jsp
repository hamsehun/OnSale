<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.item {
	width: 90px;
	height: 90px;
	float: left;
}

.align-center {
	float: left;
}

#itemhead {
	text-align: center;
}
#announceDate{
display: flex; 
justify-content: space-between;
font-family: 'Nanum Gothic Coding', monospace;
}
#announceDate > p{
margin: 0 0 0 0;
padding-top: 1em; 
color: red; 
font-size: 14px;
font-family: 'Nanum Gothic Coding', monospace;
}
#announceDate > button{
float:right; 
background-color: #646ECB; 
border: 0; 
border-radius: 3px;
font-family: 'Nanum Gothic Coding', monospace;
}
#commissionTable{
width: 100%;
 margin: 0 auto 3%;
  margin-top: 1.2%;
}
#commPayday{
padding-top: 0.75em;
text-align: center; 
width: 110px;
}
#commMartName{
text-align: center; 
width: 130px;
}
#commOwner{
text-align: center; 
width: 73px;
}
#deliveryCnt{
text-align: center; 
width: 75px;
}
#commAmount{
text-align: center;
width: 88px;
}
#commTotal{
text-align: center;
width: 127px;
}
#commTableTr{
background-color: #f4f4f5;
font-family: 'Nanum Gothic Coding', monospace;
}
#commAnnounce{
font-family: 'Nanum Gothic Coding', monospace;
}
</style>
</head>
<body class="is-preload" style="padding: 0 25%;">

	<!-- Header -->
	<header>
		<jsp:include page="/app/fix/header.jsp" />
	</header>

	<!-- 쇼핑몰 -->
	<section id="one" class="wrapper major-pad">
	<div>
		<h4 id="commAnnounce">수수료 결제 안내</h4>
		<div id="announceDate">
			<p>매월 <span class="day">27</span>일은 수수료 납부일입니다.</p>
			<button class="primary">
				<span>결제 취소</span>
			</button>
		</div>
	</div>
		<table id="commissionTable">
			<thead>
				<tr id="commTableTr">
					<!-- 결제일 / 마트명 /  배달건수 / 수수료 / 결제자이름 / 총액 / 상태(매장 등급) -> 매장 등록 취소 -->
					<th id="commPayday">결제일</th>
					<th id="commMartName">마트명</th>
					<th id="commOwner">결제자</th>
					<th id="deliveryCnt">배달건수</th>
					<th id="commAmount">수수료</th>
					<th id="commTotal">총액</th>
				</tr>
			</thead>
			<tbody>
				<tr style="background-color: white">
					<td style="text-align: center;border-right: 1px solid #eee;">2021/09/27</td>
					<td style="text-align: center;border-right: 1px solid #eee;">닭강정 마트</td>
					<td style="text-align: center;border-right: 1px solid #eee;">한형진</td>
					<td style="text-align: center;border-right: 1px solid #eee;">1000 건</td>
					<td style="text-align: center;border-right: 1px solid #eee;">500 원</td>
					<td style="text-align: center;">1,000,000 원</td>
				</tr>
				
				<tr style="background-color: white">
					<td style="text-align: center;border-right: 1px solid #eee;">2021/08/27</td>
					<td style="text-align: center;border-right: 1px solid #eee;">닭강정 마트</td>
					<td style="text-align: center;border-right: 1px solid #eee;">한형진</td>
					<td style="text-align: center;border-right: 1px solid #eee;">1000 건</td>
					<td style="text-align: center;border-right: 1px solid #eee;">500 원</td>
					<td style="text-align: center;">1,000,000 원</td>
				</tr>
				
				<tr style="background-color: white">
					<td style="text-align: center;border-right: 1px solid #eee;">2021/07/27</td>
					<td style="text-align: center;border-right: 1px solid #eee;">닭강정 마트</td>
					<td style="text-align: center;border-right: 1px solid #eee;">한형진</td>
					<td style="text-align: center;border-right: 1px solid #eee;">1000 건</td>
					<td style="text-align: center;border-right: 1px solid #eee;">500 원</td>
					<td style="text-align: center;">1,000,000 원</td>
				</tr>
				
				<tr style="background-color: white">
					<td style="text-align: center;border-right: 1px solid #eee;">2021/06/27</td>
					<td style="text-align: center;border-right: 1px solid #eee;">닭강정 마트</td>
					<td style="text-align: center;border-right: 1px solid #eee;">한형진</td>
					<td style="text-align: center;border-right: 1px solid #eee;">1000 건</td>
					<td style="text-align: center;border-right: 1px solid #eee;">500 원</td>
					<td style="text-align: center;">1,000,000 원</td>
				</tr>
				
				<tr style="background-color: white">
					<td style="text-align: center;border-right: 1px solid #eee;">2021/05/27</td>
					<td style="text-align: center;border-right: 1px solid #eee;">닭강정 마트</td>
					<td style="text-align: center;border-right: 1px solid #eee;">한형진</td>
					<td style="text-align: center;border-right: 1px solid #eee;">1000 건</td>
					<td style="text-align: center;border-right: 1px solid #eee;">500 원</td>
					<td style="text-align: center;">1,000,000 원</td>
				</tr>
				
			</tbody>
		</table>
		<!-- 페이지 넘기는 부분 -->
		<ul class="pagination" style="text-align: center;">
			<li><span class="button small disabled">Prev</span></li>
			<li><a href="#" class="page active">1</a></li>
			<li><a href="#" class="page">2</a></li>
			<li><a href="#" class="page">3</a></li>
			<li><span>…</span></li>
			<li><a href="#" class="page">8</a></li>
			<li><a href="#" class="page">9</a></li>
			<li><a href="#" class="page">10</a></li>
			<li><a href="#" class="button small">Next</a></li>
		</ul>
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
</html>