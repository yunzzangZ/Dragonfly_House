<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ include file="../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<section class="content">
		<div>
			<h1>전체 외부 시설물 목록</h1>
		</div>

		<table class="table table-hover">
    		<tr>
		        <th>시설 번호</th>
		        <th>시설물 이름</th>                
		        <th>시설 설명</th>    
		        <th>펜션 주소</th>
		    </tr>
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
		    <tr>
		        <td colspan="4">
		            <div><a href="fac_insert">시설 추가</a></div> 
		        </td>
		    </tr>
		</table>

	</section>
</div>

<%@ include file="../include/footer.jsp" %>
