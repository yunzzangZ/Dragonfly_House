<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/adminHeader.jsp" %>
   <div>
       <h2>Q&A 추가</h2>
       <form action="${pageContext.request.contextPath}/admin/faq/faqAdd" method="post">
           <div class="form-group">
               <label for="question">질문</label>
               <input type="text" class="form-control" id="question" name="question" required>
           </div>
           <div class="form-group">
               <label for="answer">답변</label>
               <textarea class="form-control" id="answer" name="answer" rows="10" required></textarea>
           </div>
           <div class="manager-btn">                   
           		<button type="submit" class="btn btn-primary">추가</button>
           		<a href="${pageContext.request.contextPath}/admin/faq/faqList" class="btn btn-secondary">목록으로</a>
           </div>
       </form>
   </div>
<%@include file="../../include/adminFooter.jsp" %>