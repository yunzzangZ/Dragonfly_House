<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!-- header 불러오기 -->
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시설 추가</title>
</head>
	<body>

	<form action="${contextPath}/res_insert" method="post">	
		예약번호: <input type="text" name="booking_bo_num"><br>
		<input type="submit" value="추가완료"> 
		
	</form>
	

</body>
</html>