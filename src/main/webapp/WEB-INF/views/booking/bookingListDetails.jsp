<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약목록 상세보기</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>

	<table border="1">
		<tr>
			<td>bo_num</td>
			<td>${bo.bo_num }</td>
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
			<td>${bo.room_ro_num}</td>
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
		<tr>
			<td>예약자</td>
			<td>${bo.member_email}</td>
		</tr>
	</table>
	<div>
		<a href="bookingListSelect?email=${bo.member_email}">${bo.member_email }
			뒤로가기</a>
	</div>
	<div>
		<form action="payment/payScreen" method="get">
			<c:choose>
				<c:when test="${bo.bo_status eq '결제전'}">
					<div>
						<input type="submit" name="booking_bo_num" value="${bo.bo_num}">
					</div>
				</c:when>
				<c:when test="${bo.bo_status eq '예약전'}">
					<div>
						<a href="bookingCancleUpdate?bo_num=${bo.bo_num}">${bo.bo_num }의
							예약취소하기</a>
					</div>
				</c:when>
			</c:choose>
		</form>
		<form action="payment/payDetails" method="get">
			<c:choose>
				<c:when test="${bo.bo_status eq '결제확인요청'}">
					<input type="hidden" name="pay_id" value="0">
					<input type="submit" name="booking_bo_num" value="${bo.bo_num }">결제내역확인
			</c:when>
				<c:when test="${bo.bo_status eq '예약완료'}">
					<input type="hidden" name="pay_id" value="0">
					<input type="submit" name="booking_bo_num" value="${bo.bo_num }">결제내역확인
			</c:when>
			</c:choose>
		</form>
	</div>

	<%@include file="../include/footer.jsp"%>
</body>
</html>