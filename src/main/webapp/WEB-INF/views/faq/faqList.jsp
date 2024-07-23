<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문 목록</title>
</head>
<body>
   <%@include file="../include/header.jsp"%>
   <div class="container mt-5">
       <h2>자주 묻는 질문 목록</h2>
       <table class="table table-striped">
           <thead>
               <tr>
                   <th>ID</th>
                   <th>질문</th>
               </tr>
           </thead>
           <tbody>
               <c:forEach var="faq" items="${faqs}">
                   <tr>
                       <td>${faq.faq_id}</td>
                       <td><a href="${pageContext.request.contextPath}/admin/faq/faqView?faq_id=${faq.faq_id}">${faq.question}</a></td>
                   </tr>
               </c:forEach>
           </tbody>
       </table>
       <a href="${pageContext.request.contextPath}/admin/faq/faqAdd" class="btn btn-primary">새 질문 추가</a>
   </div>
   <%@include file="../include/footer.jsp"%>
</body>
</html>
