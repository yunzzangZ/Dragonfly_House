<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<div class="container mypage-container">
	<div>
		<%@include file="../include/nav.jsp"%>
		<div class="mypage-content">
			<div>
				<h3>${card.card_number }카드정보</h3>
				<table border="1">
					<tr>
						<th>카드번호</th>
						<th>카드비밀번호</th>
						<th>카드유효기간</th>
						<th>삭제하기</th>
					</tr>
					<tr>
						<td>${card.card_number }</td>
						<td>${card.card_password }</td>
						<td>${card.card_duodate }</td>
						<td><a href="cardDelete?card_number=${card.card_number}">삭제</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>