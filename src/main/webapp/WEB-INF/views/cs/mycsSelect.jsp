<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원별 1:1문의전체</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<h3>${email.email }님의 문의사항</h3>
	<table border="1">
		<tr>
			<td>cs_id</td>
			<td>제목</td>
			<td>작성날짜</td>
			<td>작성자</td>
			<td>내용</td>
		</tr>
		<c:forEach var="cs" items="${csselist }">
			<tr>
				<td><a href="mycsDetails?cs_id=${cs.cs_id }">${cs.cs_id }</a></td>
				<td>${cs.cs_title }</td>
				<td>${cs.cs_date }</td>
				<td>${cs.member_email }</td>
				<td>${cs.cs_text }</td>
			</tr>
		</c:forEach>
	</table>
	
	<div>
	<button type = "button" onclick="location.href='mycsInsert?email=${email.email}'">문의사항 등록하기</button>
	</div>
	<%@include file="../include/footer.jsp"%>
</body>
</html>