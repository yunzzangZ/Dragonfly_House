<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Refund View</title>
</head>
<body>
    <h2>Refund Details</h2>
    <table border="1">
        <tr>
            <th>결제 아이디</th>
            <td>${refund.pay_id}</td>
        </tr>
        <tr>
            <th>결제 이름</th>
            <td>${refund.pay_name}</td>
        </tr>
        <tr>
            <th>결제 방법</th>
            <td>${refund.pay_method}</td>
        </tr>
        <tr>
            <th>결제 날짜</th>
            <td>${refund.pay_date}</td>
        </tr>
        <tr>
            <th>결제 금액</th>
            <td>${refund.pay_amount}</td>
        </tr>
    </table>
</body>
</html>

