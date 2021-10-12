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

<style>
.is-preload{
font-family: 'Nanum Gothic Coding', monospace;
}
/* component */

.star-rating {
 
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:5em;
}

.star-rating input {
  display:none;
}

.star-rating label {
  color:#ccc;
  cursor:pointer;
}

.star-rating :checked ~ label {
  color:#f90;
}

.star-rating label:hover,
.star-rating label:hover ~ label {
  color:#fc0;
}
.star::before{
	display: none !important; 
}
.star{
	padding: 0 !important;
	margin-right: 15% !important;
}
/* 마켓 정보 테이블 */

#marketTitle{
width:30%;
}

#marketTitle, #address, #contact, #martName, 
#martAddress, #martTel{
background-color: #ffffff;
}
#marketTitle, #address, #contact{
	color:#646ECB;
}

#seeMore:hover{
	background-color: #E1DBF5;
	box-shadow: none;
}

#seeMoreArea{
padding:0 0 0 35%;
}

#marketTable{
margin-bottom:15%;
font-size: 13px;
background-color: #ffffff;
}

#marketGallery{
font-size: 14px;
}

#marketPost{
padding:2%;
margin-bottom: 15%;
background-color: #ffffff;
font-family: 'Nanum Gothic Coding', monospace;
}
#sideBarPurchase{
float: right; 
margin-top: 39%;
}
#sideBarInner{
position: fixed;
width: 25%;
margin-left: 2%;
border: 1px solid #e6e6e6;
padding: 30px 20px;
}
#sideBarInner2{
width: 100%; 
padding: 0 15px 15px; 
margin: 15px 0 5px; 
background: #f9fafb; 
border: 1px solid #eee; 
border-radius: 3px;
}
#sideBarInner3{
margin-top: 15px;
}
#sideBarItemCnt{
font-size: 12px;
}
#sideBarCost{
float: right; 
font-size: 12px;
}
#sideBarDelivery{
padding: 10px 0;
}
.wrapper.split > .inner > *:before {
    height: 50% !important;

}
</style>

</head>

<body class="is-preload" >
<c:set var="mart" value="${mart}"/>
<c:set var="items" value="${items}"/>
<c:set var="cnt" value="${cnt}"/>
<c:set var="boards" value="${boards}"/>
<c:set var="boardCnt" value="${boardCnt}"/>

<!-- Header -->
	<header>
			<jsp:include page="/app/fix/header.jsp"/>
	</header>

	<section id="contact" class="wrapper split" style="margin-top: 5%;">

		<div class="inner" style="display: flex;">
			<div>
				<img src="${pageContext.request.contextPath}/images/${mart.getMart_file()}" style="width: 50%; float: right;">
			</div>

			<div style="overflow: overlay;">

				<div class="content"
					style="padding: 0; margin-left: 1.5%; width: 50%;">
					<div id="marketPost">
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
						<c:choose>
						<c:when test="${mart.getMart_delivery() eq 1}">
						<ul class="actions" id="seeMoreArea">
							<li><a href="${pageContext.request.contextPath}/shopping/ShoppingMartItemsOK.sh?mart_num=${mart.getMart_num()}" id="seeMore">쇼핑하러 가기</a></li>
						</ul>
						</c:when>
						</c:choose>
						
					</div>
				</div>
			</div>
		</div>
		
		
		
		   <!-- 최신 홍보글 3개까지만 가져오기 -->
		<section id="recentWrite">
 <div>
            <!-- 게시판 -->
			   <div class="myboard_table" style="padding: 0 25%;">
                        <section class="main">
                           <div class="table-wrapper">
                              <div class="myboard_list" style=" justify-content:space-between;">
                                 <span style="font-size:smaller">글 개수 : ${boardCnt}개</span>
                              </div>
                              <table>
                                 <caption style="text-align:left; margin-bottom:3%;">
                                 </caption>
                                 <thead>
                                    <tr id="trAlignCenter">
                                       <th style="width: 8%;">번호</th>
                                       <th style="width: 30%;">제목</th>
                                       <th style="width: 12%;">작성자</th>
                                       <th style="width: 12%;">날짜</th>
                                    </tr>
                                 </thead>
                                 <c:choose>
                                 <c:when test="${boardCnt>0}">
                                 	<c:forEach var="board" items="${boards}">
	                                 <tbody>
	                                    <tr>
	                                       <td>${board.getOwner_board_num()}</td>
	                                       <td id="myboard_table_title_content">
	                                       <a href="${pageContext.request.contextPath}/board/OwnerBoardViewOk.ob?owner_board_num=${board.getOwner_board_num()}">
	                                       ${board.getOwner_board_title()}</a></td>
	                                       <td>${board.getMart_name()}</td>
	                                       <td>${board.getOwner_board_date()}</td>
	                                 </tbody>
	                                 </c:forEach>
	                                 
	                                 </c:when>
	                                 <c:otherwise>
	                                 	<tbody>
	                                    <tr>
	                                       <td colspan="4">작성된 게시글이 없습니다</td>
	                                 	</tbody>	                                 	
	                                 </c:otherwise>
                                 </c:choose>
                              </table>
                           </div>
                        </section>
                     </div>
			
		</div>
