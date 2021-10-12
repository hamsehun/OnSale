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
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
		
		<style>
			#buttonForCities {
				display: flex;
				justify-content: center;
			}
			
			#buttonForCities input[type="button"] {
				border-radius: 30px;
				margin: 5px 5px 0 5px;
				font-family: 'Nanum Gothic Coding', monospace;
				font-size: 15px;
				box-shadow: none;
			}
			
			#buttonForCities input[type="button"]:hover {
				background-color: #E1DBF5;
			}
					
		section#one{
		font-family: 'Nanum Gothic Coding', monospace;
		font_size:10px;
		}			
		</style>
	</head>
	<body class="is-preload" style="padding: 0 25%;">
<c:set var="totalCnt" value="${totalCnt}"/>
<c:set var="realEndPage" value="${realEndPage}"/>
<c:set var="startPage" value="${startPage}"/>
<c:set var="endPage" value="${endPage}"/>
<c:set var="nowPage" value="${nowPage}"/>
<c:set var="ShoppingMall" value="${ShoppingMall}"/>
<c:set var="martName" value="${martName}"/>
<!-- Header -->
	<header>
			<jsp:include page="/app/fix/header.jsp"/>
	</header>
<!-- 쇼핑몰 -->
<section class="main">
		</section>
		<section id="one" class="wrapper major-pad" style="padding: 0em 0 4em 0;">
			<div style="display: flex;justify-content: space-between; margin: 15% 0% 0% 0%">
				<h4 id="martName" style="display: block;">${martName}</h4>
				<div style="width: 80%;display: flex;justify-content: flex-end;">
					<input type="text" name="search" class="marketSearch" onkeyup="enterkey()" placeholder="상품이름을 입력해주세요" style="width: 30%; margin: 0 5px 0 10%; border: none; border-bottom: solid 2px; border-bottom-color: #E1DBF5; font-size: 12px; font-family: 'Nanum Gothic Coding', monospace;">
					<input type="button" onclick="searchItem()" class="marketSearchButton small" value="검색" style="background-color: #E1DBF5; box-shadow: none;">
				</div>
			</div>
							<h5 class="alt">등록 상품 수 : ${totalCnt}</h5>
							<div class="box alt">
								<div class="row gtr-uniform gtr-50">
									<c:choose>
										<c:when test="${ShoppingMall != null and fn:length(ShoppingMall) > 0}">
											<c:forEach var="shop" items="${ShoppingMall}">
												<div class="col-4">
													<a href="${pageContext.request.contextPath}/shopping/ShoppingMallDetailOk.sh?shopitem_num=${shop.getShopitem_num()}&">
														<span class="image fit">
															<img src="${pageContext.request.contextPath}/images/${shop.getShopitem_file_name()}" alt="" />
															<span style="font-weight: bold;">${shop.getShopitem_name()}</span><br>
															<span>${shop.getMart_name()}</span><br>
															<div style="text-align: right;">
																<span style="font-size: large; color: red; font-weight: bold;">${shop.getShopitem_cost()}원</span>
															</div>
														</span>
													</a>
												</div>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<div>
												<span style="font-size: xx-large;">등록된 상품이 없습니다.</span>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div style="text-align: center;">
							<ul class="pagination">
								<li><span class="button disabled">Prev</span></li>
								<li><a href="#" class="page active">1</a></li>
								<li><a href="#" class="page">2</a></li>
								<li><a href="#" class="page">3</a></li>
								<li><span>&hellip;</span></li>
								<li><a href="#" class="page">8</a></li>
								<li><a href="#" class="page">9</a></li>
								<li><a href="#" class="page">10</a></li>
								<li><a href="#" class="button">Next</a></li>
							</ul>
							</div>
		</section>	




   <!-- Footer -->
   <footer class="wrapper" style="text-align: center; margin-top:10%; ">
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
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script>
				
			</script>

	</body>
<script>
var martName = $('#ipt_btn').text();

function enterkey() { 
	if (window.event.keyCode == 13) {  
		searchItem();
	}
}

function searchItem() {
	var keyword = $('input[name=search]').val();
	location.href="${pageContext.request.contextPath}/shopping/ShoppingMartItemsSearchOK.sh?martName=${martName}&keyword="+keyword;
}

</script>
</html>