<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 내역 통계</title>
</head>
<body>
   <%@include file="../include/adminHeader.jsp"%>

   <div class="container mt-5">
       <h2>결제 내역 통계</h2>
       <table class="table table-striped">
           <thead>
               <tr>
                   <th>통계 항목</th>
                   <th>값</th>
               </tr>
           </thead>
           <tbody>
               <c:forEach var="stat" items="${stats}">
                   <tr>
                       <td>${stat.item}</td>
                       <td>${stat.value}</td>
                   </tr>
               </c:forEach>
           </tbody>
       </table>
   </div>
</html>
</body>
