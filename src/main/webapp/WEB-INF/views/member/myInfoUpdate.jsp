<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<h3>회원정보수정</h3>
	<form action="Update" method="post">
		<table border="1">
			<tr>
				<td>회원 이메일</td>
				<td><input type="text" name="email" value="${mem.email }"
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>회원 비번</td>
				<td><a type = "button" href = "updatePw?email=${mem.email }">비번변경</a></td>
			</tr>
			<tr>
				<td>회원 이름</td>
				<td><input type="text" name="name" value="${mem.name }"></td>
			</tr>
			<tr>
				<td>회원 전화번호</td>
				<td><input type="text" name="tel" value="${mem.tel }"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="수정" id = "Btnupdate" onclick="alert('수정 완료')"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="button" value="뒤로가기" onclick="location.href=myInfo?email=${mem.email}"></td>
			</tr>
		</table>
	</form>
	<%@include file="../include/footer.jsp"%>
</body>
</html>