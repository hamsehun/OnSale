<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
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
#header.alt nav {
   right: 25% !important;
}

#header.alt a {
   color: #000;
}

#header.alt {
   top: 0;
   background-color: #fff;
   height:66px;
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

         </style>
</head>
<body class="is-preload">
	<c:set var="type" value="${type}"/>
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
                  <li><a href="${pageContext.request.contextPath}/app/user/marketSearch.jsp?type=${param.type}">추천마트</a>
                     <ul>
                        <li><a id="userx" onclick="userx()" href="${pageContext.request.contextPath}/app/user/commissioninfo.jsp?type=${param.type}">매장 등록 수수료</a></li>
                     </ul></li>
               </ul></li>
         </ul>
			<ul id="headerCheck" class="header" style="text-align: center; width: 40%;">
				
			</ul>
		</nav>
   </header>
   
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
	var text = "";
	if(type=="user"){
		text += '<li><a href="${pageContext.request.contextPath}/user/UserGetInfo.me">마이페이지</a></li>'
		text += '<li><a href="${pageContext.request.contextPath}/shopping/cartList.sh">장바구니</a></li>'
		text += '<li><a href="${pageContext.request.contextPath}/user/UserLogout.me">로그아웃</a></li>'
	}else if(type=="owner"){
		text += '<li><a href="#">사장님페이지</a></li>'
		text += '<li><a href="${pageContext.request.contextPath}/user/UserLogout.me">로그아웃</a></li>'
	}else{
		text += '<li><a href="${pageContext.request.contextPath}/user/UserLogin.me">로그인</a></li>'
		text +=	'<li><a href="${pageContext.request.contextPath}/user/UserJoin.me">회원가입</a></li>'	
	}	
	$("#headerCheck").html(text);
})
function userx(){
	var type = '${param.type}'
	if(type=="owner"){
		return;
	}else{
		alert("사장님 회원만 이용이 가능합니다.");		
		$("a#userx").attr("href", "#");	
	}
}
</script>
</html>