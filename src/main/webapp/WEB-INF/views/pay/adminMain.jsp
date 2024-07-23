<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/style.css" type="text/css">
</head>
<body>

   <%@include file="../include/header.jsp"%>
   <%@include file="../include/adminNav.jsp"%>

   <div class="container mt-5">
       <h2>관리자 페이지</h2>
       <ul class="list-group">
           <li class="list-group-item"><a href="${contextPath}/admin/pay/statistic">결제 내역 통계</a></li>
           <li class="list-group-item"><a href="${contextPath}/admin/pay/payList">결제 내역 목록 보기</a></li>
           <li class="list-group-item"><a href="${contextPath}/admin/pay/payCard">카드 결제 내역 목록 보기</a></li>
           <li class="list-group-item"><a href="${contextPath}/admin/pay/payBank">계좌 입금 결제 내역 목록 보기</a></li>
           <li class="list-group-item"><a href="${contextPath}/admin/pay/refundList">환불 요청 목록 보기</a></li>
       </ul>
   </div>

   <%@include file="../include/footer.jsp"%>
</body>
</html>
