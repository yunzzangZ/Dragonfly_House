<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/adminHeader.jsp" %>
   <div>
        <h2>1:1문의 상세보기</h2>
        <table class="table table-striped">
            <tr>
                <th>제목</th>
                <td>${cs.cs_title}</td>
            </tr>
            <tr>
                <th>내용</th>
                <td>${cs.cs_text}</td>
            </tr>
            <tr>
                <th>작성일</th>
                <td>${cs.cs_date}</td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>${cs.member_email}</td>
            </tr>
            <tr>
                <th>답변</th>
                <td>${cs.cs_response != null ? cs.cs_response : "답변 대기 중"}</td>
            </tr>
        </table>
       <div class="manager-btn">           
	        <a href="${pageContext.request.contextPath}/admin/cs/csList" class="btn btn-secondary">목록으로</a>
	        <c:if test="${cs.cs_response == null}">
	            <form action="${pageContext.request.contextPath}/admin/cs/csResponse" method="post">
	                <input type="hidden" name="cs_id" value="${cs.cs_id}">
	                <button type="submit" class="btn btn-primary">답변하기</button><br>
	                <textarea class="form-control" name="cs_response" placeholder="답변 내용을 입력하세요"></textarea>
	            </form>
	        </c:if>
       </div>
   </div>
<%@include file="../../include/adminFooter.jsp" %>
