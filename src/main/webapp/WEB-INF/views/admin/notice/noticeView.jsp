<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/adminHeader.jsp" %>
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
       <div class="manager-btn">		
			<a href="${pageContext.request.contextPath}/admin/notice/noticeUpdate?notice_id=${notice.notice_id}" class="btn btn-secondary">수정</a>
			<form action="${pageContext.request.contextPath}/admin/notice/noticeDel" method="post" style="display: inline;">
				<input type="hidden" name="notice_id" value="${notice.notice_id}">
				<button type="submit" class="btn btn-danger">삭제</button>
			</form>
			<a href="${pageContext.request.contextPath}/admin/notice/noticeList" class="btn btn-primary">목록으로</a>
		</div>
	</div>
<%@include file="../../include/adminFooter.jsp" %>
