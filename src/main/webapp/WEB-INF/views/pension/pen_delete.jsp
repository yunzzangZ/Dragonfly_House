<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ include file="../include/header.jsp" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<section class="content">
		<div>
			<h1>펜션 삭제</h1>
		</div>

		<form action="${contextPath}/pen_delete" method="get">
			<input type="hidden" name="pen_name" value="${pen.pen_name}">
			<p>정말로 이 펜션을 삭제하시겠습니까?</p>
			<p>펜션 이름: ${pen.pen_name}</p> 
			<input type="submit" value="삭제하기">
		</form>

		<div>
			<a href="${contextPath}/pen_list">목록으로 돌아가기</a>
		</div>
	</section>
</div>

<%@ include file="../include/footer.jsp" %>
