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
					<h3>${mem.name }님의 비밀번호 변경</h3>
					<form action="${contextPath }/member/UpPw" method="post">
						<div class="hidden"><input type = "hidden" name = "email" value = "${mem.email}"></div>
						<div>
							<p>현재 비밀번호</p>
							<input type="text" name="bepassword">
						</div>
						<div>
							<p>변경 비밀번호</p>
							<input type="text" name="password">
						</div>
						<div>
							<p>변경 비밀번호 확인</p>
							<input type="text" name="checkuppassword">
						</div>
						<div class="mypage-btn"><input type="submit" value="변경" id = "Btnupdate" onclick="alert('비밀번호 변경 성공')"></div>					
					</form>
				</div>
			</div>
		</div>
	</div>

<%@include file="../include/footer.jsp"%>