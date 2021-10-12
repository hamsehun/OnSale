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
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
		<style>
				body, h2{
				font-family: 'Nanum Gothic Coding', monospace;
				}
		</style>
	</head>
	<body class="is-preload" style="padding: 0 25% !important;">

	
	<!-- Header -->
	<header>
			<jsp:include page="/app/fix/header.jsp"/>
	</header>
			

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">

					<header class="major">
						<h2>About Us</h2>
						<p>간략한 회사 소개</p>
					</header>

					<!-- Content -->
						<div class="content">
							<a href="#" class="image fit"><img src="../../images/pic07.jpg" alt="" /></a>
							<h3>Our Mission</h3>
							<p>지역 경제를 블라블라</p>
							<p>(설명1)Aliquam massa urna, imperdiet sit amet mi non, bibendum euismod est. Curabitur mi justo, tincidunt vel eros ullamcorper, porta cursus justo. Cras vel neque eros. Vestibulum diam quam, mollis at magna consectetur non, malesuada quis augue. Morbi tincidunt pretium interdum est. Curabitur mi justo, tincidunt vel eros ullamcorper, porta cursus justo. Cras vel neque eros. Vestibulum diam.</p>
							<p>(셜명2)Vestibulum diam quam, mollis at consectetur non, malesuada quis augue. Morbi tincidunt pretium interdum. Morbi mattis elementum orci, nec dictum porta cursus justo. Quisque ultricies lorem in ligula condimentum, et egestas turpis sagittis. Cras ac nunc urna. Nullam eget lobortis purus. Phasellus vitae tortor non est placerat tristique.</p>
							<h3>프로젝트 기획 배경(우리가 이렇게 좋은 취지로 홈페이지를 만든거다 설명)</h3>
							<p>In vestibulum massa quis arcu lobortis tempus. Nam pretium arcu in odio vulputate luctus. Suspendisse euismod lorem eget lacinia fringilla. Sed sed felis justo. Nunc sodales elit in laoreet aliquam. Nam gravida, nisl sit amet iaculis porttitor, risus nisi rutrum metus.</p>
							<ul>
								<li>Faucibus orci lobortis ac adipiscing integer.</li>
								<li>Col accumsan arcu mi aliquet placerat.</li>
								<li>Lobortis vestibulum ut magna tempor massa nascetur.</li>
								<li>Blandit massa non blandit tempor interdum.</li>
								<li>Lacinia mattis arcu nascetur lobortis.</li>
							</ul>
						</div>

				</div>
			</section>

		<!-- Contact -->
			<section id="contact" class="wrapper split">
				<div class="inner">
					<section>
						<h2>Send us a message</h2>
						<form method="post" action="#">
							<div class="row gtr-uniform">
								<div class="col-6 col-12-large col-6-medium col-12-xsmall">
									<label for="name">Name</label>
									<input type="text" name="name" id="name" />
								</div>
								<div class="col-6 col-12-large col-6-medium col-12-xsmall">
									<label for="email">Email</label>
									<input type="email" name="email" id="email" />
								</div>
								<div class="col-12">
									<label for="message">Message</label>
									<textarea name="message" id="message" rows="5"></textarea>
								</div>
								<div class="col-12">
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="primary" /></li>
										<li><input type="reset" value="Reset" /></li>
									</ul>
								</div>
							</div>
						</form>
					</section>
					<section>
						<h2>Other ways to reach us</h2>
						<ul class="bulleted-icons">
							<li>
								<span class="icon-wrapper"><span class="icon solid fa-envelope"></span></span>
								<h3>Email</h3>
								<p><a href="#">information@untitled.tld</a></p>
							</li>
							<li>
								<span class="icon-wrapper"><span class="icon brands fa-twitter"></span></span>
								<h3>Twitter</h3>
								<p><a href="#">twitter.com/untitled-tld</a></p>
							</li>
							<li>
								<span class="icon-wrapper"><span class="icon solid fa-phone"></span></span>
								<h3>Phone</h3>
								<p>(800) 555-0000</p>
							</li>
							<li>
								<span class="icon-wrapper"><span class="icon brands fa-facebook-f"></span></span>
								<h3>Facebook</h3>
								<p><a href="#">facebook.com/untitled-tld</a></p>
							</li>
							<li>
								<span class="icon-wrapper"><span class="icon solid fa-home"></span></span>
								<h3>Mailing Address</h3>
								<p>1234 Fictional Avenue<br />
								Nashville, TN 00000<br />
								United States
								</p>
							</li>
							<li>
								<span class="icon-wrapper"><span class="icon brands fa-linkedin-in"></span></span>
								<h3>LinkedIn</h3>
								<p><a href="#">linkedin.com/untitled-tld</a></p>
							</li>
						</ul>
					</section>
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
</html>