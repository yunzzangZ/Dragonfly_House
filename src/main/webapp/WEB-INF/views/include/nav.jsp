<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<nav class="mypage-nav">
	<div>${email.name }님의 마이페이지</div>
	<dl>
		<dt>회원정보 관리</dt>
		<dd>
			<a href="${contextPath}/member/myInfo?email=${email.email}">회원정보</a>
		</dd>
		<dd>
			<a href="${contextPath }/member/myInfoUpdate?email=${email.email}">회원정보수정</a>
		</dd>
		<dd>
			<a href="${contextPath }/member/memberDelete?email=${email.email}">회원탈퇴</a>
		</dd>
	</dl>	
	<dl>		
		<dt>예약관리</dt>
		<dd>
			<a href="${contextPath}/bookingListSelect?email=${email.email}">예약내역</a>
		</dd>
		<dd>
			<a href="${contextPath}/booking/bookingCancleSelect?email=${email.email}">취소내역</a>
		</dd>
	</dl>		
	<dl>		
		<dt>서비스 관리</dt>
		<dd>
			<a href="${contextPath}/cs/mycsSelect?email=${email.email}">1:1문의내역</a>
		</dd>
		<dd>
			<a href="${contextPath}/cs/mycsSelect?email=${email.email}">1:1문의작성</a>
		</dd>		
	</dl>
</nav>