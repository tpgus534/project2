<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.google.gson.JsonArray"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="result" items="${requestScope.selectlesson}">
	<div class="col-lg-4 course_col">
		<div class="course">
			<div class="course_image">
				<img src="images/course_5.jpg" alt="">
			</div>
			<div class="course_body">
				<div class="course_title">
					<a id="result_title" href="course.html">${result.les_title}</a>
				</div>
				<div class="course_info">
					<ul>
						<li><a href="instructors.html">Sarah Parker</a></li>
						<li><a href="#">Spanish</a></li>
					</ul>
				</div>
				<div class="course_text">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Fusce enim nulla.</p>
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
</c:forEach>

