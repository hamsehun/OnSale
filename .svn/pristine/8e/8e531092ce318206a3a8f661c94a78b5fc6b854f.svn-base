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
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">

<style>
.pagination{
text-align: center;
}

#textnoline{
color: #646ECB;
fone-size:2em;
}

</style>
</head>
<body class="is-preload"
	style="padding: 0 25%; background-color: white;">
	<!-- 로그인 세션 -->
<script>
		if("${param.flag}" == "false"){
			alert("아이디 또는 비밀번호를 다시 확인해주세요");
		}
	</script>
	<!-- 변수 선언 -->
		<c:set var="realEndPage" value="${realEndPage }"/>
		<c:set var="totalCnt" value="${totalCnt}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="nowPage" value="${nowPage}"/>
		<c:set var="boardList" value="${boardList}"/>
		<!-- Header -->
	<header>
			<jsp:include page="/app/fix/header.jsp"/>
	</header>	
				<!-- Wrapper -->
					<div class="wrapper">
						<div class="inner">

							<!-- 게시판 제목 -->
							<section  id="one" class="wrapper major-pad" style="text-align: center;">
							<p><strong id="textnoline">행사 정보</strong></p>
							<hr id="yellowLine"/>
							</section>
								
							<!-- 게시판 -->
                        <section class="main">
                           <div class="table-wrapper">
                              <div style="display:flex; justify-content:space-between;">
                                 <span>글 개수 : ${totalCnt}개</span>
                                 <button style="border-radius:0;" class="button small userx" onclick="location.href='${pageContext.request.contextPath}/app/board/ownerBoardWrite.jsp'">글 쓰기</button>
                              </div>
                              <table>
                                 <caption style="text-align:left; margin-bottom:3%;">
                                    
                                 </caption>
                                 <thead>
                                    <tr id="trAlignCenter">
                                       <th>번호</th>
                                       <th>제목</th>
                                       <th>작성자</th>
                                       <th>날짜</th>
                                       <th>조회수</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                 <c:choose>
                                 	<c:when test="${boardList != null and fn:length(boardList) > 0}">
                                 		<c:forEach var="OwnerBoard" items="${boardList}">
                                 			<tr>
                                 				<td>${OwnerBoard.getOwner_board_num()}</td>
                                 				<td>
                                 					<a href="${pageContext.request.contextPath}/board/OwnerBoardViewOk.ob?owner_board_num=${board.getOwner_board_num()}">${board.getOwner_board_title()}</a>
                                 				</td>
                                 				<td>${OwnerBoard.getMart_name()}</td>
                                 				<td>${OwnerBoard.getOwner_board_date()}</td>
                                 				<td>${OwnerBoard.getOwner_board_views()}</td>
                                 			</tr>
                                 		</c:forEach>
                                 	</c:when>
                                 <c:otherwise>
                                 	<tr>
                                 		<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
                                 	</tr>
                                 </c:otherwise>
                              </c:choose>
                            </tbody>
                          </table>
                              
                         <table style="font-size:1.3rem">
                            <tr align="center" valign="middle">
                            </tr>
                         </table>
                      </div>
                   </section>
                 </div>
              </div>
      
         <!-- 페이지 넘기는 부분 -->
							<ul class="pagination">
								<c:if test="${nowPage > 1}">
								<li><a href="${pageContext.request.contextPath}/board/OwnerBoardList.ob?page=${nowPage-1}" class="button">Prev</a></li>
								</c:if>
								
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
									<c:choose>
										<c:when test="${i eq nowPage}">
											<c:out value="[${i}]"/>&nbsp;
										</c:when>
										<c:otherwise>
											<li><a class="page" href="${pageContext.request.contextPath}/board/OwnerBoardList.ob?page=${i}"><c:out value="${i}"/></a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:if test="${nowPage != realEndPage}">
									<a href="${pageContext.request.contextPath}/board/OwnerBoardList.ob?page=${nowPage+1}" class="button">Next</a>
								</c:if>
							</ul>
								<hr />
							<section class="main accent2" style="padding:3%">
								<header class="major" style="text-align:left;">
									<p>특가 상품 노출</p>
								</header>

								 <a href="#" class="image main"><img src="${pageContext.request.contextPath}/images/pic01.jpg" alt="" /></a>
							</section>


		
		<!-- Three -->
			<section id="three" class="wrapper style2">
				<div class="inner">
					<h2>Etiam sed tellus</h2>
					<div class="posts">
						<section class="post">
							<span class="image"><img src="images/pic01.jpg" alt="" /></span>
							<div class="content">
								<h3>Congue portitor</h3>
								<p>sit amet sodales sapien.</p>
								<ul class="actions">
									<li><a href="#" class="button">More</a></li>
								</ul>
							</div>
						</section>
						<section class="post">
							<span class="image"><img src="images/pic02.jpg" alt="" /></span>
							<div class="content">
								<h3>Duis nisl euismod</h3>
								<p>Sed sodales ultricies magna etiam.</p>
								<ul class="actions">
									<li><a href="#" class="button">More</a></li>
								</ul>
							</div>
						</section>
						<section class="post">
							<span class="image"><img src="images/pic03.jpg" alt="" /></span>
							<div class="content">
								<h3>Elementum auctor</h3>
								<p>Morbi aliquam aenean.</p>
								<ul class="actions">
									<li><a href="#" class="button">More</a></li>
								</ul>
							</div>
						</section>
						
					</div>
				</div>
			</section>


<!-- Footer -->
		<footer class="wrapper align-center">
			<div class="inner">
				<p class="copyright">&copy; Untitled Corp. All rights reserved. Lorem ipsum dolor sit amet feugiat tempus aliquam.</p>
				<ul class="icons">
					<li><a href="https://twitter.com/?lang=en" class="icon brands style2 fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="https://www.facebook.com/" class="icon brands style2 fa-facebook-f"><span
							class="label">Facebook</span></a></li>
					<li><a href="https://www.instagram.com/" class="icon brands style2 fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="https://www.linkedin.com/" class="icon brands style2 fa-linkedin-in"><span
							class="label">LinkedIn</span></a></li>
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

	</body>
	<script>
		$(document).ready(function(){
			var type = '${param.type}'
			if(type!="owner"){
				$(".userx").css("display","none");
			}
		})
	</script>
</html>