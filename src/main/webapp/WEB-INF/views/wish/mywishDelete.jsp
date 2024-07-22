<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜목록(회원) 삭제</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<form action="wiDelete" method="post">
		<table border="1">
			<tr>
				<td>room_num</td>
				<td>${rev.room_num }</td>
			</tr>
		</table>
		<div>
			<input type="submit" value="삭제" onclick="alert('삭제완료')">
		</div>
	</form>
	

	<%@include file="../include/footer.jsp"%>
</body>
</html>