</section>
	</section>
	<section style="padding:0 25%;">
	<!-- 매장 소개 갤러리 -->
	<section id="marketGallery" class="wrapper"	style="display: flex; background-color: #ffffff; padding:0 text-align:center !important; vertical-align: middle !important;; ">
		<h2  style="width:100%;">[${mart.getMart_name()}]에서 판매중인 물품</h2>
	</section>
	<section id="marketGallery" class="wrapper"
		style="display: flex; background-color: #f4f4f5;">
		<c:choose>
		<c:when test="${cnt > 0}">
		<!-- 1번 영역 -->
		<div class="content" style="padding: 0; margin-left: 2%; width: 31%;">
		<c:forEach var="item" items="${items[0]}">
			<div id="marketPost">
			<a href="${pageContext.request.contextPath}//shopping/ShoppingMallDetailOk.sh?shopitem_num=${item.getShopitem_num()}">
				<img class="image fit" src="${pageContext.request.contextPath}/images/${item.getShopitem_file_name()}" alt="" />
				</a>
				<table id="marketTable">
					<tr>
						<td id="marketTitle"><strong>상품명:</strong></td>
						<td id="martName">${item.getShopitem_name()}</td>
					</tr>
					<tr>
						<td id="address"><strong>가격:</strong></td>
						<td id="martAddress">${item.getShopitem_cost()}</td>
					</tr>
					<tr>
						<td id="contact"><strong>재고:</strong></td>
						<td id="martTel">${item.getShopitem_stock()}</td>
					</tr>
				</table>
			</div>
			</c:forEach>
		</div>


		<!-- line number 2 -->
		<div class="content" style="padding: 0; margin-left: 1.5%; width: 31%;">
		<c:forEach var="item" items="${items[1]}">
			<div id="marketPost">
			<a href="${pageContext.request.contextPath}/shopping/ShoppingMallDetailOk.sh?shopitem_num=${item.getShopitem_num()}">
				<img class="image fit" src="${pageContext.request.contextPath}/images/${item.getShopitem_file_name()}" alt="" />
				</a>
				<table id="marketTable">
					<tr>
						<td id="marketTitle"><strong>상품명:</strong></td>
						<td id="martName">${item.getShopitem_name()}</td>
					</tr>
					<tr>
						<td id="address"><strong>가격:</strong></td>
						<td id="martAddress">${item.getShopitem_cost()}</td>
					</tr>
					<tr>
						<td id="contact"><strong>재고:</strong></td>
						<td id="martTel">${item.getShopitem_stock()}</td>
					</tr>
				</table>
			</div>
			</c:forEach>

		</div>


		<!-- line number 3 -->
		<div class="content" style="padding: 0; margin-left: 1.5%; width: 31%;">
		<c:forEach var="item" items="${items[2]}">
			<div id="marketPost">
			<a href="${pageContext.request.contextPath}/shopping/ShoppingMallDetailOk.sh?shopitem_num=${item.getShopitem_num()}">
				<img class="image fit" src="${pageContext.request.contextPath}/images/${item.getShopitem_file_name()}" alt="" />
				</a>
				<table id="marketTable">
					<tr>
						<td id="marketTitle"><strong>상품명:</strong></td>
						<td id="martName">${item.getShopitem_name()}</td>
					</tr>
					<tr>
						<td id="address"><strong>가격:</strong></td>
						<td id="martAddress">${item.getShopitem_cost()}</td>
					</tr>
					<tr>
						<td id="contact"><strong>재고:</strong></td>
						<td id="martTel">${item.getShopitem_stock()}</td>
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

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

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