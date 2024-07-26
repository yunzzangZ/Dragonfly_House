<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 메인페이지</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<div>
		<h2>${email.name}의마이페이지</h2>
		<h2>${email.email}</h2>
	</div>
	<div>
	<jsp:include page = "../card/cardSelect.jsp" flush = "false">
		<jsp:param value="${email.email }" name = "email"/>
	</jsp:include>
	</div>


	<%@include file="../include/footer.jsp"%>
</body>
</html>