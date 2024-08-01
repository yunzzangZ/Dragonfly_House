<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<div class="container payment-container">
	<div>
		<div class="payment-content">
			<div>
				<h3>${bo.bo_num}결제화면</h3>
				<form action="payInsert" method="post">
					<table border="1">
						<tr>
							<td>bo_num</td>
							<td><input type="number" readonly value="${bo.bo_num }"
								name="booking_bo_num"></td>
						</tr>
						<tr>
							<th>금액</th>
							<td><input type="number" value="${bo.bo_price}"
								name="pay_amount" readonly></td>
						</tr>
						<tr>
							<th>결제 방법</th>
							<td><select name="pay_method" id="pay_method" required>
									<option value="">선택하세요</option>
									<option value="신용카드">신용카드</option>
									<option value="계좌이체">계좌이체</option>
							</select></td>
						</tr>
						<tr>
							<th>카드번호</th>
							<td><input type="text" name="card_card_number" value=""></td>
						</tr>
						<tr>
							<th colspan="4">카드 목록</th>
						</tr>
						<tr>
							<th>카드번호</th>
							<th>카드비밀번호</th>
							<th>카드유효기간</th>
							<th>적용버큰</th>
						</tr>
						<c:forEach var="card" items="${cardlist}">
							<tr>
								<td>${card.card_number}</td>
								<td>${card.card_password}</td>
								<td>${card.card_duodate}</td>
								<td><input type="checkbox"></td>
							</tr>
						</c:forEach>
						<tr>
							<th>예금자명</th>
							<td><input type="text" name="pay_name" value=""></td>
						</tr>
					</table>
					<div class = "payment-btn">
					<input type="submit" value="결제요청" name="BtnpayUpdate"
						id="BtnpayUpdate">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>