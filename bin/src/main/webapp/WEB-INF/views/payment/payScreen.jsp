<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제화면</title>

</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	
	<h3>${bo.bo_num }결제화면</h3>
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
					name="pay_amount"></td>
			</tr>

			<tr>
				<!-- list형식으로 변형 -->
				<th>결제 방법</th>
				<td><input type="checkbox" name="pay_method" value="카드">카드
					<input type="checkbox" name="pay_method" value="현금">현금</td>
			</tr>
			

			<tr>
				<th>카드번호</th>

				<td><input type="number" name="card_card_number" value = "0"></td>
			</tr>
			<tr>
				<th>예금자명</th>
				<td><input type="text" name="pay_name" value = null></td>
			</tr>
		</table>
		<h5>카드목록</h5>
				<jsp:include page="../card/cardSelect.jsp"/>
		<input type="submit" value="결제요청" name="BtnpayUpdate" id="BtnpayUpdate">
	</form>
	<%@include file="../include/footer.jsp"%>
</body>
</html>