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
					<h3>${mem.name }님의 회원탈퇴</h3>
					<form action="${contextPath }/member/memberDeleteDone" method="get">
						<div>
							<p>이메일(계정)</p>
							<input type="text" value=${mem.email } name="email" readonly>
						</div>
						<div>
							<p>이메일 입력</p>
							<input type="text" name="check_email">
						</div>						
						<div>
							<p>인증번호 입력</p>
							<input type="number" name="check_number">
						</div>
						<div class="mypage-btn">
							<input type="submit" value="회원탈퇴" id="Btnemail" onclick="location.href='${contextPath}/member/memberDeleteDone'">
						</div>					
					</form>
				</div>
			</div>
		</div>
	</div>

<%@include file="../include/footer.jsp"%>

<script type="text/javascript">
	const checknum = Math.floor(Math.random() * 101);
	document.write('checknum : ' + checknum + '<br>');
</script>