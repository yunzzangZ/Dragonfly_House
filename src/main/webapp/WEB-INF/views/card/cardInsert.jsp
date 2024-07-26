<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드 정보 추가</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	
	<h3>${mem.email }의 카드 추가</h3>
	<form action="caInsert" method = "post">
		<input type = "hidden"  name = "member_email" value = "${mem.email}">
		카드번호 입력 : <input name = "card_number" id = "card_number" type="text">
		카드비번 입력 : <input name = "card_password" id = "card_password"  type = "password">
		카드비번 재입력 : <input name = "check_card_password" id = "check_card_password" type = "password">
		유효기간 입력 : <input name = "card_duodate" id = "card_duodate"  type = "date">
		<input type = "submit" value = "추가">
	</form>
	
	<%@include file="../include/footer.jsp"%>
</body>
</html>