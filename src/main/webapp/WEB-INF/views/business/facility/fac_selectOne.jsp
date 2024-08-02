<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
		<h2>시설 상세정보</h2>
        <table class="table table-striped">
			<thead>
                <tr>
                    <th>시설 번호</th>
                    <th>시설 이름</th>
                    <th>시설 설명</th>
                    <th>펜션 주소</th>
                </tr>
			</thead>
			<tbody>
                <tr>
                    <td>${fac.fac_id}</td>
                    <td>${fac.fac_name}</td>
                    <td>${fac.fac_description}</td>
                    <td>${fac.pension_pen_addr}</td>
                </tr>
			</tbody>                
        </table>
		<div class="manager-btn">
			<a href="fac_update?fac_id=${fac.fac_id}" class="btn btn-primary">수정</a>
			<a href="fac_delete?fac_id=${fac.fac_id}" class="btn btn-danger">삭제</a>
		</div>  
	</div>
<%@include file="../../include/adminFooter.jsp" %>