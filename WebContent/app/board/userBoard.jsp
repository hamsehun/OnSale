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
   
      /* 찜한 매장보기 slide 관련 css */
      .section input[id*="slide"] {
         display:none;
      }
      
      .section .slidewrap {
         max-width: 800px;
         margin:0 auto;
         overflow:hidden;
      }
      
      .section .slidelist {
         white-space:nowrap;
         font-size:0;
      }
      
      .section .slidelist > li {
         display:inline-block;
         vertical-align:middle;
         width:49%;
         margin-right:1%;
         transition:all .5s;
      }
      
      .section .slidelist > li > a {
         display: block;
         position: relative;
      }
      
      .section .slidelist > li > a img {
         width: 100%;
      }
      
      .section .slidelist label {
         position:absolute;
         z-index: 10;
         top: 58%;
         transform:translateY(-50%);
         padding:34px;
      }
      
      .section .slidelist .left {
         left:410px;
         background:url('${pageContext.request.contextPath}/images/left.png') center center / 100% no-repeat;
      }
      
      .section .slidelist .right {
         right:410px;
         background:url('${pageContext.request.contextPath}/images/right.png') center center / 100% no-repeat;
      }
      
      .section [id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
      .section [id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}
      .section [id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-400%);}
      
      .section .slide-control [class*="control"] {display:none;}
      .section [id="slide01"]:checked ~ .slidewrap .control01 {display:block;}
      .section [id="slide02"]:checked ~ .slidewrap .control02 {display:block;}
      .section [id="slide03"]:checked ~ .slidewrap .control03 {display:block;}
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
		<c:if test="${session_email eq null}">
			<script>
				alert("로그인 후 이용하세요.");
				location.replace("${pageContext.request.contextPath}/user/UserLogin.me");
			</script>
		</c:if>
		
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
							<strong id="textnoline">알뜰 정보 공유</strong>
							<hr id="yellowLine"/>
							</section>
							<!-- 게시판 -->
                        <section class="main">
                           <div class="table-wrapper">
                              <div style="display:flex; justify-content:space-between;">
                                 <span>글 개수 : ${totalCnt}개</span>
                                 <button style="border-radius:0;" class="button small ownerx" 
                                 				onclick="location.href='${pageContext.request.contextPath}/board/UserBoardWrite.ub'">글 쓰기</button>
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
                                 		<c:forEach var="userBoard" items="${boardList}">
                                 			<tr>
                                 				<td>${userBoard.getUser_board_num()}</td>
                                 				<td>
                                 					<a href="${pageContext.request.contextPath}/board/UserBoardViewOk.ub?user_board_num=${userBoard.getUser_board_num()}&user_nickname=${userBoard.getUser_nickname()}&nickname=${nickname}&type=${param.type}" >${userBoard.getUser_board_title()}</a>
                                 				</td>
                                 				<td>${userBoard.getUser_nickname()}</td>
                                 				<td>${userBoard.getUser_board_date()}</td>
                                 				<td>${userBoard.getUser_board_views()}</td>
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
								<li><a href="${pageContext.request.contextPath}/board/UserBoardList.ub?page=${nowPage-1}" class="button">Prev</a></li>
								</c:if>
								
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
									<c:choose>
										<c:when test="${i eq nowPage}">
											<c:out value="[${i}]"/>&nbsp;
										</c:when>
										<c:otherwise>
											<li><a class="page" href="${pageContext.request.contextPath}/board/UserBoardList.ub?page=${i}"><c:out value="${i}"/></a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:if test="${nowPage != realEndPage}">
									<a href="${pageContext.request.contextPath}/board/UserBoardList.ub?page=${nowPage+1}" class="button">Next</a>
								</c:if>
							</ul>
								<hr />

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
			if(type!="user"){
				$(".ownerx").css("display","none");
			}
		})
	</script>
</html>