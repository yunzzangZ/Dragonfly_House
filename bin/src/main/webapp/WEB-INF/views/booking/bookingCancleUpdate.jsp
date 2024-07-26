<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약취소 요청</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	
	<form action="bocaUpdate" method ="post">
	취소할 예약번호 : <input type = "text" name = "bo_num" value="${bo.bo_num }">
	<input type = "submit" value = "예약취소">
	</form>
	

	<%@include file="../include/footer.jsp"%>
</body>
</html>