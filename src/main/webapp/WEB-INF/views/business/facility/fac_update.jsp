<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>시설 정보 수정</title>
</head>
<body>
    <h2>시설 정보 수정</h2>
    <br>
    <form action="${contextPath}/business/facility/fac_update" method="post">
        시설 번호: <input type="text" id="fac_id" name="fac_id" value="${fac.fac_id}" readonly><br>
        시설 이름: <input type="text" id="fac_name" name="fac_name" value="${fac.fac_name}" required><br>
        시설 설명: <input type="text" id="fac_description" name="fac_description" value="${fac.fac_description}" required><br>
        펜션 주소: <input type="text" id="pension_pen_addr" name="pension_pen_addr" value="${fac.pension_pen_addr}" required><br>
        <input type="submit" value="수정" class="btn btn-primary">
        <a href="${contextPath}/business/facility/fac_listall" class="btn btn-secondary">목록으로</a>
    </form>
</body>
</html>

<%@ include file="../../include/adminFooter.jsp" %>
