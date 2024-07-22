<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 상세보기</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
		<table border="1">
			<tr>
				<td>rev_num</td>
				<td>${rev.rev_num }</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>${rev.rev_title }</td>
			</tr>
			<tr>
				<td>작성날짜</td>
				<td>${rev.rev_date }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${rev.member_email }</td>
			</tr>
			<tr>
				<td>작성내용</td>
				<td>${rev.rev_content }</td>
			</tr>
			<tr>
				<td>응답</td>
				<td>${rev.rev_content_reply }</td>
			</tr>
			<tr>
				<td>사진</td>
				<td>${rev.PICSEQ_pic_num }</td>
			</tr>
		</table>
		<div>
			<input type="submit" value="수정" onclick="reviewUpdate">
		</div>
	<%@include file="../include/footer.jsp"%>
</body>
</html>