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
					<div>
						<h3>${mem.name }님의 회원탈퇴가 완료되었습니다.</h3>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@include file="../include/footer.jsp"%>