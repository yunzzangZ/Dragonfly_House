<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>카드 결제 상세 보기</title>
</head>
<body>
    <h2>카드 결제 상세 내역</h2>
    <table border="1">
        <tr>
            <th>결제 ID</th>
            <td>${payment.pay_id}</td>
        </tr>
        <tr>
            <th>예약 번호</th>
            <td>${payment.booking_bo_num}</td>
        </tr>
        <tr>
            <th>결제 수단</th>
            <td>${payment.pay_method}</td>
        </tr>
        <tr>
            <th>결제 날짜</th>
            <td>${payment.pay_date}</td>
        </tr>
        <tr>
            <th>결제 금액</th>
            <td>${payment.pay_amount}</td>
        </tr>
        <tr>
            <th>상태</th>
            <td>${payment.pay_status}</td>
        </tr>
    </table>
</body>
</html>
