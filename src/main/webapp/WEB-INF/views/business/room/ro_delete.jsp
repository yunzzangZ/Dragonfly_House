<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ include file="../../include/businessHeader.jsp" %>
<div>
    <h2>방 삭제</h2> 
    <form action="${pageContext.request.contextPath}/business/room/ro_delete" method="get">
        <input type="hidden" id="ro_num" name="ro_num" value="<c:out value='${ro.ro_num}'/>">
        <p>정말로 방 번호 <c:out value='${ro.ro_num}'/>을 삭제하시겠습니까?</p>
        <div>
            <input type="submit" value="삭제">
            <a href="${pageContext.request.contextPath}/business/room/ro_listall">취소</a>
        </div>
    </form>
</div>
<%@ include file="../../include/adminFooter.jsp" %>
