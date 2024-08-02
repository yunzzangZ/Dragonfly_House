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
				<th>방 번호</th>
				<th>시설 번호</th>
			</tr>
			<c:forEach var="rofac" items="${list}">
				<tr>
					<td><a href="ro_selectOne?ro_num=${rofac.room_ro_num}"> ${rofac.room_ro_num}</a></td>
					<td>${rofac.facility_fac_id}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="3">
					<div><a href="rofac_insert">시설 추가</a></div> 
				</td>
			</tr>
		</table>
	</section>
</div>

<%@ include file="../include/footer.jsp" %>