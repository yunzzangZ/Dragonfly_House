<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원수정</title>
</head>
<body>
    <h2>회원 정보 수정</h2>
    <br>
    <br><br>
    <form action="${contextPath}/bu_update" method="post">
    
        회원 이메일: <input type="text" name="bu_email" value="${bu.bu_email}" readonly> <br>
        비밀번호: <input type="password" name="bu_password" value="${bu.bu_password}"><br> 
        회원명: <input type="text" name="bu_name" value="${bu.bu_name}"><br> 
        회원 연락처: <input type="number" name="bu_tel" value="${bu.bu_tel}"><br>
        사업자 등록번호: <input type="number" name="bu_code" value="${bu.bu_code}" readonly><br> 
        사업자 계좌번호: <input type="number" name="bu_account_num" value="${bu.bu_account_num}"><br> 
        가입 승인여부: <input type="text" name="bu_approval" value="${bu.bu_approval}"><br> 
        <input type="submit" value="수정완료">
    </form>
</body>
</html>
