<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/header.jsp"%>
<div class="container">
	<div class="login">
		<ul class="login-tab">
			<li class="on"><button onclick="changeTab(this)">개인회원</button></li>
			<li><button onclick="changeTab(this)">사업자회원</button></li>
		</ul>
		<div class="login-container">
			<div class="login-form">
				<form method="post" action="login">
					<input type="text" name="email" placeholder="이메일(계정)"><br>
					<input type="password" name="password" placeholder="비밀번호"><br>
					<div class="login-remember">
						<a href="findId">이메일(계정) 찾기</a> <a href="findPassword">비밀번호 찾기</a>
					</div>
					<div class="login-btn">
						<input type="submit" value="개인회원 로그인">
					</div>
				</form>
			</div>

			<div class="login-form hidden">
				<form method="post" action="${contextPath}/business/index">
					<input type="text" name="bu_email" placeholder="사업자 이메일(계정)"><br>
					<input type="password" name="bu_password" placeholder="비밀번호"><br>
					<div class="login-remember">
						<a href="findId">이메일(계정) 찾기</a> <a href="findPassword">비밀번호 찾기</a>
					</div>
					<div class="login-btn">
						<input type="submit" value="사업자 로그인">
					</div>
				</form>
			</div>
		</div>
		<div class="login-join">
			잠자리하우스가 처음이신가요? <a
				href="${pageContext.request.contextPath}/user/signupU">회원가입</a>
		</div>
	</div>

	<script type="text/javascript">
function changeTab(element) {
    const tabs = document.querySelectorAll('.login-tab li');
    const containers = document.querySelectorAll('.login-form');

    tabs.forEach(tab => {
        tab.classList.remove('on');
    });
    containers.forEach(container => {
        container.classList.add('hidden');
    });

    element.parentElement.classList.add('on');
    const index = Array.from(tabs).indexOf(element.parentElement);
    containers[index].classList.remove('hidden');
}
</script>
	<%@include file="../../include/footer.jsp"%>