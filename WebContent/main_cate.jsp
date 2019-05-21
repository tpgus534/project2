<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Lingua</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Lingua project">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
.courses {
	padding-top: 20px;
	!
	important;
}
/* Fixed sidenav, full height */
.sidenav {
	overflow-x: hidden;
	padding-top: 20px;
}

/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
	padding: 6px 8px 6px 16px;
	border: none;
	background: none;
	width: 100%;
	text-align: left;
	cursor: pointer;
	outline: none;
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

/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
	color: #f1f1f1;
}

/* Add an active class to the active dropdown button */
.active {
	color: black;
	font-weight: bold;
}

/* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
.dropdown-container {
	display: none;
	padding-left: 2vh;
}

/* Optional: Style the caret down icon */
.fa-caret-down {
	float: right;
	padding-right: 8px;
}

/* Some media queries for responsiveness */
@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}
</style>
</head>
<body>
	<div class="super_container">
		<!-- Header -->
		<div class="vb"></div>
		<header class="header">


			<!-- Header Content -->
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


		<!-- Home -->



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
		<!-- 본문시작 -->
		<div class="container">
			<div class="row">
				<div class="col-2 categorylist">
					<h3>강의유형</h3>
					<hr>
					<div class="sidenav">
						<button class="dropdown-btn">
							카테고리 <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="#">디자인</a> <a href="#">외국어</a> <a href="#">컴퓨터</a> <a
								href="#">마케팅</a> <a href="#">커뮤니케이션</a> <a href="#">문서,취업</a> <a
								href="#">영상,사진</a> <a href="#">스포츠</a> <a href="#">음악,악기</a> <a
								href="#">취미</a> <a href="#">기타</a>
						</div>
						<button class="dropdown-btn">
							강의종류 <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="#">원데이</a> <a href="#">일반레슨</a>
						</div>
						<button class="dropdown-btn">
							강사성별 <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="#">남자</a> <a href="#">여자</a>
						</div>
						<button class="dropdown-btn">
							레슨모집인원 <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="#">개인레슨</a> <a href="#">소규모(2~4)</a> <a href="#">대규모(5~)</a>
						</div>
						<button class="dropdown-btn">
							가격 <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="#">~5만원</a> <a href="#">5~10만원</a> <a href="#">10만원~</a>
						</div>
					</div>
				</div>
				<div class="col-10">

					<div class="rf">
						<div class="form-group">
							<select class="form-control" id="sel1">
								<option>최신순</option>
								<option>별점순</option>
								<option>인원순</option>
							</select>
						</div>
					</div>
					<div class="lecturelist">

						<!-- Courses -->

						<div class="courses">
							<div class="container">
								<div class="row courses_row">

									<!-- Course -->
									<div class="col-lg-4 course_col">
										<div class="course">
											<div class="course_image">
												<img src="images/course_4.jpg" alt="">
											</div>
											<div class="course_body">
												<div class="course_title">
													<a href="course.html">Vocabulary</a>
												</div>
												<div class="course_info">
													<ul>
														<li><a href="instructors.html">Sarah Parker</a></li>
														<li><a href="#">English</a></li>
													</ul>
												</div>
												<div class="course_text">
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Fusce enim nulla.</p>
												</div>
											</div>
											<div
												class="course_footer d-flex flex-row align-items-center justify-content-start">
												<div class="course_students">
													<i class="fa fa-user" aria-hidden="true"></i><span>10</span>
												</div>
												<div class="course_rating ml-auto">
													<i class="fa fa-star" aria-hidden="true"></i><span>4,5</span>
												</div>
												<div class="course_mark course_free trans_200">
													<a href="#">Free</a>
												</div>
											</div>
										</div>
									</div>

									<!-- Course -->
									<div class="col-lg-4 course_col">
										<div class="course">
											<div class="course_image">
												<img src="images/course_5.jpg" alt="">
											</div>
											<div class="course_body">
												<div class="course_title">
													<a href="course.html">Vocabulary</a>
												</div>
												<div class="course_info">
													<ul>
														<li><a href="instructors.html">Sarah Parker</a></li>
														<li><a href="#">Spanish</a></li>
													</ul>
												</div>
												<div class="course_text">
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Fusce enim nulla.</p>
												</div>
											</div>
											<div
												class="course_footer d-flex flex-row align-items-center justify-content-start">
												<div class="course_students">
													<i class="fa fa-user" aria-hidden="true"></i><span>10</span>
												</div>
												<div class="course_rating ml-auto">
													<i class="fa fa-star" aria-hidden="true"></i><span>4,5</span>
												</div>
												<div class="course_mark course_free trans_200">
													<a href="#">Free</a>
												</div>
											</div>
										</div>
									</div>

									<!-- Course -->
									<div class="col-lg-4 course_col">
										<div class="course">
											<div class="course_image">
												<img src="images/course_6.jpg" alt="">
											</div>
											<div class="course_body">
												<div class="course_title">
													<a href="course.html">Vocabulary</a>
												</div>
												<div class="course_info">
													<ul>
														<li><a href="instructors.html">Sarah Parker</a></li>
														<li><a href="#">English</a></li>
													</ul>
												</div>
												<div class="course_text">
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Fusce enim nulla.</p>
												</div>
											</div>
											<div
												class="course_footer d-flex flex-row align-items-center justify-content-start">
												<div class="course_students">
													<i class="fa fa-user" aria-hidden="true"></i><span>10</span>
												</div>
												<div class="course_rating ml-auto">
													<i class="fa fa-star" aria-hidden="true"></i><span>4,5</span>
												</div>
												<div class="course_mark trans_200">
													<a href="#">$45</a>
												</div>
											</div>
										</div>
									</div>

									<!-- Course -->
									<div class="col-lg-4 course_col">
										<div class="course">
											<div class="course_image">
												<img src="images/course_7.jpg" alt="">
											</div>
											<div class="course_body">
												<div class="course_title">
													<a href="course.html">Vocabulary</a>
												</div>
												<div class="course_info">
													<ul>
														<li><a href="instructors.html">Sarah Parker</a></li>
														<li><a href="#">English</a></li>
													</ul>
												</div>
												<div class="course_text">
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Fusce enim nulla.</p>
												</div>
											</div>
											<div
												class="course_footer d-flex flex-row align-items-center justify-content-start">
												<div class="course_students">
													<i class="fa fa-user" aria-hidden="true"></i><span>10</span>
												</div>
												<div class="course_rating ml-auto">
													<i class="fa fa-star" aria-hidden="true"></i><span>4,5</span>
												</div>
												<div class="course_mark course_free trans_200">
													<a href="#">Free</a>
												</div>
											</div>
										</div>
									</div>

									<!-- Course -->
									<div class="col-lg-4 course_col">
										<div class="course">
											<div class="course_image">
												<img src="images/course_8.jpg" alt="">
											</div>
											<div class="course_body">
												<div class="course_title">
													<a href="course.html">Vocabulary</a>
												</div>
												<div class="course_info">
													<ul>
														<li><a href="instructors.html">Sarah Parker</a></li>
														<li><a href="#">Spanish</a></li>
													</ul>
												</div>
												<div class="course_text">
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Fusce enim nulla.</p>
												</div>
											</div>
											<div
												class="course_footer d-flex flex-row align-items-center justify-content-start">
												<div class="course_students">
													<i class="fa fa-user" aria-hidden="true"></i><span>10</span>
												</div>
												<div class="course_rating ml-auto">
													<i class="fa fa-star" aria-hidden="true"></i><span>4,5</span>
												</div>
												<div class="course_mark course_free trans_200">
													<a href="#">Free</a>
												</div>
											</div>
										</div>
									</div>

									<!-- Course -->
									<div class="col-lg-4 course_col">
										<div class="course">
											<div class="course_image">
												<img src="images/course_9.jpg" alt="">
											</div>
											<div class="course_body">
												<div class="course_title">
													<a href="course.html">Vocabulary</a>
												</div>
												<div class="course_info">
													<ul>
														<li><a href="instructors.html">Sarah Parker</a></li>
														<li><a href="#">English</a></li>
													</ul>
												</div>
												<div class="course_text">
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Fusce enim nulla.</p>
												</div>
											</div>
											<div
												class="course_footer d-flex flex-row align-items-center justify-content-start">
												<div class="course_students">
													<i class="fa fa-user" aria-hidden="true"></i><span>10</span>
												</div>
												<div class="course_rating ml-auto">
													<i class="fa fa-star" aria-hidden="true"></i><span>4,5</span>
												</div>
												<div class="course_mark trans_200">
													<a href="#">$45</a>
												</div>
											</div>
										</div>
									</div>

									<!-- Course -->
									<div class="col-lg-4 course_col">
										<div class="course">
											<div class="course_image">
												<img src="images/course_10.jpg" alt="">
											</div>
											<div class="course_body">
												<div class="course_title">
													<a href="course.html">Vocabulary</a>
												</div>
												<div class="course_info">
													<ul>
														<li><a href="instructors.html">Sarah Parker</a></li>
														<li><a href="#">English</a></li>
													</ul>
												</div>
												<div class="course_text">
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Fusce enim nulla.</p>
												</div>
											</div>
											<div
												class="course_footer d-flex flex-row align-items-center justify-content-start">
												<div class="course_students">
													<i class="fa fa-user" aria-hidden="true"></i><span>10</span>
												</div>
												<div class="course_rating ml-auto">
													<i class="fa fa-star" aria-hidden="true"></i><span>4,5</span>
												</div>
												<div class="course_mark course_free trans_200">
													<a href="#">Free</a>
												</div>
											</div>
										</div>
									</div>

									<!-- Course -->
									<div class="col-lg-4 course_col">
										<div class="course">
											<div class="course_image">
												<img src="images/course_11.jpg" alt="">
											</div>
											<div class="course_body">
												<div class="course_title">
													<a href="course.html">Vocabulary</a>
												</div>
												<div class="course_info">
													<ul>
														<li><a href="instructors.html">Sarah Parker</a></li>
														<li><a href="#">Spanish</a></li>
													</ul>
												</div>
												<div class="course_text">
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Fusce enim nulla.</p>
												</div>
											</div>
											<div
												class="course_footer d-flex flex-row align-items-center justify-content-start">
												<div class="course_students">
													<i class="fa fa-user" aria-hidden="true"></i><span>10</span>
												</div>
												<div class="course_rating ml-auto">
													<i class="fa fa-star" aria-hidden="true"></i><span>4,5</span>
												</div>
												<div class="course_mark course_free trans_200">
													<a href="#">Free</a>
												</div>
											</div>
										</div>
									</div>

									<!-- Course -->
									<div class="col-lg-4 course_col">
										<div class="course">
											<div class="course_image">
												<img src="images/course_12.jpg" alt="">
											</div>
											<div class="course_body">
												<div class="course_title">
													<a href="course.html">Vocabulary</a>
												</div>
												<div class="course_info">
													<ul>
														<li><a href="instructors.html">Sarah Parker</a></li>
														<li><a href="#">English</a></li>
													</ul>
												</div>
												<div class="course_text">
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Fusce enim nulla.</p>
												</div>
											</div>
											<div
												class="course_footer d-flex flex-row align-items-center justify-content-start">
												<div class="course_students">
													<i class="fa fa-user" aria-hidden="true"></i><span>10</span>
												</div>
												<div class="course_rating ml-auto">
													<i class="fa fa-star" aria-hidden="true"></i><span>4,5</span>
												</div>
												<div class="course_mark trans_200">
													<a href="#">$45</a>
												</div>
											</div>
										</div>
									</div>

								</div>

								<div class="row">
									<div class="col">
										<div class="load_more_button">
											<a href="#">load more</a>
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
		</footer>

		<script>
			/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
			var dropdown = document.getElementsByClassName("dropdown-btn");
			var i;

			for (i = 0; i < dropdown.length; i++) {
				dropdown[i].addEventListener("click", function() {
					this.classList.toggle("active");
					var dropdownContent = this.nextElementSibling;
					if (dropdownContent.style.display === "block") {
						dropdownContent.style.display = "none";
					} else {
						dropdownContent.style.display = "block";
					}
				});
			}
		</script>
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="styles/bootstrap4/popper.js"></script>
		<script src="styles/bootstrap4/bootstrap.min.js"></script>
		<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
		<script src="plugins/easing/easing.js"></script>
		<script src="js/custom.js"></script>
</body>
</html>