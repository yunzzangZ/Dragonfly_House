<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환불 요청 상세 보기</title>
</head>
<body>
   <%@include file="../include/header.jsp"%>
   <%@include file="../include/adminNav.jsp"%>

   <div class="container mt-5">
       <h2>환불 요청 상세 보기</h2>
       <table class="table table-striped">
           <tr>
               <th>ID</th>
               <td>${refund.id}</td>
           </tr>
           <tr>
               <th>이메일</th>
               <td>${refund.email}</td>
           </tr>
           <tr>
               <th>금액</th>
               <td>${refund.amount}</td>
           </tr>
           <tr>
               <th>요청 날짜</th>
               <td>${refund.requestDate}</td>
           </tr>
           <tr>
               <th>상태</th>
               <td>${refund.status}</td>
           </tr>
       </table>
   </div>
   
   <%@include file="../include/footer.jsp"%>
</body>
</html>