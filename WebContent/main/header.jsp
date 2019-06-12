<%@page import="com.kitri.dto.Teacher"%>
<%@page import="com.kitri.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<link rel="stylesheet" type="text/css" href="styles/sehyun.css">
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