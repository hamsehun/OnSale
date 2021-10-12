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
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
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
			}
			
			nav#nav {
				display: flex;
				justify-content: space-between;
			}
			
			
			ul.header li a {
				font-size: 12px;
			}
			
			#header nav > ul > li {
				margin-left: 0.6em;
			}
			
			#header nav > ul.header-submenu > li {
			    margin-left: 1.6em;
			}
			
			header#header h1#logo {
			    vertical-align: -30%;
			    width: 50%;
			    display: inline;
			}
			
			a.submenu {
				font-size:1em !important;
			}
			
		</style>
	</head>
	<body class="is-preload" style="padding: 0 25%;">
	
	<!-- Header -->
	<header>
			<jsp:include page="/app/fix/header.jsp"/>
	</header>
			
				<!-- Items -->
		<section class="wrapper align-center">
			<div class="inner">
			<div style="margin:100px 0 0 0;">
				<h2>Thank you for joining us!</h2>
				</div>
				<img src="images/welcome.png" alt="" style="width: 50px;" />
				<p>
					Warmest greeting from <strong>Moonlight at dawn.</strong>
					<br>
					As a member of Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					<br> 
					Morbi dui turpis, cursus eget orci amet aliquam congue semper. 
					<span class="demo-controls">appearance with a number of modifiers</span>
				</p>
				</div>
		</section>
		
		<section>
		쇼핑몰 바로가기 같은거 넣으면 좋을 듯.
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
			<script src="../../assets/js/jquery.min.js"></script>
			<script src="../../assets/js/jquery.dropotron.min.js"></script>
			<script src="../../assets/js/jquery.scrollex.min.js"></script>
			<script src="../../assets/js/browser.min.js"></script>
			<script src="../../assets/js/breakpoints.min.js"></script>
			<script src="../../assets/js/util.js"></script>
			<script src="../../assets/js/main.js"></script>


	</body>
</html>