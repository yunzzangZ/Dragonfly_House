<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정 화면</title>
<script type="text/javascript">


</script>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
		<div>
			<h1>${mem.email}님의 비밀번호 재설정 화면</h1>
		</div>
	<form action="${contextPath }/member/UpPw" method="post">
		<input type = "hidden" name = "email" value = "${mem.email}">
		<table border="1">
			<tr>
				<td>회원 현재 비밀번호</td>
				<td><input type="text" name="bepassword"></td>
			</tr>
			<tr>
				<td>회원 변경 비밀번호</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td>회원 변경 비밀번호 재확인</td>
				<td><input type="text" name="checkuppassword"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="변경" id = "Btnupdate" onclick="alert('비밀번호 변경 성공')"></td>
			</tr>
		</table>
	</form>



	<%@include file="../include/footer.jsp"%>
</body>
</html>