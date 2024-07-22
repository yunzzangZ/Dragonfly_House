<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰수정</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<form action="revUpdate" method="post">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type = "text" name = "rev_title" value = "${rev.rev_title }"></td>
			</tr>
			<tr>
				<td>작성내용</td>
				<td><input type = "text" name = "rev_content" value = "${rev.rev_content }"></td>
			</tr>
			<tr>
				<td>사진</td>
				<td>${rev.PICSEQ_pic_num }</td>
			</tr>
		</table>
		<div>
			<input type="submit" value="수정" onclick="reviewUpdate">
		</div>
	</form>
	

	<%@include file="../include/footer.jsp"%>
</body>
</html>