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
<title>회원추가</title>
</head>
	<body>

	<form action="${contextPath}/insert" method="post">
		
		회원 이메일: <input type="text" name="bu_email"><br>
		비밀번호: <input type="text" name="bu_password"><br> 
		회원명: <input type="text" name="bu_name"><br> 
		회원 연락처: <input type="number" name="bu_tel"><br>
		사업자 등록번호: <input type="number" name="bu_code"><br> 
		사업장명: <input type="text" name="bu_title"><br> 
		사업장 주소: <input type="text" name="bu_addr"><br> 
		사업장 연락처: <input type="number" name="bu_account_num"><br> 
		가입 승인여부: <input type="text" name="bu_account_num"><br> 
		<input type="submit" value="추가완료"> 
		
	</form>
	

</body>
</html>