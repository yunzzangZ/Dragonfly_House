<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
	<title>admin login</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">    

    <!-- Css Styles -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/style.css" type="text/css">
    
    <link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css">    
</head>
<body style="height:auto;">
	<div class="container">
		<div class="login">
		    <div class="login-container">
		        <div class="login-form">
		            <form method="post" action="${contextPath}/admin/login">
		                <input type="text" name="email" placeholder="관리자 이메일(계정)"><br>
		                <input type="password" name="password" placeholder="비밀번호"><br>
				        <div class="login-remember">
				            <a href="findId">이메일(계정) 찾기</a>
				            <a href="findPassword">비밀번호 찾기</a>
				        </div>    
		                <div class="login-btn">
		                    <input type="submit" value="관리자 로그인">
		                </div>
		            </form>
		        </div>
		    </div>
		</div>
	</div>
</body>
</html>