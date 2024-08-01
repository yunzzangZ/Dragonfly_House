<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
        <h2>객실 추가</h2>   

		<form action="${contextPath}/business/room/ro_insert" method="post">
		   <div class="form-group">
               <label for="title">객실 번호</label>
               <input type="number" class="form-control" id="ro_num" name="ro_num" required>
           </div>		
		   <div class="form-group">
               <label for="title">객실 이름</label>
               <input type="text" class="form-control" id="ro_name" name="ro_name" required>
           </div>	    
		   <div class="form-group">
               <label for="title">펜션 주소</label>
               <input type="text" class="form-control" id="pension_pen_addr" name="pension_pen_addr" required>
           </div>	     
 		   <div class="form-group">
               <label for="title">객실 금액</label>
               <input type="number" class="form-control" id="ro_price" name="ro_price" required>
           </div>
  		   <div class="form-group">
               <label for="title">객실 정보</label>
               <input type="text" class="form-control" id="ro_info" name="ro_info" required>
           </div>          
 		   <div class="form-group">
               <label for="title">최대 인원</label>
               <input type="number" class="form-control" id="ro_max_person" name="ro_max_person" required>
           </div>
 		   <div class="form-group">
               <label for="title">방 사진번호</label>
               <input type="number" class="form-control" id="picture_pic_num" name="picture_pic_num" required>
           </div>                 
		   <div class="manager-btn">          
	           <input type="submit" value="추가" class="btn btn-primary"> 
	           <a href="${contextPath}/business/room/ro_listall" class="btn btn-secondary">목록으로</a>
	       </div>	
		</form>
	</div>
<%@include file="../../include/adminFooter.jsp" %>