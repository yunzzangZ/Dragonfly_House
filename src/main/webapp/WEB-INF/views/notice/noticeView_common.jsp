<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<div class="container">
	<div>
		<div class="notice-content">
			<div>
				<h2>공지사항 상세보기</h2>
				<table class="table table-striped">
					<tr>
						<th>제목</th>
						<td>${notice.notice_title}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>${notice.notice_text}</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td>${notice.notice_date}</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${notice.member_email}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
