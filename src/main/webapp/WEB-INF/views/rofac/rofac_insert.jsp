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
    <title>방 시설 추가</title>
</head>
<body>

    <h1>방 시설 추가</h1> <!-- 제목 추가 -->
    <form action="${contextPath}/rofac_insert" method="post">
        방 번호: <input type="text" name="room_ro_num" required><br> <!-- 필수 입력 필드 -->
        시설 이름: <input type="text" name="facility_fac_id" required><br> <!-- 필수 입력 필드 -->
        시설 설명: <textarea name="facility_description" required></textarea><br> <!-- 시설 설명 입력 필드 추가 -->
        <input type="submit" value="추가 완료"> 
    </form>

</body>
</html>
