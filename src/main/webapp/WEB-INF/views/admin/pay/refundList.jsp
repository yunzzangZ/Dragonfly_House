<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>환불 목록</title>
</head>
<body>
    <h2>환불 목록</h2>
    <table border="1">
        <tr>
            <th>환불 ID</th>
            <th>예약 번호</th>
            <th>결제 방식</th>
            <th>결제 이름</th>
            <th>결제 날짜</th>
            <th>결제 금액</th>
            <th>결제 상태</th>
            <th>상세보기</th>
        </tr>
        <c:forEach var="refund" items="${refunds}">
            <tr>
                <td>${refund.pay_id}</td>
                <td>${refund.booking_bo_num}</td>
                <td>${refund.pay_method}</td>
                <td>${refund.pay_name}</td>
                <td>${refund.pay_date}</td>
                <td>${refund.pay_amount}</td>
                <td>${refund.pay_status}</td>
                <td><a href="${contextPath}/admin/pay/refundView?refundId=${refund.pay_id}">상세보기</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
