<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
		<h2>시설 목록</h2>

		<table class="table table-striped">
			<thead>
	    		<tr>
			        <th>시설 번호</th>
			        <th>시설물 이름</th>                
			        <th>시설 설명</th>
			        <th>펜션 주소</th>			        
			    </tr>
		    </thead>
		    <tbody>
			    <c:if test="${empty list}">
			        <tr>
			            <td colspan="4">등록된 시설이 없습니다.</td>
			        </tr>
			    </c:if>
			    <c:forEach var="fac" items="${list}">
			        <tr>
			            <td>${fac.fac_id}</td>
			            <td><a href="fac_selectOne?fac_id=${fac.fac_id}">${fac.fac_name}</a></td> <!-- fac_id 사용 -->
			            <td>${fac.fac_description}</td>
			            <td>${fac.pension_pen_addr}</td>			            
			        </tr>
			    </c:forEach>
			    </tr>
		    </tbody>
		</table>
		<div class="manager-btn">  		
			<a href="fac_insert" class="btn btn-primary">추가</a>
		</div>
	</div>
<%@include file="../../include/adminFooter.jsp" %>
