<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 상세보기</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>

	<h2>결제 상세보기</h2>
	<table class="table table-striped">
		<tr>
			<th>pay_id</th>
			<td>${pay.pay_id}</td>
		</tr>
		<tr>
			<th>예약번호</th>
			<td>${pay.booking_bo_num}</td>
		</tr>
		<tr>
			<th>결제 방법</th>
			<td>${pay.pay_method}</td>
		</tr>
		<c:if test="${pay.pay_method eq '신용카드' }">
			<tr>
				<th>카드번호</th>
				<td>${pay.card_card_number}</td>
			</tr>
		</c:if>
		<c:if test="${pay.pay_method eq '계좌이체' }">
			<tr>
				<th>예금자명</th>
				<td>${pay.pay_name}</td>
			</tr>
		</c:if>
		<tr>
			<th>금액</th>
			<td>${pay.pay_amount}</td>
		</tr>
		<tr>
			<th>날짜</th>
			<td>${pay.pay_date}</td>
		</tr>
		<tr>
			<th>상태</th>
			<td>${pay.pay_status}</td>
		</tr>
	</table>
	<div>
		<c:if test="${pay.pay_status eq '결제확인요청'}">
			<a href="payScreenUpdate?pay_id=${pay.pay_id }">결제수단 수정</a>
		</c:if>
		<c:if test="${pay.pay_status eq '예약완료' }">
			<a href="bookingListDetails?bo_num?=${pay.booking_bo_num}">예약페이지로 돌아가기</a>
		</c:if>
	</div>

	<%@include file="../include/footer.jsp"%>
</body>
</html>