<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
	    <h2>객실 시설 수정</h2>
	    <form action="${contextPath}/business/rofac/rofac_update" method="post">
		   <div class="form-group">
               <label for="title">객실 번호</label>
               <input type="text" class="form-control" name="room_ro_num" value="${rofac.room_ro_num}" readonly="readonly">
           </div>		
		   <div class="form-group">
               <label for="title">시설 이름</label>
               <input type="text" class="form-control" name="facility_fac_id" value="${rofac.rofac_name}" required>
           </div>	    
		   <div class="form-group">
               <label for="title">설명</label>
               <textarea class="form-control" name="facility_description" placeholder="${rofac.rofac_description}" required></textarea>
           </div>	     
		   <div class="manager-btn">          
	           <input type="submit" class="btn btn-primary" value="수정">
	           <a href="${contextPath}/business/rofac/rofac_listall" class="btn btn-secondary">목록으로</a>
	       </div>
	    </form>
	</div>
<%@include file="../../include/adminFooter.jsp" %>
