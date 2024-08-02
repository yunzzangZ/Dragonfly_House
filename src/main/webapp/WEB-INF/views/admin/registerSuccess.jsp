<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 성공</title>
    <script type="text/javascript">
        function redirectToLogin() {
            alert("회원가입이 완료되었습니다. 로그인 페이지로 이동합니다.");
            window.location.href = '${pageContext.request.contextPath}/user/login/login';
        }
        window.onload = redirectToLogin;
    </script>
</head>
<body>
    <h2>회원가입 성공</h2>
    <p>회원가입이 완료되었습니다. 로그인 페이지로 이동합니다...</p>
</body>
</html>
