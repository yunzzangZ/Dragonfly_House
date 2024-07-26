<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true"%>
<html>
<head>
<meta charset="UTF-8">
<title>로그인_회원정보입력</title>
</head>
<body>
	<div>
		<h1>로그인_회원정보입력</h1>
	</div>
	<form action="login" method="post">
		<div>
			<input type="text" name="email">
		</div>
		<input type = "submit" value="Login">
	</form>
</body>
</html>
