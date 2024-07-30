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
						<%@include file="../card/cardSelect.jsp"%>
						<a href="${contextPath}/card/cardInsert?email=${mem.email }">카드추가</a>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@include file="../include/footer.jsp"%>