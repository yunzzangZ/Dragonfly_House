<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약취소 목록 상세보기</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>

	<table border="1">
		<tr>
			<td>bo_num</td>
			<td>${bo.bo_num }</a></td>
		</tr>
		<tr>
			<td>checkin</td>
			<td>${bo.bo_checkin }</td>
		</tr>
		<tr>
			<td>checkout</td>
			<td>${bo.bo_checkout }</td>
		</tr>
		<tr>
			<td>예약룸</td>
			<td>${bo.ro_num }</td>
		</tr>
		<tr>
			<td>예약상태</td>
			<td>${bo.bo_status }</td>
		</tr>
		<tr>
			<td>결제방법</td>
			<td>${bo.bo_paymethod }</td>
		</tr>
		<tr>
			<td>결제급액</td>
			<td>${bo.bo_price }</td>
		</tr>
	</table>
	<div>
		<input type="button" onclick="bookingCancleSelect?email=${email}" value="뒤로가기">
	</div>

	<%@include file="../include/footer.jsp"%>
</body>
</html>