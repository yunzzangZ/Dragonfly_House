<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SNS 발송 문구 추가</title>
</head>
<body>
<h1>SNS 발송 문구 추가</h1>
<form action="addMailText" method="post">
    <table>
        <tr>
            <th>제목</th>
            <td><input type="text" name="mail_txt_title" required></td>
        </tr>
        <tr>
            <th>내용</th>
            <td><textarea name="mail_txt_content" required></textarea></td>
        </tr>
    </table>
    <input type="submit" value="추가">
</form>
<a href="${pageContext.request.contextPath}/admin/mail/listMailTexts">목록으로 돌아가기</a>

</body>
</html>
