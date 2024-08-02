<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<title>잠자리하우스 관리자</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${contextPath}/resources/admin/css/styles.css" type="text/css" />
<link rel="stylesheet" href="${contextPath}/resources/css/style.css"
	type="text/css" />
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="${contextPath}/admin/main"> <img
			src="${contextPath}/resources/images/logo.png" alt="로고">
		</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="검색"
					aria-label="검색" aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<c:if test="${email==null }">
						<li>로그인을 해주세요</li>
						<li><hr class="dropdown-divider" /></li>
						<li><a class="dropdown-item"
							href="${contextPath}/admin/login">로그인</a></li>
					</c:if>
					<c:if test="${email!=null }">
						<li>${email.name }님환영합니다.</li>
						<li><hr class="dropdown-divider" /></li>
						<li><a class="dropdown-item"
							href="${contextPath}/user/login/adminLogout">로그아웃</a></li>
					</c:if>
				</ul></li>
		</ul>
	</nav>

	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<a class="nav-link" href="${contextPath}/admin/index">HOME</a>
						<div class="sb-sidenav-menu-heading">결제내역</div>
						<a class="nav-link" href="${contextPath}/admin/pay/payList">결제내역</a>
							<a class="nav-link" href="${contextPath}/admin/pay/refundList">환불요청건 목록보기</a>
						<div class="sb-sidenav-menu-heading">공지사항</div>
						<a class="nav-link" href="${contextPath}/admin/notice/noticeList">공지사항</a>
						<a class="nav-link" href="${contextPath}/admin/faq/faqList">Q&A</a>
						<div class="sb-sidenav-menu-heading">1:1문의</div>
						<a class="nav-link" href="${contextPath}/admin/cs/csList">1:1문의내역</a>
						<a class="nav-link" href="${contextPath}/admin/chat">1:1문의 채팅</a>

					</div>
				</div>
			</nav>
		</div>

		<div id="layoutSidenav_content">
			<div class="container-fluid manager-container">