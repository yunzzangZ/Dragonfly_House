<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<title>잠자리하우스</title>

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

<link rel="stylesheet" href="${contextPath}/resources/calendar/css/style.css">

<link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css">
</head>
<body>
	<div class="header">
		<div class="menu-item">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="${contextPath}/index"> <img
								src="${contextPath}/resources/images/logo.png" alt="로고">
							</a>
						</div>
					</div>
					<div class="main-tab">
						<a class="searchLoca-modal-btn" href="#">
							<img src="${contextPath}/resources/images/icon-pin.png" alt="pin">어디로 떠날까요?
						</a> 
						<a class="searchDate-modal-btn" href="#">
							<img src="${contextPath}/resources/images/icon-calendar.png" alt="calendar">언제 떠날까요?
						</a>
					</div>
					<div class="col-lg-10 right-menu">
						<div class="nav-menu">
							<nav class="mainmenu">
								<ul>
									<li><a href="#">FINE STAY</a></li>
									<li><a href="${contextPath}/Reservation_inquiryInput">예약조회</a></li>
									<li><a href="${contextPath}/admin/notice/noticeList">공지사항</a></li>
									<c:if test="${empty sessionScope.email}">
										<li><a href="${contextPath}/user/login/login">예약조회</a></li>
									</c:if>
									<c:if test="${not empty sessionScope.email}">
										<li><a href="${contextPath}/bookingListSelect?email=${email.email}">예약조회</a></li>
									</c:if>  									
									<li><a href="${contextPath}/notice/noticeView">공지사항</a></li>
									<c:if test="${empty sessionScope.email}">
										<li><a href="${contextPath}/user/login/login">로그인</a></li>
										<li><a href="${contextPath}/user/login/login">마이페이지</a></li>
									</c:if>
									<c:if test="${not empty sessionScope.email}">
										<li><a href="${contextPath}/user/login/logout">로그아웃</a></li>
										<li><a href="${contextPath}/member/myInfo?email=${email.email}">마이페이지</a></li>
									</c:if>                            
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
			<%@ include file="searchLoca.jsp" %>
			<%@ include file="searchDate.jsp" %>									
        </div>	
	</div>