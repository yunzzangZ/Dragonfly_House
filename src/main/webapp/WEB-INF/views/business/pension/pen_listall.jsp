<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
       <h2>펜션 정보</h2>
		<table class="table table-striped">
           <thead>			
				<tr>				
					<th>펜션 이름</th>
					<th>펜션 주소</th>
					<th>펜션 연락처</th>
					<th>펜션 설명</th>		
				</tr>
           </thead>
           <tbody>			
				<c:forEach var="pen" items="${list}">
					<tr>
						<td>${pen.pen_name}</td>
						<td><a href="pen_selectOne?pen_addr=${pen.pen_addr}">${pen.pen_addr}</a></td>
						<td>${pen.pen_tel}</td>
						<td>${pen.pen_description}</td>
					</tr>
				</c:forEach>
           </tbody>				
		</table>
		<div class="manager-btn">
			<a href="${contextPath}/business/pension/pen_insert" class="btn btn-primary">추가</a>
		</div>   
	</div>
<%@include file="../../include/adminFooter.jsp" %>
