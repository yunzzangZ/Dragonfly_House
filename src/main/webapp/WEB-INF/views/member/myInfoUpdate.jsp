<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
    <div class="container mypage-container">
		<div>
			<%@include file="../include/nav.jsp"%>
			<div class="mypage-content">
				<div>
					<h3>회원정보수정</h3>
					<form action="${contextPath }/member/InfoUpdate" method="post">
						<div>
							<p>이메일</p>
							<input type="text" name="email" value="${mem.email }" readonly="readonly">
						</div>
						<div>
							<p>비밀번호</p>
							<a href="updatePw?email=${mem.email }" class="pw-update-btn">비밀번호변경</a>
						</div>
						<div style="clear: both;">
							<p>이름</p>
							<input type="text" name="name" value="${mem.name }">
						</div>
						<div>
							<p>회원 전화번호</p>
							<input type="text" name="tel" value="${mem.tel }">
						</div>
						<div class="mypage-btn"><input type="submit" value="수정" id = "Btnupdate" onclick="alert('수정 완료')"></div>
					</form>
				</div>
			</div>
		</div>
	</div>

<%@include file="../include/footer.jsp"%>