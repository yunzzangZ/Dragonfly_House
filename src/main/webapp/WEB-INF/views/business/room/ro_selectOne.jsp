<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
        <h2>객실 상세정보</h2>   
		<table class="table table-striped">
			<thead>
	            <tr>
	                <th>방 번호</th>
	                <th>방 이름</th>
	                <th>방 주소</th> 
	                <th>방 금액</th>    
	                <th>방 정보</th>
	                <th>최대 인원</th>
	                <th>방 사진번호</th>
	            </tr>
	        </thead>
			<tbody>
	            <tr>
	                <td>${ro.ro_num}</td>
	                <td>${ro.ro_name}</td>
	                <td>${ro.pension_pen_addr}</td>
	                <td>${ro.ro_price}</td>
	                <td>${ro.ro_info}</td>
	                <td>${ro.ro_max_person}</td>
	                <td>${ro.picture_pic_num}</td>
	            </tr>
	         </tbody>
        </table>
		<div class="manager-btn">
			<a href="ro_update?ro_num=${ro.ro_num}" class="btn btn-primary">수정</a>
			<a href="ro_delete?ro_num=${ro.ro_num}" class="btn btn-danger">삭제</a>
		</div>          
	</div>
<%@include file="../../include/adminFooter.jsp" %>
