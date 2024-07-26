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

	<form action="${contextPath}/ro_insert" method="post">
		
		방 번호: <input type="number" name="ro_num"><br>
		방 이름: <input type="text" name="ro_name"><br> 
				펜션 주소: <input type="text" name="pension_pen_addr"><br> 
		방 금액: <input type="number" name="ro_price"><br> 
		방 정보: <input type="text" name="ro_info"><br> 
		최대 인원: <input type="number" name="ro_max_person"><br> 
		방 사진번호: <input type="number" name="picture_pic_num"><br> 
		
		<input type="submit" value="추가완료"> 
		
	</form>
	

</body>
</html>