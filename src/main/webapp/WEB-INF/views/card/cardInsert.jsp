<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
    <div class="container mypage-container">
		<div>
			<%@include file="../include/nav.jsp"%>
			<div class="mypage-content">
				<div>
					<h3>${mem.name }님의 카드추가</h3>
					<form action="caInsert" method="post">
						<div class="hidden"><input type = "hidden"  name = "member_email" value = "${mem.email}"></div>
						<div>
							<p>카드번호</p>
							<input name="card_number" id="card_number" type="text">
						</div>
						<div>
							<p>카드비밀번호</p>
							<input name="card_password" id="card_password"  type="password">
						</div>
						<div>
							<p>카드비밀번호 확인</p>
							<input name="check_card_password" id="check_card_password" type="password">
						</div>
						<div>
							<p>카드유효기간</p>
							<input name="card_duodate" id="card_duodate"  type="date">
						</div>
						<div class="mypage-btn"><input type="submit" value="카드추가"></div>
					</form>
				</div>
			</div>
		</div>
	</div>	
<%@include file="../include/footer.jsp"%>