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
		<a href="bookingListSelect?email=${email.email}">${email.email}
			뒤로가기</a>
	</div>
	<div>
		<form action="payment/payScreen" method="get">
			<c:if test="${bo.bo_status eq '결제 대기'}">
				<div>
					<input type="hidden" name="booking_bo_num" value="${bo.bo_num}">
					<input type="submit" value="결제하기" id="BtnpayScreen">
				</div>
			</c:if>
		</form>
		<form action="bookingCancleUpdate" method="get">
			<c:if test="${bo.bo_status eq '결제 확인요청'}">
				<div>
					<input type="hidden" name="bo_num" value="${bo.bo_num}"> <input
						type="submit" value="예약취소하기" id="BtnCancle">
				</div>
			</c:if>
		</form>
		<form action="payment/payDetails" method="get">
			<c:if test="${bo.bo_status eq '예약 완료'}">
				<div>
					<input type="hidden" name="pay_id" value="0"> <input
						type="hidden" name="booking_bo_num" value="${bo.bo_num }">
					<input type="submit" name="BtnDetails" id="BtnDetails">결제내역확인
				</div>
			</c:if>
		</form>
	</div>
	<%@include file="../include/footer.jsp"%>
</body>
</html>