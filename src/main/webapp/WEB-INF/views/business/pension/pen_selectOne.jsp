<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
        <h2>${pen.pen_name} 상세정보</h2>

		<table class="table table-striped">
           <tbody>			
				<tr>	
					<th>펜션 주소</th>
					<td>${pen.pen_addr}</td>
				</tr>			
				<tr>											
					<th>펜션 이름</th>
					<td>${pen.pen_name}</td>					
				</tr>				
				<tr>					
					<th>펜션 연락처</th>
					<td>${pen.pen_tel}</td>						
				</tr>					
				<tr>				
					<th>펜션 설명</th>
					<td>${pen.pen_description}</td>					
				</tr>			
				<tr>			
					<th>사업자 이메일</th>
					<td>${pen.business_bu_email}
				</tr>
			</tbody>
		</table>

		<div class="manager-btn">
			<a href="pen_update?pen_addr=${pen.pen_addr}" class="btn btn-primary">수정</a> 
			<a href="pen_delete?pen_addr=${pen.pen_addr}" class="btn btn-danger">삭제</a>			
		</div>
	</div>
<%@include file="../../include/adminFooter.jsp" %>
