<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@include file="../../include/header.jsp" %>
<div class="container">
	<div class="login">
		<ul class="login-tab">
	        <li class="on"><button onclick="changeTab(this)">개인회원</button></li>
	        <li><button onclick="changeTab(this)">사업자회원</button></li>            
	    </ul>
		<div class="login-container">
			<form method="post">
				<input type="text" name="email" placeholder="이메일(계정)"><br>
				<input type="password" name="password" placeholder="비밀번호"><br>
				<div class="login-remember">
					<label for="rememberLogin">
			            <input type="checkbox" id="rememberLogin" name="rememberLogin"> 로그인 유지
			        </label>
		        	<a href="#">비밀번호 재설정</a>
		        </div>
				<div class="login-btn">
					<input type="submit" value="로그인">
				</div>
			</form>
		</div>
		<div class="login-join">잠자리하우스가 처음이신가요? <a href="#">회원가입</a></div>
	</div>
</div>
<%@include file="../../include/footer.jsp" %>