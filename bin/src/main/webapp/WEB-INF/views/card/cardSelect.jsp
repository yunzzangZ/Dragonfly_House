<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<section>
	<h3>${mem.email } 의카드정보</h3>
	<table border="1">
		<tr>
			<td>card_number</td>
			<td>card_password</td>
			<td>card_duodate</td>
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



