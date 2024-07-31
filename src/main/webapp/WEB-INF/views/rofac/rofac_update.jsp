<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>방 시설 수정</title>
</head>
<body>
    <h2>방 시설 수정</h2>
    <br>
    <form action="${contextPath}/rofac_update" method="post">
        방 번호: <input type="text" name="room_ro_num" required><br> 
        시설 이름: <input type="text" name="facility_fac_id" required><br> 
        설명: <textarea name="facility_description" required></textarea><br> <
        <input type="submit" value="수정 완료"> 
    </form>
</body>
</html>
