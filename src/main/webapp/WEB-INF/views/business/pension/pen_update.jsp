<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>펜션 정보수정</title>
</head>
<body>
    <h2>펜션 정보 수정</h2>
    <br>
    <form action="${contextPath}/business/pension/pen_update" method="post">
        펜션 이름: <input type="text" id="pen_name" name="pen_name" value="${pen.pen_name}" required><br>
        펜션 주소: <input type="text" id="pen_addr" name="pen_addr" value="${pen.pen_addr}" required><br>
        펜션 연락처: <input type="text" id="pen_tel" name="pen_tel" value="${pen.pen_tel}" required><br>
        펜션 설명: <input type="text" id="pen_description" name="pen_description" value="${pen.pen_description}" required><br>
        사업자 이메일: <input type="text" id="business_bu_email" name="business_bu_email" value="${pen.business_bu_email}" readonly><br>
        <input type="submit" value="수정완료">
    </form>
</body>
</html>

<%@ include file="../../include/adminFooter.jsp" %>
