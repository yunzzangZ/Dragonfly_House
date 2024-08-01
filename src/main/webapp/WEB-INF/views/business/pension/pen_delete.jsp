<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
		<h2>펜션 삭제</h2>

		<form action="${contextPath}/pen_delete" method="get">
			<input type="hidden" name="pen_name" value="${pen.pen_name}">
			<p>정말로 이 펜션을 삭제하시겠습니까?</p>
			<p>펜션 이름: ${pen.pen_name}</p> 
			<input type="submit" value="삭제">
		</form>

		<div class="manager-btn">  
			<a href="${contextPath}/pen_list" class="btn btn-secondary">목록으로</a>
		</div>
   </div>
<%@include file="../../include/adminFooter.jsp" %>
