<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계좌 입금 결제 내역 목록</title>
</head>
<body>
   <%@include file="../include/adminHeader.jsp"%>

   <div class="container mt-5">
       <h2>계좌 입금 결제 내역 목록</h2>
       <table class="table table-striped">
           <thead>
               <tr>
                   <th>ID</th>
                   <th>이메일</th>
                   <th>결제 방법</th>
                   <th>금액</th>
                   <th>날짜</th>
                   <th>상태</th>
               </tr>
           </thead>
           <tbody>
               <c:forEach var="payment" items="${bankPayments}">
                   <tr>
                       <td>${payment.id}</td>
                       <td>${payment.email}</td>
                       <td>${payment.method}</td>
                       <td>${payment.amount}</td>
                       <td>${payment.date}</td>
                       <td>${payment.status}</td>
                   </tr>
               </c:forEach>
           </tbody>
       </table>
   </div>
</body>
</html>