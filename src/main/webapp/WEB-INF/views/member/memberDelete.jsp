<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 페이지</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<h1>${mem.email } 회원탈퇴 페이지</h1>
	
	<form action="memberDeleteDone" method = "get">
	<input type = "hidden" value = ${mem.email } name ="email">
	<input type="submit" value = "회원탈퇴" id="delete" name="delete" onclick="location.href='memberDeleteDone?email=${mem.email}'">
	<input type="submit" value="이메일인증" id="Btnemail" onclick="location.href='memberDeleteEmail?email=${mem.email}'">
	<%@include file="../include/footer.jsp"%>
	</form>
</body>
</html>