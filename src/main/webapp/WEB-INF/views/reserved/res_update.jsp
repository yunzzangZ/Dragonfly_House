<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원수정</title>
</head>
<body>
	<h2>회원 정보 수정</h2>
	<br>
	<br><br>
    <form action="${contextPath}/res_update" method="post">
    
     	예약 번호: <input type="text" name="booking_bo_num" value="${res.booking_bo_num}" readonly><br>
		<input type="submit" value="추가완료"> 
	</form>

</body>