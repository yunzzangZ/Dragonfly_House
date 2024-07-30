<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
	<%@include file="../include/header.jsp"%>

	<div class="content-wrapper">

		<section class="content">
			<div>
				<h1>${ro.ro_num}예약화면</h1>
			</div>
			<form action="bookingInsert" method="post">
				<table class="table table-hover">
					<tr>
						<th>예약회원</th>
						<td><input type = "text" value = "${email.email }" readonly name = "member_email"></td>
					</tr>
					<tr>
						<th>예약룸</th>
						<td><input type = "number" value = "${ro.ro_num}" readonly name = "room_ro_num"></td>
					</tr>
					<tr>
						<th>예약 시작일</th>
						<td><input type = "date" name = "bo_checkin"></td>
					</tr>
					<tr>
						<th>예약 마지막일</th>
						<td><input type = "date" name = "bo_checkout"></td>
					</tr>
					<tr>
						<th>예약결제방법</th>
						<td><input type = "text" name = "bo_paymethod"></td>
					</tr>
					<tr>
						<th>예약금액</th>
						<td><input type = "number" value = "${ro.ro_price }" name = "bo_price" readonly></td>
					</tr>
					<tr>
						<td><input type="submit" value = "예약하기"></td>
						<td><input type = "button" value = "뒤로가기" onclick="ro_selectOne?ro_num=${ro.ro_num}"></td>
					</tr>
				</table>
			</form>
		</section>
	</div>
	<%@include file="../include/footer.jsp"%>
