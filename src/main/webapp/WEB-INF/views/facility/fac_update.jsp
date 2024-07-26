<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ include file="../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<section class="content">
		<div>
			<h1>시설물 수정</h1>
		</div>

		<form action="${contextPath}/fac_update" method="post">
			시설 번호: <input type="text" name="fac_id" value="${fac.fac_id}" readonly><br><br>
			시설 이름: <input type="text" name="fac_name" value="${fac.fac_name}"><br><br>
			시설 설명: <input type="text" name="fac_description" value="${fac.fac_description}"><br><br>
			펜션 주소: <input type="text" name="fac_description" value="${facpension_pen_addr}"><br><br>
			<input type="submit" value="수정완료"> 
		</form>

		<div>
			<a href="${contextPath}/fac_list">목록으로 돌아가기</a>
		</div>
	</section>
</div>

<%@ include file="../include/footer.jsp" %>
