<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
        <h2>객실 시설 상세정보</h2> 
		<table class="table table-striped">
			<thead>
	            <tr>
	                <th>객실 번호</th>
	                <th>객실 시설 이름</th>
	                <th>설명</th>
	            </tr>
	        </thead>
			<tbody>
	            <tr>
	                <td>${rofac.room_ro_num}</td>
	                <td>${rofac.rofac_name}</td> <!-- 방 시설 이름 출력 -->
	                <td>${rofac.rofac_description}</td> 
	            </tr>
            </tbody>
        </table>
		<div class="manager-btn">
			<a href="rofac_update?room_ro_num=${rofac.room_ro_num}" class="btn btn-primary">수정</a>
			<a href="rofac_delete?room_ro_num=${rofac.room_ro_num}" class="btn btn-danger">삭제</a>
		</div>        
	</div>

<%@include file="../../include/adminFooter.jsp" %>
