<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<section class="content">
		<div>
			<h1>전체 회원 목록</h1>
		</div>

		<table class="table table-hover">
			<tr>
				<th>회원 이메일</th>
				<th>회원명</th>
				<th>사업장 등록번호</th>
				<th>사업장 명</th>
				<th>가입 승인여부</th>
			
			</tr>
			<c:forEach var="bu" items="${list}">
				<tr>
					<td><a href="selectOne?bu_email=${bu.bu_email}">${bu.bu_email}</a></td>
					<td>${bu.bu_name}</td>
					<td>${bu.bu_code}</td>
					<td>${bu.bu_title}</td>
					<td>${bu.bu_approval}</td>
				</tr>
			</c:forEach>
			<tr>
	
			<td colspan="4"><div><a href="insert">회원추가</a></div></td>
		
			</tr>

		</table>
	</section>
</div>
<%@include file="../include/footer.jsp"%>
