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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
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
.star {
	width: 100px;
}

.cb {
	clear: both;
}

.lec-simple>div>div {
	display: inline-block;
}

.lec-simple {
	padding: 20px 0px 20px 0px;
}

.likelist {
	height: 2rem;
	border: 1px solid;
}

.subject {
	
}

.lec-date {
	height: 200px;
	border: 1px solid;
}

.lec-add {
	height: 200px;
	border: 1px solid;
}

.lec-about {
	padding: 30px 30px 30px 30px;
	border: 1px solid;
}

.tp {
	padding-left: 0px;
	padding-right: 0px;
}

.teacher-profile {
	border: 1px solid;
	height: 500px;
}

.image_outer_container {
	margin-top: 50px;
	margin-bottom: auto;
	border-radius: 50%;
	position: relative;
}

.image_inner_container {
	border-radius: 50%;
	padding: 5px;
	background: #833ab4;
	background: -webkit-linear-gradient(to bottom, #fcb045, #fd1d1d, #833ab4);
	background: linear-gradient(to bottom, #fcb045, #fd1d1d, #833ab4);
}

.image_inner_container img {
	height: 100px;
	width: 100px;
	border-radius: 50%;
	border: 5px solid white;
}

.image_outer_container .green_icon {
	background-color: #4cd137;
	position: absolute;
	right: 30px;
	bottom: 10px;
	height: 30px;
	width: 30px;
	border: 5px solid white;
	border-radius: 50%;
	z-index: 100;
}

.lec {
	border: 1px solid;
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
	color: rgba(0, 0, 0, 0.45);
	display: inline-block;
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
	!
	important;
}

.size {
	width: 100%;
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
	padding-left: 30px;
	padding-right: 30px;
	top: 80px;
	width: 79vh;
	left: 14vh;
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
							<p>
								서비스 설명 경력 및 자격사항 : <br> ＊AIDA+SSI+PADI<br> instructor<br>
								＊EFR (Emergency First Response)응급구조사<br> ＊SSI REACT
								RIGHT(FA.CPR.AED)<br> ＊CMAS NAUI PADI scuba diver<br>
								<br> 목표 가치 :<br> 안전 다이빙을 이해하고, 수중 적응을 통해, 초심자들이 물에 대한
								두려움 없이 쉽고 편안하게 프리다이빙을 즐길 수 있는 능력을 갖추게 된다. <br> <br> 사전
								자격 조건 <br> 14세 이상, 신체 정신적 건강 양호한 자 (자격증 사전 조건 없음) <br>
								<br> 교육 내용 지식 개발 내용 <br> 장비 : 기본 장비의 명칭과 용도버디시스템생리,
								물리학호흡법, 초과 호흡<br> 호흡 트레이닝 : 기초 호흡법/ 근육스트레칭/ 릴렉스 트레이닝<br>
								제한 수역 2 세션 <br> 공기 공간 압력 평형 <br> 입수법: Head First dive,
								Duck dive <br> 핀 사용 발차기수평잠영(Dynamic ) 수면무호흡 (Static)<br>
								개방 수역 1회 다이빙 <br> 공기 공간 압력 평형(Equalization)입수법: Head First
								dive, Duck dive <br> 핀 사용 발차기: 바이핀 킥 <br> 수직하강 (CWT) :
								수심 10m <br> 자유하강 (FIM) : 수심 10m<br>
							</p>
						</div>
						<div class="size" id="section2">
							<h1>가격정보</h1>
							<table></table>
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
							<p>
								가. 레슨 환불기준 원칙<br> 학원의 설립/운영 및 과외교습에 관한 법률 제 18조(교습비 등의 반환
								등)<br> - 학원설립, 운영자, 교습자 및 개인과외교습자는 학습자가 수강을 계속할 수 없는 경우 또는
								학원의 등록말소, 교습소 폐지 등으로 교습을 계속할 수 없는 경우에는 학습자로부터 받은<br> 교습비를
								반환하는 등 학습자를 보호하기 위하여 필요한 조치를 하여야 한다.<br> <br> 1. 레슨을
								제공할 수 없거나, 레슨 장소를 제공할 수 없게 된 날 : 이미 납부한 레슨비 등을 일한 계산한 금액 환불<br>
								<br> 2. 레슨기간이 1개월 이내의 경우<br> - 레슨 시작전 : 이미 납부한 레슨비 전액
								환불<br> - 총 레슨 시간의 1/3 경과전 : 이미 납부한 레슨비의 2/3에 해당액 환불<br>
								- 총 레슨 시간의 1/2 경과전 : 이미 납부한 레슨비용의 1/2에 해당액 환불<br> - 총 레슨시간의
								1/2 경과후 : 반환하지 않음<br> <br> 3.레슨 기간이 1개월을 초과하는 경우<br>
								- 레슨 시작전 : 이미 납부한 레슨비 전액 환불<br> - 레슨 시작후 : 반환사유가 발생한 당해 월의
								반환 대상 레슨비(레슨비 징수기간이 1개월 이내인 경우에 따라 산출된 수강료를 말한다)와 나머지 월의 레슨비 전액을
								합산한 금액 환불<br> <br> * 총 레슨 시간의 레슨비 징수기간 중의 총레슨시간을 말하며,
								반환 금액의 산정은 반환 사유가 발생한 날까지 경과 된 레슨시간을 기준으로 함<br>
							</p>
						</div>

						<div id="section6" class="comment">댓글들어갈부분</div>
					</div>

					<div class="col-4 tp">
						<!-- 강의 개요 , 구매버튼 , 찜-->
						<div class="container">
							<div class="likelist">
								<div class="float-right">찜</div>
								<div class="star mx-auto">★★★★★</div>
							</div>
							<div class="lec-about">

								<div class=" subject mx-auto align-middle">
									<h3>프리다이빙 (서울.수원.성남.인천 ) 도와 드립니다.</h3>
								</div>
								<hr>
								<div class="lec-simple">

									<div class="position-relative">
										<div class="col-6 float-left">▶준비물 제공(대여)포함</div>
									</div>
									<div class="position-relative">
										<div class="col-6 float-left">▶1회당 레슨시간 (분) : 480 분</div>
									</div>
									<div class="position-relative">
										<div class="col-6 float-left">▶레슨 횟수 : 1 회</div>
									</div>

									<div class="cb"></div>
								</div>
								<hr>

								<a href="#" class="btn btn-block btn-primary btn-default">구매하기</a>

							</div>
							<!-- 장소 -->
							<div class="lec-add"></div>
							<!-- 날짜 -->
							<div class="lec-date"></div>
							<!-- 선생프로필 -->
							<div class="teacher-profile">
								<div class="d-flex justify-content-center">
									<div class="image_outer_container">
										<div class="image_inner_container">
											<img src="./images/member/Guest.png">
										</div>
									</div>
								</div>
							</div>
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

				var offset;

				$('.navbar li a').click(function(event) {
					if (window.pageYOffset < sticky) {
						offset = 215;
					} else {
						offset = 150;
					}
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