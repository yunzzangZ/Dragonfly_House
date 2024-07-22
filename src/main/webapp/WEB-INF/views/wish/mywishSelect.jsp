<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜목록(회원)</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<table border="1">
		<tr>
			<td>룸번호</td>
		</tr>
		<c:forEach var="wi" items="${wivlist }">
			<td><a href="#">${wi.room_num }</a></td>
		</c:forEach>
	</table>


	<%@include file="../include/footer.jsp"%>
</body>
</html>