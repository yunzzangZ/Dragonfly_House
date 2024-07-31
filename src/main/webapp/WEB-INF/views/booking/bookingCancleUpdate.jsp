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
					<h3>${bo.bo_num } 예약취소</h3>
					<form action="bocaUpdate" method="post">
						<div class="mypage-form-one">
							<p>취소할 예약번호</p>
							<input type = "text" name = "bo_num" value="${bo.bo_num }">
						</div>
						<div class="mypage-btn"><input type = "submit" value = "예약취소"></div>
					</form>
				</div>
			</div>
		</div>
	</div>	
<%@include file="../include/footer.jsp"%>