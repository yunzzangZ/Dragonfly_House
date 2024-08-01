<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메일 발송 현황</title>
    <script>
        window.onload = function() {
            var urlParams = new URLSearchParams(window.location.search);
            if (urlParams.has('status')) {
                var status = urlParams.get('status');
                if (status === 'success') {
                    alert('Email sent successfully!');
                } else if (status === 'error') {
                    alert('Error sending email.');
                }
            }
        };
    </script>
</head>
<body>
    <h1>메일 발송 현황</h1>
    <table border="1">
        <thead>
            <tr>
                <th>예약번호</th>
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
    <a href="${pageContext.request.contextPath}/admin/mail/sendMailForm">메일 발송</a>
</body>
</html>
