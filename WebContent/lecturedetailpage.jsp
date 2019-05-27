<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Lingua</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Lingua project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<style>
.lec-simple{
	width : 100%;
	height : 25rem;
	border: 1px solid;
}
.lec-date{
	width : 100%;
	height : 15rem;
	border: 1px solid;
}
.tea-detail{
	width : 100%;
	height : 25rem;
	border: 1px solid;
}
.lec {
	border: 1px solid;
	position: relative;
}

.lec-img {
	border: 1px solid;
	position: relative;
	width: 100%;
	height: 0;
	overflow: hidden;
	padding-bottom: 56.26%;
}

nav>ul>li>a {
	font-size: 14px;
	font-weight: 600;
	color: rgba(0,0,0,0.45);
	display:inline-block;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

nav>ul>li {
	font-size: 13px;
	border: 1px solid;
	width: 12vh;
	height: 5vh;
	text-align: center;
	padding-top: 15px;
	border: 1px solid;
}

nav {
	padding-left: 0px;
	padding-right: 0px;
	background-color: white;
	!important;
}

.size {
	width: 100%;
	height: 400px;
	border: 1px solid;
}
/* Style the navbar */
#navbar {
	overflow: hidden;
}

/* Navbar links */
#navbar a {
	text-align: center;
	text-decoration: none;
}

/* Page content */
.content {
	padding: 16px;
}

/* The sticky class is added to the navbar with JS when it reaches its scroll position */
.sticky {
	position: fixed;
	padding-left:30px;
	padding-right:30px;
	top: 80px;
	z-index: 100;
}

/* Add some top padding to the page content to prevent sudden quick movement (as the navigation bar gets a new position at the top of the page (position:fixed and top:0) */
.sticky+.content {
	padding-top: 60px;
}
</style>

