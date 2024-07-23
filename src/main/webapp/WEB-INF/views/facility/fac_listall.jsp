<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<section class="content">
		<div>
			<h1>전체 숙박 시설물 목록</h1>
		</div>

		<table class="table table-hover">
			<tr>
				<th>시설 번호</th>
				<th>시설물 이름</th>
				<th>시설 설명</th>		
			</tr>
			<c:forEach var="fac_listall" items="${list}">
				<tr>
					<td>${facitily.fac_id}</td>
					<td><a href="selectOne?fac_id=${facitily.fac_id}">${facitily.fac_id}</a></td>
					<td>${fac_name}</td>
					<td>${fac_description}</td>
				</tr>
			</c:forEach>
			<tr>
			<!-- 추가를 여기서 해야되?
			<td colspan="4"><div><a href="insert">회원추가</a></div></td>
			 -->	
			</tr>

		</table>
	</section>
</div>
<%@include file="../include/footer.jsp"%>
