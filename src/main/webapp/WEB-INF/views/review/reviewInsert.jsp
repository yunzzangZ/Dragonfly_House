<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 추가</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<form action="revInsert" method="post">
		<table border="1">
			<tr>
				<td>제목</td>
				<td>${rev.rev_title }</td>
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
				<td>사진</td>
				<td>${rev.PICSEQ_pic_num }</td>
			</tr>
		</table>
		<div>
			<input type="submit" value="수정" onclick="alert('추가완료')">
		</div>
	</form>
	

	<%@include file="../include/footer.jsp"%>
</body>
</html>