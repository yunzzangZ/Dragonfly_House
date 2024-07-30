<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/adminHeader.jsp" %>
   <div>
        <h2>Q&A 상세보기</h2>
  		<table class="table table-striped">
           <tr>
               <th>질문</th>
               <td>${faq.question}</td>
           </tr>
           <tr>
               <th>답변</th>
               <td>${faq.answer}</td>
           </tr>
       </table>
       <div class="manager-btn">           
	       <a href="${pageContext.request.contextPath}/admin/faq/faqUpdate?faq_id=${faq.faq_id}" class="btn btn-secondary">수정</a>
	       <form action="${pageContext.request.contextPath}/admin/faq/faqDel" method="post" style="display:inline;">
	           <input type="hidden" name="faq_id" value="${faq.faq_id}">
	           <button type="submit" class="btn btn-danger">삭제</button>
	       </form>
	       <a href="${pageContext.request.contextPath}/admin/faq/faqList" class="btn btn-primary">목록으로</a>
       </div>
   </div>
<%@include file="../../include/adminFooter.jsp" %>