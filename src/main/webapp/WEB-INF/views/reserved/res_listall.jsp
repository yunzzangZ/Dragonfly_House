<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ include file="../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<section class="content">
		<div>
			<h1>전체 예약 목록</h1>
		</div>

		<table class="table table-hover">
			<tr>
				<th>예약번호</th>
			</tr>
			<c:forEach var="res" items="${list}">
				<tr>
					<td><a href="res_selectOne?booking_bo_num=${res.booking_bo_num}"> ${res.booking_bo_num}</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="3">
					<div><a href="res_insert">예약확인 추가</a></div> 
				</td>
			</tr>
		</table>
	</section>
</div>

<%@ include file="../include/footer.jsp" %>