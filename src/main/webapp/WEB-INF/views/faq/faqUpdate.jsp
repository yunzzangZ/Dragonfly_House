<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문 수정</title>
</head>
<body>
   <%@include file="../include/header.jsp"%>
   <div class="container mt-5">
       <h2>자주 묻는 질문 수정</h2>
       <form action="${pageContext.request.contextPath}/admin/faq/faqUpdate" method="post">
           <input type="hidden" name="faq_id" value="${faq.faq_id}">
           <div class="form-group">
               <label for="question">질문</label>
               <input type="text" class="form-control" id="question" name="question" value="${faq.question}" required>
           </div>
           <div class="form-group">
               <label for="answer">답변</label>
               <textarea class="form-control" id="answer" name="answer" rows="10" required>${faq.answer}</textarea>
           </div>
           <button type="submit" class="btn btn-primary">수정</button>
           <a href="${pageContext.request.contextPath}/admin/faq/faqList" class="btn btn-secondary">목록으로</a>
       </form>
   </div>
   <%@include file="../include/footer.jsp"%>
</body>
</html>
