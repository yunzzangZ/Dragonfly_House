<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@include file="../../include/header.jsp" %>
<div class="container">
    <div class="login">
        <ul class="login-tab">
            <li class="on"><button onclick="changeTab(this, 'personal')">개인회원</button></li>
            <li><button onclick="changeTab(this, 'business')">사업자회원</button></li>            
        </ul>
        <div class="login-container">
            <!-- 개인회원 로그인 폼 -->
            <form id="personal-login" method="post" action="${contextPath}/user/login/login">
                <input type="text" name="email" value="${sessionScope.email}"><br>
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
            <!-- 사업자회원 로그인 폼 -->
            <form id="business-login" method="post" action="${contextPath}/business/login/login" style="display:none;">
                <input type="text" name="businessEmail" placeholder="사업자 이메일"><br>
                <input type="password" name="businessPassword" placeholder="비밀번호"><br>
                <div class="login-remember">
                    <label for="rememberBusinessLogin">
                        <input type="checkbox" id="rememberBusinessLogin" name="rememberBusinessLogin"> 로그인 유지
                    </label>
                    <a href="#">비밀번호 재설정</a>
                </div>
                <div class="login-btn">
                    <input type="submit" value="로그인">
                </div>
            </form>
        </div>
        <div class="login-join">잠자리하우스가 처음이신가요? <a href="/dragonfly/register">회원가입</a></div>
    </div>
</div>
<%@include file="../../include/footer.jsp" %>

<script>
function changeTab(button, type) {
    var tabs = document.querySelectorAll('.login-tab li');
    tabs.forEach(function(tab) {
        tab.classList.remove('on');
    });
    button.parentElement.classList.add('on');

    var personalLogin = document.getElementById('personal-login');
    var businessLogin = document.getElementById('business-login');

    if (type === 'personal') {
        personalLogin.style.display = 'block';
        businessLogin.style.display = 'none';
    } else {
        personalLogin.style.display = 'none';
        businessLogin.style.display = 'block';
    }
}
</script>
