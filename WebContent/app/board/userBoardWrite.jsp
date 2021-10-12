<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap"
	rel="stylesheet">

<!-- include libraries(jQuery, bootstrap) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<!-- include summernote css/js-->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/assets/js/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/summernote-lite.css">
<title>알뜰 정보</title>
<style>
#header.alt nav {
	right: 25% !important;
}

#header.alt a {
	color: #000;
}

#header.alt {
	top: 0;
	background-color: #fff;
	height: 66px;
}

#header.shadow {
	-webkit-box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

nav#nav {
	display: flex;
	justify-content: space-between;
}

ul.header li a {
	font-size: 12px;
	font-family: 'Nanum Gothic Coding', monospace;
	vertical-align: -19%;
}

ul.header-submenu li a {
	font-size: 10px;
	font-family: 'Nanum Gothic Coding', monospace;
	vertical-align: -18%;
}

#header nav>ul>li {
	margin-left: 0.6em;
}

#header nav>ul.header-submenu>li {
	margin-left: 1.6em;
}

header#header h1#logo {
	vertical-align: -30%;
	width: 50%;
	display: inline;
}

a.submenu {
	font-size: 1em !important;
}

input[type='file'] {
	display: none;
}
input[type='button']{
	border: none;
	box-shadow: none;
	width: 130px;
}
input[type='button']:hover{
background-color: #D4D7F0;
}
#clickimgtoaddfile{
	margin: 2% 0 3% 0;
	font-size: 13px;
	font-family: 'Nanum Gothic Coding', monospace;
}
</style>
</head>
<body class="is-preload" style="padding: 0 25%">
	<!-- 로그인 상태 유지 -->
	<script>
		if ("${param.flag}" == "false") {
			alert("아이디 또는 비밀번호를 다시 확인해주세요");
		}
	</script>
   <!-- Header -->
   <header id="header" class="alt shadow">
      <h1 id="logo" style="left: 25%;">
         <a href="index.jsp"> <span> <img
               src="${pageContext.request.contextPath}/images/logoNanum.png"
               width="95px">
         </span>
         </a>
      </h1>
      <nav id="nav" style="width: 50%">
         <ul class="logo-area" style="width: 20%;"></ul>
                  <ul class="header-submenu" style="text-align: left; width: 95%;">
            <li><a href="#" class="submenu fa-angle-down">우리동네</a>
               <ul>
                  <li><a href="marketSearch.jsp?type=${param.type}">마트검색</a></li>
     
                  
               </ul>
            <li><a href="#" class="submenu fa-angle-down">커뮤니티</a>
               <ul>
                  <li><a href="${pageContext.request.contextPath}/board/UserBoardList.ub">알뜰 정보</a></li>
                  <li><a href="${pageContext.request.contextPath}/board/OwnerBoardList.ob">행사소식</a></li>
               </ul></li>
            <li><a href="#" class="submenu fa-angle-down">특가/혜택</a>
               <ul>
                  <li><a href="${pageContext.request.contextPath}/shopping/ShoppingMall.sh">특가상품</a></li>
                  <li><a href="marketSearch.jsp">추천마트</a>
                     <ul>
                        <li><a href="commissioninfo.jsp">매장 등록 수수료</a></li>
                     </ul></li>
               </ul></li>
         </ul>
			<ul class="header" style="text-align: center; width: 40%;">
						<li><a href="${pageContext.request.contextPath}/user/UserMypage.me">마이페이지</a></li>
						<li><a href="shoppingbasket.jsp">장바구니</a></li>
						<li><a href="${pageContext.request.contextPath}/user/UserLogout.me">로그아웃</a></li>
			</ul>
		</nav>
   </header>

	<section class="main">
		<a href="#" class="image main fit"> <img height="250px"
			style="margin-top: 10%;"
			src="${pageContext.request.contextPath}/images/advertise.png" alt="" /></a>
		<form
			action="${pageContext.request.contextPath}/board/UserBoardWriteOk.ub"
			name="writeForm" method="post" enctype="multipart/form-data">
		</form>
	</section>

	<div style="margin: auto;">
		<form method="post" action="/write">

			<div style="text-align: right;">
				<input type="button" value="목록" class="primary"
					onclick="location.href='${pageContext.request.contextPath}/board/UserBoardList.ub'"
					style="background-color: #646ECB; display: inline-block;" />
			</div>

			<div style="width: 20%; margin-bottom: 2%;">
				작성자 :
				<c:out value="${nickname}" />
				<input type="hidden" name="board_id" value="${nickname}">
			</div>

			<div style="display: flex; margin-bottom: 3%;">
				<input " type="text" name="title" placeholder="제목" />

			</div>
			<textarea id="summernote" name="content"></textarea>
			<hr style="border: none;" />
			<div style="padding: 3%; margin-bottom: 3%;  background-color: #f4f4f5;">
				<h4 style="padding: 0 0 2% 0;">
					<strong>사진 및 파일 첨부</strong>
				</h4>
					<p id="clickimgtoaddfile">이미지를 클릭해주세요.</p>
				<div style="display: flex;">
					<div class="files" style="margin:0 7% 0 3%;">
						<div>
							<label for="board_file1" style="display: inline;"> <img
								id="board_file1Img"
								src="${pageContext.request.contextPath}/images/noimggrey.png"
								width="130px;" height="110px;" style="display: inline;">
							</label>
						</div>
						<input id="board_file1" name="board_file1" type="file"> <input
							type="button" onclick="cancelFile('board_file1')" value="첨부 삭제">
					</div>
					<div class="files" style="margin-right:7%;">
						<div>
							<label for="board_file2" style="display: inline;"> <img
								id="board_file2Img"
								src="${pageContext.request.contextPath}/images/noimggrey.png"
								width="130px;" height="110px" style="display: inline;">
							</label>
						</div>
						<input id="board_file2" name="board_file2" type="file"> <input
							type="button" onclick="cancelFile('board_file2')" value="첨부 삭제">
					</div>
					<div class="files" style="margin-right:7%;">
						<div>
							<label for="board_file3" style="display: inline;"> <img
								id="board_file3Img"
								src="${pageContext.request.contextPath}/images/noimggrey.png"
								width="130px;" height="110px" style="display: inline;">
							</label>
						</div>
						<input id="board_file3" name="board_file3" type="file"> <input
							type="button" onclick="cancelFile('board_file3')" value="첨부 삭제">
					</div>
					<div class="files">
						<div>
							<label for="board_file4" style="display: inline;"> <img
								id="board_file4Img"
								src="${pageContext.request.contextPath}/images/noimggrey.png"
								width="130px;" height="110px" style="display: inline;">
							</label>
						</div>
						<input id="board_file4" name="board_file3" type="file"> <input
							type="button" onclick="cancelFile('board_file4')" value="첨부 삭제">
					</div>
				</div>
			</div>
			<ul class="actions"
				style="display: flex; justify-content: center; margin-top: 3%;">
				<li><input type="button" value="글쓰기" class="primary"
					onclick="writeForm.submit()" /></li>
				<li><input type="button" value="취소" onclick="history.back()" /></li>
			</ul>
		</form>
	</div>
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



</body>

<script>


$(document).ready(function() {
	  $('#summernote').summernote({
 	    	placeholder: 'content',
	        minHeight: 370,
	        maxHeight: null,
	        focus: true, 
	        lang : 'ko-KR'
	  });
	});
	</script>
	<script>
$(".files").change(function(e){
	var file = e.target.files[0];
	var img = $(this).find("img");
	
	if(!file.type.match("image.*")){
		img.attr("src", "${pageContext.request.contextPath}/images/noimggrey.png");
	}else{
		var reader = new FileReader();
		reader.onload = function(e){
			img.attr("src", e.target.result)
		}
		reader.readAsDataURL(file);
	}
})

function cancelFile(fileTagName){
	//explorer가 테스트 환경이라면 clone을 써야한다.
	//1. 객체 통채로를 복사해 놓고
	//2. 삭제 시 기존 태그 삭제, 복사된 거 append
	$("input[name='" + fileTagName + "']").val("");
	$("img#" + fileTagName + "Img").attr("src", "${pageContext.request.contextPath}/images/noimggrey.png");
}
</script>

</html>