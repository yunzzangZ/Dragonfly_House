<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/adminHeader.jsp" %>
   <div>
       <h2>Q&A 목록</h2>
       <table class="table table-striped">
           <thead>
               <tr>
                   <th>번호</th>
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
       <div class="manager-btn">           
       		<a href="${pageContext.request.contextPath}/admin/faq/faqAdd" class="btn btn-primary">새 질문 추가</a>
       </div>
   </div>
<%@include file="../../include/adminFooter.jsp" %>