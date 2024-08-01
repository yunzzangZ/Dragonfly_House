<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
		<h2>시설 정보수정</h2>

		<form action="${contextPath}/business/facility/fac_update" method="post">
		   <div class="form-group">
               <label for="title">시설 번호</label>
               <input type="text" class="form-control" name="fac_id" value="${fac.fac_id}" readonly>
           </div>		
		   <div class="form-group">
               <label for="title">시설 이름</label>
               <input type="text" class="form-control" name="fac_name" value="${fac.fac_name}">
           </div>	    
		   <div class="form-group">
               <label for="title">시설 설명</label>
               <input type="text" class="form-control" name="fac_description" value="${fac.fac_description}">
           </div>	     
 		   <div class="form-group">
               <label for="title">펜션 주소</label>
               <input type="text" class="form-control" name="fac_description" value="${fac.pension_pen_addr}">
           </div>
		   <div class="manager-btn">    
	           <input type="submit" value="수정" class="btn btn-primary">
	           <a href="${contextPath}/business/facility/fac_listall" class="btn btn-secondary">목록으로</a>
	       </div>		
		</form>
	</div>
<%@include file="../../include/adminFooter.jsp" %>