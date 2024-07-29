<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
</head>
<body>
   <%@include file="../include/header.jsp"%>
   <div class="container mt-5">
       <h2>공지사항 작성</h2>
       <form action="${pageContext.request.contextPath}/admin/notice/noticeAdd" method="post">
           <div class="form-group">
               <label for="title">제목</label>
               <input type="text" class="form-control" id="title" name="title" required>
           </div>
           <div class="form-group">
               <label for="content">내용</label>
               <textarea class="form-control" id="content" name="content" rows="10" required></textarea>
           </div>
           <div class="form-group">
               <label for="member_email">작성자 이메일</label>
               <input type="email" class="form-control" id="member_email" name="member_email" required>
           </div>
           <button type="submit" class="btn btn-primary">작성</button>
           <a href="${pageContext.request.contextPath}/admin/notice/noticeList" class="btn btn-secondary">목록으로</a>
       </form>
   </div>
   <%@include file="../include/footer.jsp"%>
</body>
</html>
