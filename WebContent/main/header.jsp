<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.kitri.dto.Student"%>
<%@page import="com.kitri.dto.Teacher"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%
	HttpSession session2 = request.getSession();
	Map<String, String> map = new HashMap<String, String>();
	map.put("id", "test1");
	map.put("loginClass", "s");
	session.setAttribute("loginInfo", map);
%> --%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<title>Lingua</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Lingua project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/bootstrap4/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/responsive.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/sehyun.css">
</head>
<%
Student student = (Student) session.getAttribute("student");
Teacher teacher = (Teacher) session.getAttribute("teacher");
   String stu_id = null;
   if(student != null) {
	   stu_id = student.getStu_id();   
   }
   String tea_id = null;
   if(teacher != null) {
	   tea_id = teacher.getTea_id();   
   }
%>

<script type = "text/javascript">
function logout(){
	if(confirm("로그아웃 하시겠습니까?")){
		document.location.href = "/stulogout.jsp";
	}
}
</script>
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
									<%if(stu_id==null){ %>
										<li><a href="/hobby/user/stu/login.jsp">로그인</a></li>
										<li><a href="/hobby/user/stu/joinmember.jsp">회원가입</a></li>
									<%}else{ %>
										<li><a href="#"  onclick="javascript:logout();">로그아웃</a></li>
										<li><a href="/hobby/user/stu/stumain.jsp">마이페이지</a></li>
									<%} %>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
		</header>
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
				<img src="${pageContext.request.contextPath}/images/ad/red.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="${pageContext.request.contextPath}/images/ad/orange.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="${pageContext.request.contextPath}/images/ad/yellow.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="${pageContext.request.contextPath}/images/ad/green.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="${pageContext.request.contextPath}/images/ad/skyblue.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="${pageContext.request.contextPath}/images/ad/blue.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="${pageContext.request.contextPath}/images/ad/pupple.png" class="img-ad d-block w-100"
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
		<!-- <script type="text/javascript">
			$(document).ready(function() {
				var loginId = "${id}";
				var loginClass = "${loginClass}";
				console.log(loginId + " " + loginClass);
				if (loginId != null) {

				}
				$.ajax({
					url : "mainfront?sid=selectId",
					type : "post",
					data : "loginId=" + loginId + "&loginClass=" + loginClass,
					dataType : "text",
					success : function(result) {
						$('.rightdiv').html(result);
					}

				});
			});
		</script> -->
		<!-- header -->