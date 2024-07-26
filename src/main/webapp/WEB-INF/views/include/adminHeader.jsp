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
   <title>관리자 페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/style.css" type="text/css">    
</head>
<body>
   <div class="header">
        <div class="menu-item">
            <div class="container">
                <div class="row"> 
                    <div class="col-lg-2">
                        <div class="logo">
                            <a href="${contextPath}/admin/main">
                                <img src="${contextPath}/resources/images/logo.png" alt="로고">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10 right-menu">
                        <div class="nav-menu">
                            <nav class="mainmenu">
                                <ul>
                                    <li><a href="${contextPath}/admin/main">메인</a></li>
                                    <li><a href="${contextPath}/admin/pay/statistic">결제 통계</a></li>
                                    <li><a href="${contextPath}/admin/pay/payList">결제 내역</a></li>
                                    <li><a href="${contextPath}/admin/pay/payCard">카드 결제</a></li>
                                    <li><a href="${contextPath}/admin/pay/payBank">계좌 입금</a></li>
                                    <li><a href="${contextPath}/admin/pay/refundList">환불 요청</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>   
   </div>
</body>
</html>
