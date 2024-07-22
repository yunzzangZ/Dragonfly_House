<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 삭제</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>

	<form action="reviewDelete" method="post">
		<table border="1">
			<tr>
				<td>rev_num</td>
				<td>${rev.rev_num }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${rev.member_email }</td>
			</tr>
		</table>
		<div>
			<input type="submit" value="삭제" onclick="alert('삭제완료')">
		</div>
	</form>

	<%@include file="../include/footer.jsp"%>
</body>
</html>