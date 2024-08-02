<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<script>
	function bookingInsert() {
		var form = document.getElementById("bookingInsertForm");
		var payMethod = form.bo_paymethod.value; // 결제 방법 선택 확인
		var checkinDate = new Date(form.bo_checkin.value); // 예약 시작일 확인
		var checkoutDate = new Date(form.bo_checkout.value); // 예약 마지막일 확인
		var today = new Date(); // 오늘 날짜

		// 오늘 날짜의 시간 부분을 0으로 설정 (비교를 위해)
		today.setHours(0, 0, 0, 0);

		if (!payMethod) {
			alert("결제 방법을 선택해 주세요."); // 결제 수단이 선택되지 않았을 경우 경고 메시지
			document.getElementsByName("bo_paymethod")[0].focus(); // 결제 방법 선택 필드에 포커스
			return; // 함수 종료
		}

		if (!form.bo_checkin.value) {
			alert("예약 시작일을 선택해 주세요."); // 예약 시작일이 선택되지 않았을 경우 경고 메시지
			form.bo_checkin.focus(); // 예약 시작일 필드에 포커스
			return; // 함수 종료
		}

		if (!form.bo_checkout.value) {
			alert("예약 마지막일을 선택해 주세요."); // 예약 마지막일이 선택되지 않았을 경우 경고 메시지
			form.bo_checkout.focus(); // 예약 마지막일 필드에 포커스
			return; // 함수 종료
		}

		if (checkinDate < today) {
			alert("예약 시작일은 오늘 이후의 날짜여야 합니다."); // 오늘 이전 날짜 선택 시 경고
			form.bo_checkin.focus(); // 예약 시작일 필드에 포커스
			return; // 함수 종료
		}

		if (checkoutDate < checkinDate) {
			alert("예약 마지막일은 예약 시작일보다 이후의 날짜여야 합니다."); // 예약 마지막일이 이전일 경우 경고
			form.bo_checkout.focus(); // 예약 마지막일 필드에 포커스
			return; // 함수 종료
		}

		if (!confirm('예약하시겠습니까?')) {
			alert("예약하기를 취소하였습니다.");
			location.href = "bookingRoomSelect?ro_num="
					+ encodeURIComponent("${ro.ro_num}");
			
			//http://localhost:8080/dragonfly/booking/bookingRoomSelect?ro_num=1
		} else {
			alert("예약을 추가하였습니다.");
			form.submit(); // 폼 제출
		}
	}

	function validateCheckin() {
		var form = document.getElementById("bookingInsertForm");
		var checkinDate = new Date(form.bo_checkin.value);
		var today = new Date();
		today.setHours(0, 0, 0, 0);

		if (checkinDate < today) {
			alert("예약 시작일은 오늘 이후의 날짜여야 합니다."); // 오늘 이전 날짜 선택 시 경고
			form.bo_checkin.value = ""; // 입력값 초기화
			form.bo_checkin.focus(); // 예약 시작일 필드에 포커스
		}
	}//end

	function validateCheckout() {
		var form = document.getElementById("bookingInsertForm");
		var checkinDate = new Date(form.bo_checkin.value);
		var checkoutDate = new Date(form.bo_checkout.value);

		if (form.bo_checkout.value && checkoutDate < checkinDate) {
			alert("예약 마지막일은 예약 시작일보다 이후의 날짜여야 합니다."); // 예약 마지막일이 이전일 경우 경고
			form.bo_checkout.value = ""; // 입력값 초기화
			form.bo_checkout.focus(); // 예약 마지막일 필드에 포커스
		}
	}//end
</script>

<div class="container booking-container">
	<div>
		<div class="booking-content">
			<div>
				<h1>룸 ${ro.ro_num} 예약화면</h1>
			</div>
			<form action="bookingInsert" method="post" name="bookingInsertForm"
				id="bookingInsertForm">
				<table class="table table-hover">
					<tr>
						<th>예약회원</th>
						<td><input type="text" value="${email.email}" readonly
							name="member_email" id="member_email"></td>
					</tr>
					<tr>
						<th>예약룸</th>
						<td><input type="number" value="${ro.ro_num}" readonly
							name="room_ro_num" id="room_ro_num"></td>
					</tr>
					<tr>
						<th>예약 시작일</th>
						<td><input type="date" name="bo_checkin" onchange="validateCheckin();" required></td>
					</tr>
					<tr>
						<th>예약 마지막일</th>
						<td><input type="date" name="bo_checkout" onchange="validateCheckout();"></td>
					</tr>
					<tr>
						<th>예약결제방법</th>
						<td><select name="bo_paymethod" required>
								<option value="">선택하세요</option>
								<option value="신용카드">신용카드</option>
								<option value="계좌이체">계좌이체</option>
						</select></td>
					</tr>
					<tr>
						<th>예약금액</th>
						<td><input type="number" value="${ro.ro_price}"
							name="bo_price" readonly></td>
					</tr>
				</table>
				<div class="booking-btn">
					<button type="button" onclick="bookingInsert();">예약하기</button>
					<input type="reset" value="초기화"> <input type="button"
						value="뒤로가기"
						onclick="location.href = 'bookingRoomSelect?ro_num=${ro.ro_num}'">
				</div>
			</form>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
