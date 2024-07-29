<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
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
							<c:choose>
								<c:when test="${bo.bo_status eq '결제전'}">
									<input type="submit" name="booking_bo_num" value="${bo.bo_num}">
								</c:when>
								<c:when test="${bo.bo_status eq '예약전'}">
									<a href="bookingCancleUpdate?bo_num=${bo.bo_num}">예약취소하기</a>
								</c:when>
							</c:choose>
						</form>
						<form action="payment/payDetails" method="get">
							<c:choose>
								<c:when test="${bo.bo_status eq '결제확인요청'}">
									<input type="hidden" name="pay_id" value="0">
									<input type="submit" name="booking_bo_num" value="결제내역확인">
								</c:when>
								<c:when test="${bo.bo_status eq '예약완료'}">
									<input type="hidden" name="pay_id" value="0">
									<input type="submit" name="booking_bo_num" value="결제내역확인">
								</c:when>
							</c:choose>
						</form>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	
<%@include file="../include/footer.jsp"%>