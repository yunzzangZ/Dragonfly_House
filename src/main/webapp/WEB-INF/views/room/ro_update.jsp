<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <form action="${contextPath}/ro_update" method="post">
        방 번호: <input type="number" id="ro_num" name="ro_num" value="${ro.ro_num }" required><br>
        방 이름: <input type="text" id="ro_name" name="ro_name" value="${ro.ro_name }" required><br>
        숙소 위치: <input type="text" id="pension_pen_addr" name="pension_pen_addr" value="${pen.pension_pen_addr }" readOnly><br>
        방 금액: <input type="number" id="ro_price" name="ro_price" value="${ro.ro_price }" required><br>
        방 정보: <input type="text" id="ro_info" name="ro_info" value="${ro.ro_info }" required><br>
        최대 인원: <input type="number" id="ro_max_person" name="ro_max_person" value="${ro.ro_max_person }" readOnly><br>
        
        <input type="submit" value="수정완료"> 
    </form>
</body>
</html>
