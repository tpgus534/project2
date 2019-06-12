<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="user" value="${requestScope.user}"></c:set>
<c:set var="loginClass" value="${requestScope.loginClass}"></c:set>
<c:choose>
	<c:when test="${empty loginClass}">
		<ul class="main_nav">
			<li><a href="courses.html">�α���</a></li>
			<li><a href="courses.html">ȸ������</a></li>
		</ul>
	</c:when>
	<c:when test="${loginClass eq 't'}">
		<span>${user.tea_name} ����� �ȳ��ϼ���!&nbsp;&nbsp;</span>
		<ul class="main_nav">
			<li><a href="courses.html">����� ���� ����</a></li>
			<li><a href="courses.html">�α׾ƿ�</a></li>
		</ul>
	</c:when>
	<c:when test="${loginClass eq 's'}">
		<span>${user.stu_name} �� �ȳ��ϼ���!&nbsp;&nbsp;</span>
		<ul class="main_nav">
			<li><a href="courses.html">����� ���� ����</a></li>
			<li><a href="courses.html">�α׾ƿ�</a></li>
		</ul>
	</c:when>
	<c:when test="${loginClass eq 'a'}">
		<span>${user.admin_id} �����ڴ� �ȳ��ϼ���!&nbsp;&nbsp;</span>
		<ul class="main_nav">
			<li><a href="courses.html">����� ���� ����</a></li>
			<li><a href="courses.html">�α׾ƿ�</a></li>
		</ul>
	</c:when>
	
</c:choose>
