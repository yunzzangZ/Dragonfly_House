<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<%@include file="../include/header.jsp"%>
<div class="container payment-container">
	<div>
		<div class="payment-content">
			<div>
				<h3>결제수정화면</h3>

				<form action="payUpdate" method="post">
					<table class="table table-striped">
						<tr>
							<th>pay_id</th>
							<td><input type="number" readonly value="${pay.pay_id}"
								name="pay_id" id="pay_id"></td>
						</tr>
						<tr>
							<th>결제 방법</th>
							<td>변경 전 : ${pay.pay_method }
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
									id="card_card_number" value="${card.card_number}"
									class="card-checkbox" data-card-number="${card.card_number}">
									<!-- data 속성 추가 --></td>
							</tr>
						</c:forEach>
						<tr>
							<th>예금자명</th>
							<td colspan="2"><input type="text" name="pay_name"
								value="${pay.pay_name}"></td>
						</tr>
					</table>
					<div class="payment-btn">
						<input type="hidden" value="${pay.booking_bo_num}"
							name="booking_bo_num"> <input type="submit"
							value="결제수정요청" name="BtnpayUpdate" id="BtnpayUpdate">
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

		// 체크박스의 상태가 변경될 때 카드 번호를 로그에 출력
		checkboxes.forEach(function(checkbox) {
			checkbox.addEventListener('change', function() {
				if (this.checked) {
					// 체크된 카드 번호 가져오기
					var cardNumber = this.getAttribute('data-card-number');
					console.log("선택된 카드 번호: " + cardNumber);
					// 추가적인 로직을 여기에 작성
				}
			});
		});

		if (btnPayUpdate) {
			btnPayUpdate.addEventListener("click", function(event) {
				console.log("결제 요청 버튼 클릭됨."); // 로그 추가
				var payMethodValue = payMethod.value; // 선택된 결제 방법 가져오기
				var payerName = document.querySelector('input[name="pay_name"]').value;
				var selectedCard = document.querySelector('input[name="card_card_number"]:checked');

				// 결제 방법에 따른 처리
				if (payMethodValue === "") {
					alert("결제 방법을 선택하세요."); // 결제 방법 선택 경고
					event.preventDefault(); // 폼 제출 방지
				} else if (payMethodValue === "신용카드") {
					// 신용카드인 경우 예금자명은 빈 값으로 POST
					document.querySelector('input[name="pay_name"]').value = "";
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
