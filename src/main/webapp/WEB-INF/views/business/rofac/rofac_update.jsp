<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>객실 시설 수정</title>
</head>
<body>
    <h2>객실 시설 수정</h2>
    <br>
    <form action="${contextPath}/business/rofac/rofac_update" method="post">
        객실 번호: <input type="text" id="room_ro_num" name="room_ro_num" value="${rofac.room_ro_num}" readonly><br>
        시설 이름: <input type="text" id="rofac_name" name="rofac_name" value="${rofac.rofac_name}" required><br>
        설명: <textarea id="rofac_description" name="rofac_description" required>${rofac.rofac_description}</textarea><br>
        <input type="submit" value="수정완료">
    </form>
</body>
</html>

<%@ include file="../../include/adminFooter.jsp" %>
