<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>펜션 업데이트</title>
</head>
<body>
    <h2>펜션 업데이트</h2>
    <br>
    <form action="${contextPath}/pen_update" method="post">
        펜션 이름: <input type="text" name="pen_name" value="${pen.pen_name}" ><br>
        펜션 주소: <input type="text" name="pen_addr" value="${pen.pen_addr}" ><br> 
        펜션 연락처: <input type="text" name="pen_tel" value="${pen.pen_tel}" ><br> 
        펜션 설명: <input type="text" name="pen_description" value="${pen.pen_description}"><br> 
        <input type="submit" value="수정완료"> 
    </form>

</body>
</html>
