<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드 결제 내역 상세 보기</title>
</head>
<body>
   <%@include file="../include/adminHeader.jsp"%>

   <div class="container mt-5">
       <h2>카드 결제 내역 상세 보기</h2>
       <table class="table table-striped">
           <tr>
               <th>ID</th>
               <td>${cardPayment.id}</td>
           </tr>
           <tr>
               <th>이메일</th>
               <td>${cardPayment.email}</td>
           </tr>
           <tr>
               <th>결제 방법</th>
               <td>${cardPayment.method}</td>
           </tr>
           <tr>
               <th>금액</th>
               <td>${cardPayment.amount}</td>
           </tr>
           <tr>
               <th>날짜</th>
               <td>${cardPayment.date}</td>
           </tr>
           <tr>
               <th>상태</th>
               <td>${cardPayment.status}</td>
           </tr>
       </table>
   </div>
</body>
</html>