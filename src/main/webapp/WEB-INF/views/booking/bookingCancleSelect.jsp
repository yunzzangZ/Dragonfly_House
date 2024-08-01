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
					<h3>${email.name }님의 전체취소내역</h3>
					<table border="1">
						<tr>
							<th>예약번호</th>
							<th>체크인</th>
							<th>체크아웃</th>
							<th>예약룸</th>
							<th>예약상태</th>
						</tr>
						<c:forEach var="bo" items="${bocaselist}">
							<tr>
								<td><a href="bookingListDetails?bo_num=${bo.bo_num }">${bo.bo_num }</a></td>
								<td>${bo.bo_checkin }</td>
								<td>${bo.bo_checkout }</td>
								<td>${bo.room_ro_num }</td>
								<td>${bo.bo_status }</td>
							</tr>
						</c:forEach>
					</table>
					<span class="mypage-txt">예약번호를 클릭하면 상세내역을 확인 하실 수 있습니다.</span>
				</div>
			</div>
		</div>
	</div>
<%@include file="../include/footer.jsp"%>