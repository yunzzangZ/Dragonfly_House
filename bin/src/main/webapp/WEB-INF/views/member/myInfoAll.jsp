<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<h3>회원정보 전체</h3>
	<table border="1">
		<tr>
			<td>회원 이메일</td>
			<td>회원 비번</td>
			<td>회원 이름</td>
			<td>회원 전화번호</td>
		</tr>
		<c:forEach var="member" items="${memberlist }">
			<tr>
				<td><a href = "myInfo?email=${member.email }">${member.email }</a></td>
				<td>${member.password }</td>
				<td>${member.name }</td>
				<td>${member.tel }</td>
			</tr>
		</c:forEach>
	</table>
	<%@include file="../include/footer.jsp"%>
</body>
</html>