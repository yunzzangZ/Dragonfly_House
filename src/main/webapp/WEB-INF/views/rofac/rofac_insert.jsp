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
<title>방시설 추가</title>
</head>
	<body>

	<form action="${contextPath}/rofac_insert" method="post">
		
		방 번호: <input type="text" name="room_ro_num"><br>
		시설 번호: <input type="text" name="facility_fac_id"><br> 
		<input type="submit" value="추가완료"> 
		
	</form>
	

</body>
</html>