<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>방정보수정</title>
</head>
<body>
	<h2>방 정보 수정</h2>
	<br>
	<br><br>
    <form action="${contextPath}/ro_update" method="post">
    
     	방 번호: <input type="number" name="ro_num"><br>
		방 이름: <input type="text" name="ro_name"><br> 
		방 금액: <input type="number" name="ro_price"><br> 
		방 정보: <input type="text" name="ro_info"><br> 
		최대 인원: <input type="number" name="ro_max_person" value="${ro.ro_max_person}" readonly><br> 
		<input type="submit" value="추가완료"> 
	</form>

</body>