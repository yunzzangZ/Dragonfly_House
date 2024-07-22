<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 페이지 email 인증</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<h1>회원탈퇴확인 email 인증</h1>
	
	<form action="" method="post">
		<table border="1">
			<tr>
				<td>회원 이메일 입력</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>이메일 인증번호 인증</td>
				<td><input type="text" name="checknumber"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="인증" id = "Btnsubmit" onclick="alert('이메일 인증성공')"></td>
			</tr>
		</table>
	</form>

	<%@include file="../include/footer.jsp"%>
</body>
</html>