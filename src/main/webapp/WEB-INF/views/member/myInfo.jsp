<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<h3>회원정보</h3>
	<table border="1">
		<tr>
			<td>회원 이메일</td>
			<td>회원 비번</td>
			<td>회원 이름</td>
			<td>회원 전화번호</td>
		</tr>
		<tr>
			<td>${mem.email }</td>
			<td>${mem.password }</td>
			<td>${mem.name }</td>
			<td>${mem.tel }</td>
		</tr>
	</table>
	<div>
		<%@include file="../card/cardSelect.jsp"%>
		<a href="${contextPath}/card/cardSelect?email=${mem.email }">카드 정보</a>
	</div>
	<div>
		<a href="${contextPath}/card/cardInsert?email=${mem.email }">카드추가</a>
	</div>
	<div>
		<a href="${contextPath}/member/myInfoUpdate?email=${mem.email}">수정</a>
	</div>
	<div>
		<a href="${contextPath}/member/memberDelete?email=${mem.email}">탈퇴</a>
	</div>

	<%@include file="../include/footer.jsp"%>
</body>
</html>