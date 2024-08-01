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
					<h3>문의 사항 삭제완료</h3>			
				</div>
				<div class="mypage-btn">
				<a href="mycsSelect?email=${email.email }">문의사항으로 돌아가기</a>
				</div>
			</div>
		</div>
	</div>	
<%@include file="../include/footer.jsp"%>