<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>SNS 발송 문구 목록</title>
</head>
<body>
<h1>SNS 발송 문구 목록</h1>
<a href="${pageContext.request.contextPath}/admin/mail/addMailText">새 문구 추가</a>
<table border="1">
    <thead>
    <tr>
        <th>코드</th>
        <th>제목</th>
        <th>내용</th>
        <th>액션</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="mailText" items="${mailTexts}">
        <tr>
            <td>${mailText.mail_txt_code}</td>
            <td>${mailText.mail_txt_title}</td>
            <td>${mailText.mail_txt_content}</td>
            <td>
                <a href="${pageContext.request.contextPath}/admin/mail/viewMailText/${mailText.mail_txt_code}">보기</a>
                <a href="${pageContext.request.contextPath}/admin/mail/editMailText/${mailText.mail_txt_code}">수정</a>
                <a href="${pageContext.request.contextPath}/admin/mail/deleteMailText/${mailText.mail_txt_code}" onclick="return confirm('정말 삭제하시겠습니까?')">삭제</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

