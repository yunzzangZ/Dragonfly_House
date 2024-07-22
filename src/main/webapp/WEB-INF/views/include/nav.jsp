<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<nav>
	<div>
	<dl>
			<dt><a href="myInfoAll">회원정보전체</a></dt>
	</dl>
		<dl>
			<dt><a href="myInfo?email=${email}">회원정보</a></dt>
			<dd><a href="myInfoUpdate?email=${email}">회원정보수정</a></dd>
			<dd><a href="memberDelete?email=${email}">회원탈퇴</a></dd>
		</dl>
		<dl>
			<dt><a href="bookingListAll">전체예약</a></dt>
			<dt><a href="bookingListSelect?email=${email }">회원 예약내역</a></dt>
			<dd><a href="bookingCancleSelect?email=${email }">취소내역</a></dd>
		</dl>
		<dl>
			<dt>서비스관리</dt>
			<dd><a href="mycsAll">1:1문의내역전체</a></dd>
			<dd><a href="mycsSelect?email=${email}">1:1문의내역</a></dd>
		</dl>
	</div>
</nav>