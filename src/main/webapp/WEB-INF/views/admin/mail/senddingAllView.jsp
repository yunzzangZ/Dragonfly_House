<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>SNS 발송 현황</title>
</head>
<body>
    <h1>SNS 발송 현황</h1>
    <table border="1">
        <thead>
            <tr>
                <th>메일 텍스트 코드</th>
                <th>이메일</th>
                <th>발송 날짜</th>
                <th>발송 상태</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="sending" items="${sendings}">
                <tr>
                    <td>${sending.mail_txt_code}</td>
                    <td>${sending.email}</td>
                    <td>${sending.send_date}</td>
                    <td>${sending.send_status}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="${pageContext.request.contextPath}/admin/mail/sendding/senddingList">목록으로 돌아가기</a>
</body>
</html>
