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
		    	right: 0 !important;
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
				justify-content: flex-end;
			}
			
			
			ul.header li a {
				font-size: 12px;
			}
			
			#header nav > ul > li {
				margin-left: 0.6em;
			}
			
			header#header h1#logo {
			    vertical-align: -30%;
			    width: 50%;
			    display: inline;
			}
			
		</style>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header" class="alt">
				<h1 id="logo">
					<a href="index.html"><span><img src="${pageContext.request.contextPath}/images/logo_header.png" width="95px"></span></a>
				</h1>
				<nav id="nav" style="width:50%">
					<ul class="header" style="text-align:center">
						<li><a href="#">로그인</a></li>
						<li><a href="#">회원가입</a></li>
						<li><a href="#">고객센터</a></li>
<!-- 						<li>
							<a href="#" class="submenu fa-angle-down">Page Layouts</a>
							<ul>
								<li><a href="left-sidebar.html">Left Sidebar</a></li>
								<li><a href="right-sidebar.html">Right Sidebar</a></li>
								<li><a href="no-sidebar.html">No Sidebar</a></li>
								<li>
									<a href="#">Submenu</a>
									<ul>
										<li><a href="#">Option One</a></li>
										<li><a href="#">Option Two</a></li>
										<li><a href="#">Option Three</a></li>
										<li><a href="#">Option Four</a></li>
									</ul>
								</li>
							</ul>
						</li> 
-->
					</ul>
<!-- 					<ul class="header" style="text-align:center">
						<li><a href="elements.html">Elements</a></li>
					</ul> -->
				</nav>
			</header>

		<!-- Banner -->
			<section id="banner">
				<article>
					<img src="images/slide01.jpg" alt="" />
					<div class="inner">
						<h2><a href="#">Magna tempus. Sed feugiat.</a></h2>
					</div>
				</article>
				<article>
					<img src="images/slide02.jpg" alt="" />
					<div class="inner">
						<h2><a href="#">Aliquam veroeros nullam.</a></h2>
					</div>
				</article>
				<article>
					<img src="images/slide03.jpg"  alt="" />
					<div class="inner">
						<h2><a href="#">Consequat dolore adipiscing.</a></h2>
					</div>
				</article>
			</section>

		<!-- One -->
			<section id="one" class="wrapper major-pad">
				<div class="inner">
					<section class="spotlight">
						<div class="content">
							<h2>Libero bibendum nullam vitae magna sed veroeros</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id interdum magna, ultricies aliquet curabitur sed metus pellentesque, ornare sapien quis.</p>
						</div>
						<span class="image"><img src="images/pic07.jpg" alt="" /></span>
					</section>
				</div>
			</section>

		<!-- Two -->
			<section id="two" class="wrapper content-pad">
				<div class="inner">
					<div class="features">
						<section class="content">
							<span class="icon-wrapper major"><span class="icon solid fa-pencil-alt"></span></span>
							<h3>Praesent sed donec</h3>
							<p>Proin consequat luctus elit, nec blandit tellus ut volutpat magna. mi euismod elementum lectus et consequat etiam lorem etiam sed tempus. Feugiat veroeros lorem ipsum dolor.</p>
						</section>
						<section class="content">
							<span class="icon-wrapper major"><span class="icon solid fa-paper-plane"></span></span>
							<h3>Commodo mollis</h3>
							<p>Pellentesque, ornare sapien quis, tristique ante. Proin nec facilisis odio. Integer elementum nunc nec leo interdum, non tristique eros laoreet. Integer vitae erat suscipit commodo.</p>
						</section>
						<section class="content">
							<span class="icon-wrapper major"><span class="icon solid fa-cloud"></span></span>
							<h3>Magnis curabitur</h3>
							<p>Duis vulputate sit amet metus quis facilisis. Sed dapibus neque erat fringilla tincidunt. Nullam sapien et sapien, iaculis ac varius ultrices nec metus. Aenean ultricies magna.</p>
						</section>
					</div>
				</div>
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
								<p>Aenean ultricies magna non sapien rhoncus, ac ullamcorper lorem convallis. Quisque at venenatis nisi, amet finibus mauris. Sed sodales ultricies eros, sit amet sodales sapien.</p>
								<ul class="actions">
									<li><a href="#" class="button">More</a></li>
								</ul>
							</div>
						</section>
						<section class="post">
							<span class="image"><img src="images/pic02.jpg" alt="" /></span>
							<div class="content">
								<h3>Duis nisl euismod</h3>
								<p>Ultrices nec metus. Aenean ultricies magna et sapien rhoncus ac ullamcorper lorem convallis. Quisque at venenatis nisi amet finibus mauris. Sed sodales ultricies magna etiam.</p>
								<ul class="actions">
									<li><a href="#" class="button">More</a></li>
								</ul>
							</div>
						</section>
						<section class="post">
							<span class="image"><img src="images/pic03.jpg" alt="" /></span>
							<div class="content">
								<h3>Elementum auctor</h3>
								<p>Quis interdum. Lorem quis lacus justo. Sed libero condimentum vehicula sem vel, mattis amet mauris. Nullam lacinia sit amet felis vel vestibulum. Morbi aliquam aenean.</p>
								<ul class="actions">
									<li><a href="#" class="button">More</a></li>
								</ul>
							</div>
						</section>
						<section class="post">
							<span class="image"><img src="images/pic04.jpg" alt="" /></span>
							<div class="content">
								<h3>Urna vel lacinia</h3>
								<p>Integer vel tincidunt lacus. Nulla augue nunc, eleifend quis leo ac, maximus interdum tellus. Etiam at vestibulum felis, id efficitur risus. Praesent ac nulla ex. Duis elementum.</p>
								<ul class="actions">
									<li><a href="#" class="button">More</a></li>
								</ul>
							</div>
						</section>
						<section class="post">
							<span class="image"><img src="images/pic05.jpg" alt="" /></span>
							<div class="content">
								<h3>Neque et suscipit</h3>
								<p>Libero condimentum, vehicula sem vel, mattis mauris. Nullam lacinia sit amet felis vel vestibulum. Morbi in aliquam est. Aenean dapibus porttitor nulla ultrices venenatis.</p>
								<ul class="actions">
									<li><a href="#" class="button">More</a></li>
								</ul>
							</div>
						</section>
						<section class="post">
							<span class="image"><img src="images/pic06.jpg" alt="" /></span>
							<div class="content">
								<h3>Vestibulum placerat</h3>
								<p>Tristique tellus et ullamcorper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent mauris risus, pellentesque eu leo non, tincidunt.</p>
								<ul class="actions">
									<li><a href="#" class="button">More</a></li>
								</ul>
							</div>
						</section>
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
			<footer id="footer">
				<div class="inner">
					<p class="copyright">&copy; Untitled Corp. All rights reserved. Lorem ipsum dolor sit amet feugiat tempus aliquam.</p>
					<ul class="menu">
						<li><a href="#">Terms<span> of Use</span></a></li>
						<li><a href="#">Privacy<span> Policy</span></a></li>
						<li><a href="#">Legal<span> Information</span></a></li>
					</ul>
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