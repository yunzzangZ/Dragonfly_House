<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
        <h2>객실 시설 추가</h2>   

		<form action="${contextPath}/business/room/ro_insert" method="post">
		   <div class="form-group">
               <label for="title">객실 번호</label>
               <input type="text" class="form-control" name="room_ro_num" required>
           </div>		
		   <div class="form-group">
               <label for="title">객실 시설 이름</label>
               <input type="text" class="form-control" name="facility_fac_id" required>
           </div>	
		   <div class="form-group">
               <label for="title">객실 시설 설명</label>
               <textarea class="form-control" name="facility_description" required></textarea>
           </div>	                      
		</form>  
		<div class="manager-btn">          
	        <input type="submit" value="추가" class="btn btn-primary"> 
	        <a href="${contextPath}/business/rofac/rofac_listall" class="btn btn-secondary">목록으로</a>
	    </div>			       
	</div>
<%@include file="../../include/adminFooter.jsp" %>
