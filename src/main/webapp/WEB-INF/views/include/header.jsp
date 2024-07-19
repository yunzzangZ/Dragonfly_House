<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<title>잠자리하우스</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

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
<body>
	<div class="header">
        <div class="menu-item">
            <div class="container">
                <div class="row"> 
                    <div class="col-lg-2">
                        <div class="logo">
                            <a href="index">
                                <img src="${contextPath}/resources/images/logo.png" alt="로고">
                            </a>
                        </div>
                    </div>
					<div class="main-tab">
						<a href="#"><img src="${contextPath}/resources/images/icon-pin.png" alt="pin">어디로 떠날까요?</a>
						<a href="#"><img src="${contextPath}/resources/images/icon-calendar.png" alt="calendar">언제 떠날까요?</a>						
					</div>
                    <div class="col-lg-10 right-menu">
                        <div class="nav-menu">
                            <nav class="mainmenu">
                                <ul>
                                    <li><a href="#">FINE STAY</a></li>
                                    <li><a href="#">예약조회</a></li>
                                    <li><a href="#">공지사항</a></li>
                                    <li><a href="#">로그인</a></li>
                                    <li><a href="#">마이페이지</a></li>                                    
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>	
	</div>