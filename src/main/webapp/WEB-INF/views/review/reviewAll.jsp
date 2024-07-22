<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체리뷰페이지</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<table border="1">
		<tr>
			<td>rev_num</td>
			<td>제목</td>
			<td>작성날짜</td>
			<td>작성자</td>
		</tr>
		<c:forEach var="rev" items="${revlist }">
			<tr>
				<td><a href = "reviewDetails?rev_num=${rev.rev_num }">${rev.rev_num }</a></td>
				<td>${rev.rev_title }</td>
				<td>${rev.rev_date }</td>
				<td>${rev.member_email }</td>
			</tr>
		</c:forEach>
	</table>

	<%@include file="../include/footer.jsp"%>
</body>
</html>