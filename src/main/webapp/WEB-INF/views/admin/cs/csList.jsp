<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/adminHeader.jsp" %>
   <div>
        <h2>1:1문의 목록</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                    <th>답변상태</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cs" items="${csList}">
                    <tr>
                        <td>${cs.cs_id}</td>
                        <td><a href="${pageContext.request.contextPath}/admin/cs/csView/${cs.cs_id}">${cs.cs_title}</a></td>
                        <td>${cs.cs_date}</td>
                        <td>${cs.cs_response != null ? "답변 완료" : "답변 대기 중"}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
       <div class="manager-btn">           
			<a href="${pageContext.request.contextPath}/admin/cs/csList" class="btn btn-primary">목록으로</a>
       </div>
   </div>
<%@include file="../../include/adminFooter.jsp" %>
