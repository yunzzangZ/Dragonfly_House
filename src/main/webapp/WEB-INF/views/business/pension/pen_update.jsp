<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
        <h2>펜션 정보수정</h2>
	    <form action="${contextPath}/business/pension/pen_update" method="post">
		   <div class="form-group">
               <label for="title">펜션 이름</label>
               <input type="text" class="form-control" name="pen_name" value="${pen.pen_name}">
           </div>		
		   <div class="form-group">
               <label for="title">펜션 주소</label>
               <input type="text" class="form-control" name="pen_addr" value="${pen.pen_addr}">
           </div>	    
		   <div class="form-group">
               <label for="title">펜션 연락처</label>
               <input type="text" class="form-control" name="pen_tel" value="${pen.pen_tel}">
           </div>	     
 		   <div class="form-group">
               <label for="title">펜션 설명</label>
               <input type="text" class="form-control" name="pen_description" value="${pen.pen_description}">
           </div>
		   <div class="manager-btn">          
	           <input type="submit" class="btn btn-primary" value="수정">
	       </div>
	    </form>
	</div>
<%@include file="../../include/adminFooter.jsp" %>