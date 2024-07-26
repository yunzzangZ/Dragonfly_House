<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<nav>
	<div>
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
			<dt>에약관리</dt>
			<!-- <dd><a href="${contextPath}/booking/bookingListAll">전체예약</a></dd> -->
			<dd>
				<a
					href="${contextPath}/bookingListSelect?email=${email.email}">예약내역</a>
			</dd>
			<dd>
				<a
					href="${contextPath}/booking/bookingCancleSelect?email=${email.email}">취소내역</a>
			</dd>
			<dt>서비스 관리</dt>
			<dd>
				<a href="${contextPath}/cs/mycsSelect?email=${email.email}">1:1문의내역</a>
			</dd>
		</dl>
		<dl>
			<!-- <dt><a href="bookingListAll">전체예약</a></dt>
			<dt><a href="myInfoAll">회원정보전체</a></dt>-->
		</dl>
	</div>
</nav>