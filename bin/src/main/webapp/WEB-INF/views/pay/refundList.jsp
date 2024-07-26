<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환불 요청 목록</title>
</head>
<body>
   <%@include file="../include/header.jsp"%>
   <%@include file="../include/adminNav.jsp"%>

   <div class="container mt-5">
       <h2>환불 요청 목록</h2>
       <table class="table table-striped">
           <thead>
               <tr>
                   <th>ID</th>
                   <th>이메일</th>
                   <th>금액</th>
                   <th>요청 날짜</th>
                   <th>상태</th>
               </tr>
           </thead>
           <tbody>
               <c:forEach var="refund" items="${refunds}">
                   <tr>
                       <td>${refund.id}</td>
                       <td>${refund.email}</td>
                       <td>${refund.amount}</td>
                       <td>${refund.requestDate}</td>
                       <td>${refund.status}</td>
                   </tr>
               </c:forEach>
           </tbody>
       </table>
   </div>
   
   <%@include file="../include/footer.jsp"%>
</body>
</html>