<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SNS 발송 문구 상세</title>
</head>
<body>
<h1>SNS 발송 문구 상세</h1>
<table border="1">
    <tr>
        <th>예약번호...?</th>
        <td>${mailText.mail_txt_code}</td>
    </tr>
    <tr>
        <th>제목</th>
        <td>${mailText.mail_txt_title}</td>
    </tr>
    <tr>
        <th>내용</th>
        <td>${mailText.mail_txt_content}</td>
    </tr>
</table>
<a href="${pageContext.request.contextPath}/admin/mail/listMailTexts">목록으로 돌아가기</a>
<a href="editMailText.jsp?mailTxtCode=${mailText.mail_txt_code}">수정</a>
<a href="deleteMailText?mailTxtCode=${mailText.mail_txt_code}" onclick="return confirm('정말 삭제하시겠습니까?')">삭제</a>
</body>
</html>
