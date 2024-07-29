<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 목록</title>
</head>
<body>
    <%@include file="/WEB-INF/views/include/header.jsp"%>
    <div class="container mt-5">
        <h2>1:1 문의 목록</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>문의 ID</th>
                    <th>제목</th>
                    <th>작성일</th>
                    <th>답변 상태</th>
                    <th>상세 보기</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cs" items="${csList}">
                    <tr>
                        <td>${cs.cs_id}</td>
                        <td>${cs.cs_title}</td>
                        <td>${cs.cs_date}</td>
                        <td>${cs.cs_response != null ? "답변 완료" : "답변 대기 중"}</td>
                        <td><a href="${pageContext.request.contextPath}/admin/cs/csView/${cs.cs_id}" class="btn btn-info">보기</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="${pageContext.request.contextPath}/admin/cs/csList" class="btn btn-primary">목록으로</a>
    </div>
    <%@include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
