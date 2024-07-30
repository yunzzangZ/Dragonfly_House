<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 상세 보기</title>
</head>
<body>
   <%@include file="/WEB-INF/views/include/header.jsp"%>
    <div class="container mt-5">
        <h2>1:1 문의 상세 보기</h2>
        <table class="table table-striped">
            <tr>
                <th>제목</th>
                <td>${cs.cs_title}</td>
            </tr>
            <tr>
                <th>내용</th>
                <td>${cs.cs_text}</td>
            </tr>
            <tr>
                <th>작성일</th>
                <td>${cs.cs_date}</td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>${cs.member_email}</td>
            </tr>
            <tr>
                <th>답변</th>
                <td>${cs.cs_response != null ? cs.cs_response : "답변 대기 중"}</td>
            </tr>
        </table>
        <a href="${pageContext.request.contextPath}/admin/cs/csList" class="btn btn-primary">목록으로</a>
        <c:if test="${cs.cs_response == null}">
            <form action="${pageContext.request.contextPath}/admin/cs/csResponse" method="post">
                <input type="hidden" name="cs_id" value="${cs.cs_id}">
                <textarea name="cs_response" placeholder="답변 내용을 입력하세요"></textarea>
                <button type="submit" class="btn btn-success">답변하기</button>
            </form>
        </c:if>
    </div>
   <%@include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
