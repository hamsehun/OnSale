<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' href='${pageContext.request.contextPath}/assets/css/main.css' />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">

<style>
	body {
		font-family: 'Nanum Gothic Coding', monospace;
	}
	
	#header.alt nav {
    	right: 0;
	}
	
	#header.alt a {
	    color: #000;
	}
	
	#header.alt {
		top: 0;
		background-color: #fff;
	}
	nav#nav {
		display: flex;
		justify-content: space-between;
	}
	ul.header li a {
		font-size: 12px;
	}

	ul.header-submenu li a {
		font-family: 'Nanum Gothic Coding', monospace;
	}
	
	#header nav > ul > li {
		margin-left: 0.6em;
	}
	
	header#header h1#logo {
	    vertical-align: -10%;
	    width: 50%;
	    display: inline;
	}
	span.logo {
		font-weight:bold;
		color: #6745ba;
  			text-shadow: 1px 0.5px #f4e022;
	}
</style>
</head>
<body>
	<header id="header" class="alt" style="box-shadow:2px 2px 3px 0 rgb(0 0 0 / 5%);">
		<h1 id="logo" style="left:25%;">
			<a href="index.html"><span><img src="${pageContext.request.contextPath}/images/logoNanum.png" width="95px"></span></a>
		</h1>
		<nav id="nav" style="width:34%">
			<ul class="header" style="text-align:center; width:25%;">
				<li><a href="#">로그인</a></li>
				<li><a href="#">회원가입</a></li>
				<li><a href="#">고객센터</a></li>
			</ul>
		</nav>
	</header>
</body>
</html>