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
   <title>잠자리하우스 사업자</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet"/>
	<link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css"/>	
</head>
<body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="${contextPath}/admin/main">
				<img src="${contextPath}/resources/images/logo.png" alt="로고">
			</a>         
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="검색" aria-label="검색" aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
						<c:if test="${bu_email==null }">
							<li>로그인을 해주세요</li>
							<li><hr class="dropdown-divider" /></li>
                        	<li><a class="dropdown-item" href="${contextPath}/user/login/login">로그인</a></li>							
						</c:if>                      
						<c:if test="${bu_email!=null }">
							<li>${bu_email.bu_name }님 환영합니다.</li>
							<li><hr class="dropdown-divider" /></li>
                        	<li><a class="dropdown-item" href="${contextPath}/user/login/businessLogout">로그아웃</a></li>							
						</c:if>                             
                    </ul>
                </li>
            </ul>
        </nav>
        
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link" href="${contextPath}/business/index">HOME</a>                        
                            <div class="sb-sidenav-menu-heading">펜션관리</div>
                            <a class="nav-link" href="${contextPath}/business/pension/pen_listall">펜션정보</a> 
                            <a class="nav-link" href="${contextPath}/business/room/ro_listall">객실관리</a>     
                            <a class="nav-link" href="${contextPath}/business/facility/fac_listall">시설관리</a>
                            <a class="nav-link" href="${contextPath}/business/rofac/rofac_listall">객실시설관리</a>                                
                            <div class="sb-sidenav-menu-heading">예약관리</div>
                            <a class="nav-link" href="${contextPath}/business/index">예약목록</a> 
                            <a class="nav-link" href="${contextPath}/business/index">예약캘린더</a>    
                            <a class="nav-link" href="${contextPath}/business/index">예약대기자</a>
                            <div class="sb-sidenav-menu-heading">통계</div>
                            <a class="nav-link" href="${contextPath}/business/index">정산관리</a>                                                                                                                
                        </div>
                    </div>
                </nav>
            </div>
            
            <div id="layoutSidenav_content">
            	<div class="container-fluid manager-container">

