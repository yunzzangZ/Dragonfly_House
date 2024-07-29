<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 메인페이지</title>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <%@ include file="../include/nav.jsp" %>
    <div>
        <c:if test="${not empty member}">
            <c:set var="email" value="${member.email}" />
            <h2>${email}의 마이페이지</h2>
            <h2>${member.name}</h2>
            <h2>${member.tel}</h2>
        </c:if>
        <c:if test="${empty member}">
            <h2>회원 정보를 불러올 수 없습니다.</h2>
        </c:if>
    </div>
    <div>
        <jsp:include page="../card/cardSelect.jsp" flush="false">
            <jsp:param value="${member.email}" name="email"/>
        </jsp:include>
    </div>
    <%@ include file="../include/footer.jsp" %>
</body>
</html>