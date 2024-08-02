<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
        <h2>객실 시설 목록</h2>   

		<table class="table table-striped">
			<thead>
				<tr>
					<th>객실 번호</th>
					<th>객실 시설 이름</th>
					<th>설명</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="rofac" items="${list}">
					<tr>
						<td><a href="rofac_selectOne?room_ro_num=${rofac.room_ro_num}">${rofac.room_ro_num}</a></td>
						<td>${rofac.rofac_name}</td> 
						<td>${rofac.rofac_description}</td> 
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="manager-btn">  		
			<a href="rofac_insert" class="btn btn-primary">추가</a>
		</div>		
	</div>
<%@include file="../../include/adminFooter.jsp" %>
