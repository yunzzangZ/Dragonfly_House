<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
	<%@include file="../include/header.jsp"%>
<script>

function bookingInsert() {
	
	if (!confirm('예약하시겠습니까?')) {
		alert("예약하기를 취소하였습니다.");
		location.href = "/dragonfly/booking/bookingRoomSelect?ro_num=" + encodeURIComponent("${ro.ro_num}");
	}else{
		alert("예약을 추가하였습니다.");
		var form = document.getElementById("bookingInsertForm");
		form.submit();
	}
		
}//end checkUpdate


</script>
	<div class="content-wrapper">
    <section class="content">
        <div>
            <h1>${ro.ro_num} 예약화면</h1>
        </div>
        <form action="bookingInsert" method="post" name = "bookingInsertForm" id = "bookingInsertForm">
            <table class="table table-hover">
                <tr>
                    <th>예약회원</th>
                    <td><input type="text" value="${email.email}" readonly name="member_email" id = "member_email"></td>
                </tr>
                <tr>
                    <th>예약룸</th>
                    <td><input type="number" value="${ro.ro_num}" readonly name="room_ro_num" id = "room_ro_num"></td>
                </tr>
                <tr>
                    <th>예약 시작일</th>
                    <td><input type="date" name="bo_checkin"></td>
                </tr>
                <tr>
                    <th>예약 마지막일</th>
                    <td><input type="date" name="bo_checkout"></td>
                </tr>
                <tr>
                    <th>예약결제방법</th>
                    <td>
                        <select name="bo_paymethod" required>
                            <option value="">선택하세요</option>
                            <option value="신용카드">신용카드</option>
                            <option value="계좌이체">계좌이체</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>예약금액</th>
                    <td><input type="number" value="${ro.ro_price}" name="bo_price" readonly></td>
                </tr>
              <tr>
    <td><button type="button" onclick="bookingInsert();" class="btn btn-primary">예약하기</button></td>
    <td><button type="button" onclick="location.href='/dragonfly/booking/bookingRoomSelect?ro_num=${ro.ro_num}'" class="btn btn-secondary">뒤로가기</button></td>
</tr>
            </table>
        </form>
    </section>
</div>
	<%@include file="../include/footer.jsp"%>
