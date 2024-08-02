<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
    <div class="container mypage-container">
		<div>
			<%@include file="../include/nav.jsp"%>
			<div class="mypage-content">
				<div>
					<jsp:include page = "../card/cardSelect.jsp" flush = "false">
						<jsp:param value="${mem.email }" name = "email"/>
					</jsp:include>
				</div>
			</div>
		</div>
	</div>

<%@include file="../include/footer.jsp"%>