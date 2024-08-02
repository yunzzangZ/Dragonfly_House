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
			<h1>새 펜션 추가</h1>
		</div>

		<form action="${contextPath}/pen_insert" method="post">
			펜션 주소: <input type="text" name="pen_addr" ><br>
			펜션 이름: <input type="text" name="pen_name" ><br>
			펜션 연락처: <input type="text" name="pen_tel" ><br>
			펜션 설명: <input type="text" name="pen_description"><br>
			
			<input type="submit" value="저장하기">
		</form>

		<div>
			<a href="${contextPath}/pen_list">목록으로 돌아가기</a>
		</div>
	</section>
</div>

<%@ include file="../include/footer.jsp" %>
