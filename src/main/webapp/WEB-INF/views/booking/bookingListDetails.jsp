<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<script>
	
</script>
<div class="container mypage-container">
	<div>
		<%@include file="../include/nav.jsp"%>
		<div class="mypage-content">
			<div>
				<h3>예약상세</h3>
				<table border="1">
					<tr>
						<th>예약번호</th>
						<td>${bo.bo_num }</td>
					</tr>
					<tr>
						<th>체크인</th>
						<td>${bo.bo_checkin }</td>
					</tr>
					<tr>
						<th>체크아웃</th>
						<td>${bo.bo_checkout }</td>
					</tr>
					<tr>
						<th>예약룸</th>
						<td>${bo.room_ro_num}</td>
					</tr>
					<tr>
						<th>예약상태</th>
						<td>${bo.bo_status }</td>
					</tr>
					<tr>
						<th>결제방법</th>
						<td>${bo.bo_paymethod }</td>
					</tr>
					<tr>
						<th>결제급액</th>
						<td>${bo.bo_price }</td>
					</tr>
					<tr>
						<th>예약자</th>
						<td>${bo.member_email}</td>
					</tr>
				</table>

				<div class="mypage-booking">
					<form action="payment/payScreen" method="get">
						<c:if test="${bo.bo_status eq '예약전'}">
							<input type="hidden" name="booking_bo_num" value="${bo.bo_num}">
							<input type="submit" value="결제하기">
						</c:if>
						<c:if test="${bo.bo_status eq '예약확인요청'}">
							<a href="bookingCancleUpdate?bo_num=${bo.bo_num}">예약취소하기</a>
						</c:if>
					</form>
					<form action="payment/payDetails" method="get">
						<c:if test="${(bo.bo_status eq '예약완료' or bo.bo_status eq '예약확인요청' or bo.bo_status eq '예약취소완료' or bo.bo_status eq '예약취소요청')}">
							<input type="hidden" name="booking_bo_num" value="${bo.bo_num}">
							<input type="submit" value="결제내역확인">
						</c:if>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>