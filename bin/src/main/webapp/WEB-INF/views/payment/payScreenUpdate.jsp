<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제전 수정화면</title>
<script type="text/javascript">
	/* function BtnpayCard(){
	
	 const BtnpayCard = document.getElementById('BtnpayCard');
	 if(pay_name.style.visibility !== 'hidden') {
	 pay_name.style.visibility = 'hidden';
	 }else{
	 pay_name.style.visibility = 'visible';
	 }
	 }//end

	 function BtnpayCash(){
	
	 const BtnpayCash = document.getElementById('BtnpayCash');
	 if(card_card_number.style.visibility !== 'hidden') {
	 card_card_number.style.visibility = 'hidden';
	 }
	 else {
	 card_card_number.style.visibility = 'visible';
	 } */
}//end
</script>
</head>
<body>
	<%@include file="../include/header.jsp"%>

	<h3>결제 수단 수정화면</h3>

	<form action="payUpdate" method="post">
		<table class="table table-striped">
			<tr>
				<th>pay_id</th>
				<td><input type="number" readonly value="${pay.pay_id}"
					name="pay_id"></td>
			</tr>
			<tr>
				<!-- list형식으로 변형 -->
				<th>결제 방법</th>
				<!-- 
				<input type = "button" value = "카드" name = "pay_method" id = "BtnpayCard" onclick ='BtnpayCard()' >
				<input type = "button" value = "현금" name = "pay_method" id = "BtnpayCash" onclick ='BtnpayCash()'></td>
				 -->

				<td><input type="checkbox" name="pay_method" value="카드">카드
					<input type="checkbox" name="pay_method" value="현금">현금</td>
			</tr>
			<tr>
				<th>카드번호</th>
				<td><input type="number" name="card_card_number"
					id="card_card_number" value="0"></td>
			</tr>
			<tr>
				<th>예금자명</th>
				<td><input type="text" name="pay_name" id="pay_name" value=""></td>
			</tr>
		</table>
		<input type="hidden" name="booking_bo_num" value="0" readonly>
		<input type="submit" value="결제수단 수정">
	</form>
	<form action="payDetails" method="get">
		<input type="hidden" name="booking_bo_num" value="0" readonly>
		<input type="submit" name="pay_id" value="${pay.pay_id }"">
	</form>



	<%@include file="../include/footer.jsp"%>
</body>
</html>