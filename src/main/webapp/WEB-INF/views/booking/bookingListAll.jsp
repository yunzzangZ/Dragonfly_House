<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약목록(회원)</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<table border="1">
		<tr>
			<td>bo_num</td>
			<td>checkin</td>
			<td>checkout</td>
			<td>예약룸</td>
			<td>예약상태</td>
		</tr>
		<c:forEach var="bo" items="${bolist}">
			<tr>
				<td><a href = "bookingListDetails?bo_num=${bo.bo_num }">${bo.bo_num }</a></td>
				<td>${bo.bo_checkin }</td>
				<td>${bo.bo_checkout }</td>
				<td>${bo.ro_num }</td>
				<td>${bo.bo_status }</td>
			</tr>
		</c:forEach>
	</table>
	

	<%@include file="../include/footer.jsp"%>
</body>
</html>