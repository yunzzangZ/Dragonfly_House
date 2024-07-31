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
				<th>방 시설 이름</th>
				<th>설명</th>
			</tr>
			<c:forEach var="rofac" items="${list}">
				<tr>
					<td><a href="rofac_selectOne?room_ro_num=${rofac.room_ro_num}">${rofac.room_ro_num}</a></td>
					<td>${rofac.rofac_name}</td> 
					<td>${rofac.rofac_description}</td> 
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
