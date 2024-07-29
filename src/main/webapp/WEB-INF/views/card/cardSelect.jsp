<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<section>
	<h3>${mem.name }님의 카드정보</h3>
	<table border="1">
		<tr>
			<th>카드번호</th>
			<th>카드비밀번호</th>
			<th>카드유효기간</th>
		</tr>
		<c:forEach var="card" items="${cardList}">
			<tr>
				<td><a href="cardDetails?card_number=${card.card_number }">${card.card_number }</a></td>
				<td>${card.card_password }</td>
				<td>${card.card_duodate }</td>
			</tr>
		</c:forEach>
	</table>
</section>



