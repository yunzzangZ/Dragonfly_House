<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ include file="../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<section class="content">
		<div>
			<h1>${pen.pen_name} 상세 정보</h1>
		</div>

		<table class="table table-hover">
			<tr>
				<th>펜션 주소</th>
				<th>펜션 이름</th>
				<th>펜션 연락처</th>
				<th>펜션 설명</th>
			</tr>
			
			<tr>
				<td>${pen.pen_addr}</td>			
				<td>${pen.pen_name}</td>			
				<td>${pen.pen_tel}</td>		
				<td>${pen.pen_description}</td>
				<td>${pen.business_bu_email}
			</tr>
		</table>

		<div>
			<a href="pen_update?pen_addr=${pen.pen_addr}">수정하기</a> <br><br> 
			<a href="pen_delete?pen_addr=${pen.pen_addr}">삭제하기</a>		
		</div>
	</section>
</div>

<%@ include file="../include/footer.jsp" %>
