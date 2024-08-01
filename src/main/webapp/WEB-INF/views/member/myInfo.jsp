<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<div class="container mypage-container">
	<div>
		<%@include file="../include/nav.jsp"%>
		<div class="mypage-content">
			<div>
				<h3>회원정보</h3>
				<table border="1">
					<tr>
						<th>이메일</th>
						<th>비밀번호</th>
						<th>이름</th>
						<th>전화번호</th>
					</tr>
					<tr>
						<td>${mem.email }</td>
						<td>${mem.password }</td>
						<td>${mem.name }</td>
						<td>${mem.tel }</td>
					</tr>
				</table>
				<div class="mypage-card">
					<h3>카드정보</h3>
					<a href="${contextPath}/card/cardInsert?email=${mem.email }">카드추가</a>
				</div>
				<div class="mypage-card-table">
					<table border="1">
						<tr>
							<th>카드번호</th>
							<th>카드비밀번호</th>
							<th>카드유효기간</th>
							<th>상세보기</th>
						</tr>
						<c:forEach var="card" items="${cardlist}">
							<tr>
								<td>${card.card_number }</td>
								<td>${card.card_password }</td>
								<td>${card.card_duodate }</td>
								<td><a href="${contextPath}/card/cardDetails?card_number=${card.card_number }">상세보기</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="../include/footer.jsp"%>