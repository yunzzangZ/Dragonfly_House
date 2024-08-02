<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<div class="container">
	<div>
		<div class="notice-content">
			<div>
				<h3>공지사항</h3>
		       <table class="table table-striped">
		           <thead>
		               <tr>
		                   <th>ID</th>
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
		                       <td><a href="${pageContext.request.contextPath}/notice/noticeView?notice_id=${notice.notice_id}">${notice.notice_title}</a></td>
		                       <td>${notice.notice_date}</td>
		                       <td>${notice.member_email}</td>
		                       <td>${notice.notice_date}</td> <!-- Assuming notice_date is updated on modification -->
		                   </tr>
		               </c:forEach>
		           </tbody>
		       </table>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
