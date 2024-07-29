<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드 상세정보</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<h3>${card.member_email}의 ${card.card_number } 카드정보</h3>
	<table border="1">
		<tr>
			<td>card_number</td>
			<td>${card.card_number }</td>
		</tr>
		<tr>
			<td>card_password</td>
			<td>${card.card_password }</td>
		</tr>
		<tr>
			<td>card_duodate</td>
			<td>${card.card_duodate }</td>
		</tr>
		<tr>
			<td>email</td>
			<td>${card.member_email}</td>
		</tr>
	</table>
	<div>
		<a href="cardDelete?card_number=${card.card_number }">삭제</a>
	</div>




	<%@include file="../include/footer.jsp"%>
</body>
</html>