<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 수정</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<h3>${cs.cs_id }의수정</h3>
	<form action="csUpdate" method="post" name = "csUpdateForm">
		<table border="1">
			<tr>
				<td>cs_id</td>
				<td><input type="text" name="cs_id" value=${cs.cs_id } readonly="readonly"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input value = "${cs.email }" type = "text" name = "email" readonly="readonly"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input value = "${cs.cs_text }" type = "text" name = "cs_text"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="cs_title" value=${cs.cs_title }></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><input value = "${cs.cs_date }" type = "text" name = "cs_date" readonly="readonly"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="수정" id="Btnupdate">
			</tr>
		</table>
	</form>
	<%@include file="../include/footer.jsp"%>
</body>
</html>