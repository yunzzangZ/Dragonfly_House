<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ include file="../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<section class="content">
		<div>
			<h1>전체 숙박 시설물 목록</h1>
		</div>

		<table class="table table-hover">
			<tr>				
				<th>펜션 이름</th>
				<th>펜션 주소</th>
				<th>펜션 연락처</th>
				<th>펜션 설명</th>		
			</tr>
			<c:forEach var="pen" items="${list}">
				<tr>
					<td>${pen.pen_name}</td>
					<td><a href="pen_selectOne?pen_addr=${pen.pen_addr}">${pen.pen_addr}</a></td>
					<td>${pen.pen_tel}</td>
					<td>${pen.pen_description}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4">
					<div><a href="${contextPath}/pen_insert">시설 추가</a></div> 
				</td>
			</tr>
		</table>
	</section>
</div>

<%@ include file="../include/footer.jsp" %>
