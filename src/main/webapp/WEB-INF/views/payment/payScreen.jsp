<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>

<div class="container payment-container">
	<div>
		<div class="payment-content">
			<div>
				<h3>결제123</h3>
				<form action="payInsert" method="post">
					<table border="1">
						<tr>
							<th>bo_num</th>
							<td colspan="3"><input type="number" readonly
								value="${bo.bo_num }" name="booking_bo_num"></td>
						</tr>
						<tr>
							<th>금액</th>
							<td colspan="3"><input type="number" value="${bo.bo_price}"
								name="pay_amount" readonly></td>
						</tr>
						<tr>
							<th>결제 방법</th>
							<td colspan="3">
								<div>
									<select name="pay_method" id="pay_method" required>
										<option value="">선택하세요</option>
										<option value="신용카드">신용카드</option>
										<option value="계좌이체">계좌이체</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th colspan="4">카드 목록</th>
						</tr>
						<tr>
							<th>카드번호</th>
							<th>적용버튼</th>
						</tr>
						<c:forEach var="card" items="${cardlist}">
							<tr>
								<td>${card.card_number}</td>
								<td><input type="checkbox" name="card_card_number"
									value="${card.card_number}" class="card-checkbox"></td>
							</tr>
						</c:forEach>
						<tr>
							<th>예금자명</th>
							<td colspan="3"><input type="text" name="pay_name" value="">
							</td>
						</tr>
					</table>
					<div class="payment-btn">
						<input type="submit" value="결제요청" name="BtnpayUpdate"
							id="BtnpayUpdate">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<script>
	window.onload = function() {
		var payMethod = document.getElementById("pay_method"); // select 요소 가져오기
		var btnPayUpdate = document.getElementById("BtnpayUpdate"); // 버튼 요소 가져오기
		var checkboxes = document.querySelectorAll('.card-checkbox'); // 체크박스 요소 가져오기
		
		if (btnPayUpdate) {
			btnPayUpdate
					.addEventListener(
							"click",
							function(event) {
								console.log("결제 요청 버튼 클릭됨."); // 로그 추가
								var payMethodValue = payMethod.value; // 선택된 결제 방법 가져오기
								var payerName = document
										.querySelector('input[name="pay_name"]').value;
								var selectedCard = document
										.querySelector('input[name="card_card_number"]:checked');
								
								// 결제 방법에 따른 처리
								if (payMethodValue === "") {
									alert("결제 방법을 선택하세요."); // 결제 방법 선택 경고
									event.preventDefault(); // 폼 제출 방지
								} else if (payMethodValue === "신용카드") {
									// 신용카드인 경우 예금자명은 빈 값으로 POST
									document
											.querySelector('input[name="pay_name"]').value = "";
									if (!selectedCard) {
										alert("카드번호를 선택하세요."); // 카드 선택 경고
										event.preventDefault(); // 폼 제출 방지
									}
								} else if (payMethodValue === "계좌이체") {
									if(!payerName){
										alert("예금자명을 입력하세요.");
										event.preventDefault(); 
									}
									// 계좌이체인 경우 체크박스 선택 여부와 관계없이 카드 번호는 빈 값으로 POST
									checkboxes.forEach(function(checkbox) {
										checkbox.checked = false; // 체크 해제
									});
								}
							});
		}
	};
</script>


<%@include file="../include/footer.jsp"%>
