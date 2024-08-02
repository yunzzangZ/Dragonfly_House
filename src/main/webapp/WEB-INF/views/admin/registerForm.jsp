<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="${pageContext.request.contextPath}/user/signupU" method="post">
        <div>
            <label>이메일:</label>
            <input type="email" name="email" required />
        </div>
        <div>
            <label>비밀번호:</label>
            <input type="password" name="password" required />
        </div>
        <div>
            <label>전화번호:</label>
            <input type="text" name="tel" required />
        </div>
        <div>
            <label>이름:</label>
            <input type="text" name="name" required />
        </div>

     
        <div>
            <button type="submit">회원가입</button>
        </div>
        <div>
            <c:if test="${not empty error}">
                <p style="color:red">${error}</p>
            </c:if>
        </div>
    </form>
    <a href="${pageContext.request.contextPath}/user/login/login">로그인</a>
</body>
</html>

