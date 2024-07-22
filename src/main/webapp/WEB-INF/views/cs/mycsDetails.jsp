<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 상세페이지</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<table border="1">
		<tr>
			<td>cs_id</td>
			<td>제목</td>
			<td>작성내용</td>
			<td>응답</td>
		</tr>
		<tr>
			<td>${cs.cs_id }</td>
			<td>${cs.cs_title }</td>
			<td>${cs.cs_text }</td>
			<td>${cs.cs_response }</td>
		</tr>
	</table>
	<div>
		<a href="mycsUpdate?cs_id=${cs.cs_id }">수정</a>
	</div>
	<div>
		<a href="mycsDelete?cs_id=${cs.cs_id }">삭제</a>
	</div>

	<%@include file="../include/footer.jsp"%>
</body>
</html>