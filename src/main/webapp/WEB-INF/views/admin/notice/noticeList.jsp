<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/adminHeader.jsp" %>
   <div>
       <h2>공지사항 목록</h2>
       <table class="table table-striped">
           <thead>
               <tr>
                   <th>번호</th>
                   <th>제목</th>
                   <th>작성일</th>
                   <th>작성자</th>
                   <th>수정일</th>
               </tr>
           </thead>
           <tbody>
               <c:forEach var="notice" items="${notices}">
                   <tr>
                       <td>${notice.notice_id}</td>
                       <td><a href="${pageContext.request.contextPath}/admin/notice/noticeView?notice_id=${notice.notice_id}">${notice.notice_title}</a></td>
                       <td>${notice.notice_date}</td>
                       <td>${notice.member_email}</td>
                       <td>${notice.notice_date}</td> <!-- Assuming notice_date is updated on modification -->
                   </tr>
               </c:forEach>
           </tbody>
       </table>
       <div class="manager-btn">
			<a href="${pageContext.request.contextPath}/admin/notice/noticeAdd" class="btn btn-primary">새 공지사항 작성</a>
       </div>
   </div>
<%@include file="../../include/adminFooter.jsp" %>