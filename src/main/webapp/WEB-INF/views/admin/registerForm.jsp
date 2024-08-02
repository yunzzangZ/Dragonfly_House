<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h2>Register</h2>
    <form action="${pageContext.request.contextPath}/register" method="post">
        <div>
            <label>Email:</label>
            <input type="email" name="email" required />
        </div>
        <div>
            <label>Password:</label>
            <input type="password" name="password" required />
        </div>
        <div>
            <label>Tel:</label>
            <input type="text" name="tel" required />
        </div>
        <div>
            <label>Name:</label>
            <input type="text" name="name" required />
        </div>
        <div>
            <button type="submit">Register</button>
        </div>
        <div>
            <c:if test="${not empty error}">
                <p style="color:red">${error}</p>
            </c:if>
        </div>
    </form>
    <a href="${pageContext.request.contextPath}/user/login/login">Login</a>
</body>
</html>
