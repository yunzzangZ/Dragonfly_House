<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
<div>
    <h2>펜션 추가</h2>

    <c:if test="${not empty message}">
        <div class="alert alert-danger">${message}</div>
    </c:if>

    <form action="${contextPath}/business/pension/pen_insert" method="post">
        <div class="form-group">
            <label for="pen_addr">펜션 주소</label>
            <input type="text" class="form-control" name="pen_addr" id="pen_addr" placeholder="예: Addr123 Maple St">
        </div>
        <div class="form-group">
            <label for="pen_name">펜션 이름</label>
            <input type="text" class="form-control" name="pen_name" id="pen_name" placeholder="펜션 이름을 입력하세요">
        </div>
        <div class="form-group">
            <label for="pen_tel">펜션 연락처</label>
            <input type="text" class="form-control" name="pen_tel" id="pen_tel" placeholder="예: 02-1234-5678">
        </div>
        <div class="form-group">
            <label for="pen_description">펜션 설명</label>
            <input type="text" class="form-control" name="pen_description" id="pen_description" placeholder="펜션 설명을 입력하세요">
        </div>
        <div class="form-group">
            <label for="business_bu_email">사업자이메일</label>
            <input type="text" class="form-control" name="business_bu_email" id="business_bu_email" placeholder="예: biz1001@example.com">
        </div>

        <div class="manager-btn">    
            <input type="submit" value="추가" class="btn btn-primary">
            <a href="${contextPath}/business/pension/pen_listall" class="btn btn-secondary">목록으로</a>
        </div>
    </form>
</div>
<%@include file="../../include/adminFooter.jsp" %>