</head>
<body data-spy="scroll" data-target=".navbar">
	<div class="super_container">
		<!-- Header -->
		<div class="vb"></div>
		<header class="header">
			<!--Header Content-->
			<div class="header_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div
								class="header_content d-flex flex-row align-items-center justify-content-start">


								<a href="#">
									<div class="logo_text">HOBBIST</div>
								</a>
								<div class="rightdiv">
									<ul class="main_nav">
										<li><a href="courses.html">로그인</a></li>
										<li><a href="courses.html">회원가입</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
		</header>
		<!-- header -->
		<!-- 광고 -->
		<div class="top_bar d-block">
			<div id="carouselExampleInterval" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators mb-0">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active" data-interval="1000">
						<img src="./images/ad/red.png" class="img-ad d-block w-100"
							alt="...">
					</div>
					<div class="carousel-item" data-interval="1000">
						<img src="./images/ad/orange.png" class="img-ad d-block w-100"
							alt="...">
					</div>
					<div class="carousel-item" data-interval="1000">
						<img src="./images/ad/yellow.png" class="img-ad d-block w-100"
							alt="...">
					</div>
					<div class="carousel-item" data-interval="1000">
						<img src="./images/ad/green.png" class="img-ad d-block w-100"
							alt="...">
					</div>
					<div class="carousel-item" data-interval="1000">
						<img src="./images/ad/skyblue.png" class="img-ad d-block w-100"
							alt="...">
					</div>
					<div class="carousel-item" data-interval="1000">
						<img src="./images/ad/blue.png" class="img-ad d-block w-100"
							alt="...">
					</div>
					<div class="carousel-item" data-interval="1000">
						<img src="./images/ad/pupple.png" class="img-ad d-block w-100"
							alt="...">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleInterval"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleInterval"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>

		<div>
			<hr>
		</div>

		<!-- 강의상세 본문 -->
		<div class="container">
			<div class="lec">
				<div class="row">
					<div class="col-8">
						<div class="lec-img">
							<img src="" />
						</div>
						<!-- <div id="navbar">
							<a href="#home">Home</a> 
							<a href="#news">News</a> 
							<a href="#contact">Contact</a>
						</div> -->

						<!-- The scrollable area -->
						<!-- The navbar - The <a> elements are used to jump to a section in the scrollable area -->
						<nav id="navbar" class="stc navbar navbar-expand-sm navbar-dark">
							<ul class="navbar-nav mx-auto">
								<li><a href="#section1">서비스설명</a></li>
								<li><a href="#section2">가격정보</a></li>
								<li><a href="#section3">전문가이력</a></li>
								<li><a href="#section4">커리큘럼</a></li>
								<li><a href="#section5">취소및환불규정</a></li>
								<li><a href="#section5">댓글</a></li>
						</nav>

						<!-- Section 1 -->
						<div class="size" id="section1">
							<h1>서비스설명</h1>
							<p>Try to scroll this page and look at the navigation bar
								while scrolling!</p>
						</div>
						<div class="size" id="section2">
							<h1>가격정보</h1>
							<p>Try to scroll this page and look at the navigation bar
								while scrolling!</p>
						</div>
						<div class="size" id="section3">
							<h1>전문가이력</h1>
							<p>Try to scroll this page and look at the navigation bar
								while scrolling!</p>
						</div>
						<div class="size" id="section4">
							<h1>커리큘럼</h1>
							<p>Try to scroll this page and look at the navigation bar
								while scrolling!</p>
						</div>
						<div class="size" id="section5">
							<h1>취소및환불규정</h1>
							<p>Try to scroll this page and look at the navigation bar
								while scrolling!</p>
						</div>

					<div id="section6" class="comment">댓글들어갈부분</div>
					</div>

					<div class="col-4">
						<div class="lec-simple">
							강의 간략 외 구매버튼
						</div>
						<div class="lec-date"><!-- 강의가능날짜 -->
							날짜
						</div>
						<div class="lec-add">
							장소
						</div>
						<div class="tea-detail"><!-- 강사상세내용 -->
							강사상세내용
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->

		<footer class="footer">
			<div class="footer_body">
				<div class="container">
					<div class="row">

						<!-- Newsletter -->
						<div class="col-lg-3 footer_col">
							<div
								class="newsletter_container d-flex flex-column align-items-start justify-content-end">
								<div class="footer_logo mb-auto">
									<a href="#">HOBBIST</a>
								</div>

							</div>
						</div>

						<!-- About -->
						<div class="col-lg-2 offset-lg-3 footer_col">
							<div>
								<div class="footer_title">About Us</div>
								<ul class="footer_list">
									<li><a href="#">Courses</a></li>
									<li><a href="#">Team</a></li>
									<li><a href="#">Brand Guidelines</a></li>
									<li><a href="#">Jobs</a></li>
									<li><a href="#">Advertise with us</a></li>
									<li><a href="#">Press</a></li>
									<li><a href="#">Contact us</a></li>
								</ul>
							</div>
						</div>

						<!-- Help & Support -->
						<div class="col-lg-2 footer_col">
							<div class="footer_title">Help & Support</div>
							<ul class="footer_list">
								<li><a href="#">Discussions</a></li>
								<li><a href="#">Troubleshooting</a></li>
								<li><a href="#">Duolingo FAQs</a></li>
								<li><a href="#">Schools FAQs</a></li>
								<li><a href="#">Duolingo English Test FAQs</a></li>
								<li><a href="#">Status</a></li>
							</ul>
						</div>

						<!-- Privacy -->
						<div class="col-lg-2 footer_col clearfix">
							<div>
								<div class="footer_title">Privacy & Terms</div>
								<ul class="footer_list">
									<li><a href="#">Community Guidelines</a></li>
									<li><a href="#">Terms</a></li>
									<li><a href="#">Brand Guidelines</a></li>
									<li><a href="#">Privacy</a></li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col">
							<div
								class="copyright_content d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">
								<div class="cr">
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									Copyright &copy;
									<script>
										document
												.write(new Date().getFullYear());
									</script>
									All rights reserved | Made with <i class="fa fa-heart-o"
										aria-hidden="true"></i> by <a href="https://colorlib.com"
										target="_blank">Colorlib</a> &amp; distributed by <a
										href="https://themewagon.com" target="_blank">ThemeWagon</a>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</div>
								<div class="cr_right ml-md-auto">
									<div class="footer_phone">
										<span class="cr_title">하비스트 대표:</span>박미래
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				//When the user scrolls the page, execute myFunction 
				window.onscroll = function() {
					myFunction()
				};

				// Get the navbar
				var navbar = document.getElementById("navbar");

				// Get the offset position of the navbar
				var sticky = navbar.offsetTop;

				// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
				function myFunction() {
					if (window.pageYOffset >= sticky) {
						navbar.classList.add("sticky")
					} else {
						navbar.classList.remove("sticky");
					}
				}
				
				var offset = 150;

				$('.navbar li a').click(function(event) {
				    event.preventDefault();
				    $($(this).attr('href'))[0].scrollIntoView();
				    scrollBy(0, -offset);
				});
			</script>
		</footer>


		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="styles/bootstrap4/popper.js"></script>
		<script src="styles/bootstrap4/bootstrap.min.js"></script>
		<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
		<script src="plugins/easing/easing.js"></script>
		<script src="js/custom.js"></script>
</body>
</html>