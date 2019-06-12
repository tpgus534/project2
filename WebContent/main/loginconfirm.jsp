<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="user" value="${requestScope.user}"></c:set>
<c:set var="loginClass" value="${requestScope.loginClass}"></c:set>
<c:choose>
	<c:when test="${empty loginClass}">
		<ul class="main_nav">
			<li><a href="courses.html">로그인</a></li>
			<li><a href="courses.html">회원가입</a></li>
		</ul>
	</c:when>
	<c:when test="${loginClass eq 't'}">
		<span>${user.tea_name} 강사님 안녕하세요!&nbsp;&nbsp;</span>
		<ul class="main_nav">
			<li><a href="courses.html">사용자 정보 수정</a></li>
			<li><a href="courses.html">로그아웃</a></li>
		</ul>
	</c:when>
	<c:when test="${loginClass eq 's'}">
		<span>${user.stu_name} 님 안녕하세요!&nbsp;&nbsp;</span>
		<ul class="main_nav">
			<li><a href="courses.html">사용자 정보 수정</a></li>
			<li><a href="courses.html">로그아웃</a></li>
		</ul>
	</c:when>
	<c:when test="${loginClass eq 'a'}">
		<span>${user.admin_id} 관리자님 안녕하세요!&nbsp;&nbsp;</span>
		<ul class="main_nav">
			<li><a href="courses.html">사용자 정보 수정</a></li>
			<li><a href="courses.html">로그아웃</a></li>
		</ul>
	</c:when>
	
</c:choose>
