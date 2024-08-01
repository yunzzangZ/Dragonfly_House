<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
        <h2>객실 목록</h2>   
		<table class="table table-striped">
			<thead>
	            <tr>
	                <th>방 번호</th>
	                <th>방 이름</th>
	                <th>방 금액</th>    
	                <th>방 정보</th>
	                <th>최대 인원</th>
	                <th>숙소 위치</th>    
	                <th>방 사진번호</th>
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach var="ro" items="${list}">
	                <tr>
	                    <td>${ro.ro_num}</td>
	                    <td><a href="ro_selectOne?ro_num=${ro.ro_num}">${ro.ro_name}</a></td>
	                    <td>${ro.ro_price}</td>
	                    <td>${ro.ro_info}</td>
	                    <td>${ro.ro_max_person}</td>
	                    <td>${ro.pension_pen_addr}</td>
	                    <td>${ro.picture_pic_num}</td>
	                </tr>
	            </c:forEach>
            </tbody>
        </table>
		<div class="manager-btn">  		
			<a href="ro_insert" class="btn btn-primary">추가</a>
		</div>
	</div>
<%@include file="../../include/adminFooter.jsp" %>