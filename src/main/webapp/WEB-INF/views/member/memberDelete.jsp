<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 페이지</title>
<script type="text/javascript">
	
	


	var checknum = Math.floor(Math.random() * 101);
	document.write('checknum : ' + checknum + '<br>');
</script>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<h1>${mem.email }회원탈퇴페이지</h1>
	<form action="${contextPath }/member/memberDeleteDone" method="get">
		<table>
			<tr>
			<td>회원이메일 입력</td>
				<td><input type="text" value=${mem.email } name="email" readonly></td>
				<td><input type="text" name = "check_email">
			</tr>
			<tr>
				<td>인증번호 입력</td>
				<td><input type = "text" readonly id = "checknum"></td>
				<td><input type="number" name="check_number"></td>
			</tr>
			<tr>
				<td><input type="submit" value="이메일인증 확인" id="Btnemail" onclick="location.href='${contextPath}/member/memberDeleteDone'">
				</td>
			</tr>
		</table>
	</form>
	<%@include file="../include/footer.jsp"%>
</body>
</html>