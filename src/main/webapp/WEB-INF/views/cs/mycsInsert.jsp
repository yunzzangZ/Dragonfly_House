<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 추가</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<form action="csInsert" method="post">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" name="cs_title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="cs_text"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="추가" id="Btnupdate" onclick="alert('추가 완료')">
			</tr>
		</table>
	</form>
	

	<%@include file="../include/footer.jsp"%>
</body>
</html>