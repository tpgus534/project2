<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="header.jsp" %>
 <c:set var = "loginInfo" value="${session.loginInfo}"></c:set>
<c:set var="lesson" value="${requestScope.lesson}"></c:set>
<c:set var="lessonDetail" value="${requestScope.lessonDetail}"></c:set>
<c:set var="likeList" value="${requestScope.likeList}"></c:set>
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
							<img src="./images/lecmain.jpg" />
						</div>

						<div class="star mx-auto">★★★★★</div>

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
						<div class="lec-content1">
							<div class="size" id="section1">
								<div class="big-font pb-3">서비스설명</div>
								<div class="small-font">
									${lessonDetail.les_description}
								</div>
							</div>
							<div class="size" id="section2">
								<div class="big-font pb-3">가격정보</div>
								${lessonDetail.price_info}
								<table></table>
							</div>
							<div class="size" id="section3">
								<div class="big-font pb-3">전문가이력</div>
								<div>전문가 이력 어떻게 하지??</div>
							</div>
							<div class="size" id="section4">
								<div class="big-font pb-3">커리큘럼</div>
								<div>${lessonDetail.curri_info}</div>
							</div>
							<div class="size" id="section5">
								<div class="big-font pb-3">취소및환불규정</div>
								<div>
									가. 레슨 환불기준 원칙<br> 학원의 설립/운영 및 과외교습에 관한 법률 제 18조(교습비 등의 반환
									등)<br> - 학원설립, 운영자, 교습자 및 개인과외교습자는 학습자가 수강을 계속할 수 없는 경우 또는
									학원의 등록말소, 교습소 폐지 등으로 교습을 계속할 수 없는 경우에는 학습자로부터 받은<br> 교습비를
									반환하는 등 학습자를 보호하기 위하여 필요한 조치를 하여야 한다.<br> <br> 1. 레슨을
									제공할 수 없거나, 레슨 장소를 제공할 수 없게 된 날 : 이미 납부한 레슨비 등을 일한 계산한 금액 환불<br>
									<br> 2. 레슨기간이 1개월 이내의 경우<br> - 레슨 시작전 : 이미 납부한 레슨비 전액
									환불<br> - 총 레슨 시간의 1/3 경과전 : 이미 납부한 레슨비의 2/3에 해당액 환불<br>
									- 총 레슨 시간의 1/2 경과전 : 이미 납부한 레슨비용의 1/2에 해당액 환불<br> - 총
									레슨시간의 1/2 경과후 : 반환하지 않음<br> <br> 3.레슨 기간이 1개월을 초과하는
									경우<br> - 레슨 시작전 : 이미 납부한 레슨비 전액 환불<br> - 레슨 시작후 :
									반환사유가 발생한 당해 월의 반환 대상 레슨비(레슨비 징수기간이 1개월 이내인 경우에 따라 산출된 수강료를
									말한다)와 나머지 월의 레슨비 전액을 합산한 금액 환불<br> <br> * 총 레슨 시간의
									레슨비 징수기간 중의 총레슨시간을 말하며, 반환 금액의 산정은 반환 사유가 발생한 날까지 경과 된 레슨시간을
									기준으로 함<br>
								</div>
							</div>

							<div id="section6" class="comment">댓글들어갈부분</div>
						</div>
					</div>
					<div class="col-4 tp">
						<!-- 강의 개요 , 구매버튼 , 찜-->
						<div class="container">
							<div class="lec-content2">
								<div class="lec-about">
									<div class="likelist">
										<div class="">
										<div class="float-right d-inline-block"></div>
											<div class="test test_button d-inline-block">
												<a id="li" href="#" class="button button_light"> <span
													class="heart">&hearts;</span> <span class="text_like">Like x<span id="likeList1">${likeList}</span></span>
													<span class="text_liked">Liked x<span id="likeList2">${likeList}</span></span>
												</a>
											</div>
											
										</div>
										
									</div>
									<div id="ld_title" class="cb middle-font mx-auto align-middle">
										${lesson.les_title}
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




									<a href="#" class="btn btn-block btn-primary btn-default"
										style="background-color: #2e21df">구매하기(160,000원)</a>

								</div>
								<!-- 장소 -->
								<div class="lec-add">
									<div class="big-font">강의 장소</div>
									<div class="padd">
										<ul>
											<li>경기도 성남시</li>
											<li>경기도 성남시</li>
											<li>경기도 성남시</li>
										</ul>
									</div>
								</div>
								<!-- 날짜 -->
								<div class="lec-date">

									<button class="tablink" onclick="openPage('Home', this)"
										id="defaultOpen">월</button>
									<button class="tablink" onclick="openPage('News', this)">화</button>
									<button class="tablink" onclick="openPage('Contact', this)">수</button>
									<button class="tablink" onclick="openPage('About', this)">목</button>
									<button class="tablink" onclick="openPage('About', this)">금</button>
									<button class="tablink" onclick="openPage('About', this)">토</button>
									<button class="tablink" onclick="openPage('About', this)">일</button>


									<div id="Home" class="tabcontent">
										<h3>Home</h3>
										<p>Home is where the heart is..</p>
									</div>

									<div id="News" class="tabcontent">
										<h3>News</h3>
										<p>Some news this fine day!</p>
									</div>

									<div id="Contact" class="tabcontent">
										<h3>Contact</h3>
										<p>Get in touch, or swing by for a cup of coffee.</p>
									</div>

									<div id="About" class="tabcontent">
										<h3>About</h3>
										<p>Who we are and what we do.</p>
									</div>
								</div>
								<!-- 선생프로필 -->
								<div class="teacher-profile container">
									<div class="d-flex justify-content-center pb-3">
										<div class="image_outer_container">
											<div class="image_inner_container">
												<img src="./images/member/Guest.png">
											</div>
										</div>
									</div>

									<!-- 여기까지사진 -->
									<div class="big-font text-center  pb-3">강사 이름</div>

									<div>
										<a href="#" class="btn btn-block btn-primary btn-default"
											style="background-color: #2e21df">전문가에게 문의하기</a>
									</div>
									<div class="small-font">※너무 늦은 밤에는 연락이 되지 않을 수 있습니다.</div>
									<hr>

									<div class="text-center">강의횟수 만족도</div>
									<hr>
									<div>
										강사 소개<br> 안녕하세요 1타강사 이세현입니다.<br> 1타강사는 무슨 ui 뒤져랏!
									</div>
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

			function openPage(pageName, elmnt) {
				// Hide all elements with class="tabcontent" by default */
				var i, tabcontent, tablinks;
				tabcontent = document.getElementsByClassName("tabcontent");
				for (i = 0; i < tabcontent.length; i++) {
					tabcontent[i].style.display = "none";
				}

				// Remove the background color of all tablinks/buttons
				tablinks = document.getElementsByClassName("tablink");
				for (i = 0; i < tablinks.length; i++) {
					tablinks[i].style.backgroundColor = "";
					tablinks[i].style.color = 'black';
				}

				// Show the specific tab content
				document.getElementById(pageName).style.display = "block";

				// Add the specific color to the button used to open the tab content
				elmnt.style.backgroundColor = '#2e21df';
				elmnt.style.color = 'white';
			}

			// Get the element with id="defaultOpen" and click on it
			document.getElementById("defaultOpen").click();
			var no = "${lesson.les_no}";
			$(function() {
				$.ajax({
					url : 'mainfront?sid=findLikeList&no='+no+'&stu_id=test1',
					type : 'get',
					dataType : 'text',
					success : function(result){
						if (result == 1) {
							$('#li').addClass("selected");
						}
					}
				});
				
				var id = "${loginInfo.id}";
				var NS = '.test';
				$(document).on('click', NS + ' .button', function(e) {
					e.preventDefault();
					$(this).closest('.button').toggleClass('selected');
					
					if($(this).closest('.button').hasClass("selected") === true) {
						$.ajax({
							url : 'mainfront?sid=likelistinsert&no='+no+'&stu_id='+id,
							type : 'get',
							dataType: "text",
							success : function(result){
								$('#likeList2').html(result);
							}
						});	
						} else {//delete필요
							$.ajax({
								url : 'mainfront?sid=likelistdelete&no='+no+'&stu_id='+id,
								type : 'get',
								dataType: "text",
								success : function(result){
									$('#likeList1').html(result);
								}
							});	
						}
					
				});
			});
		</script>
		<%@ include file="footer.jsp" %>  
		