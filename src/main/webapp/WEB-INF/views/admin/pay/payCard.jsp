<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>카드 결제 내역 목록</title>
</head>
<body>
    <h2>카드 결제 내역 목록</h2>
    <table border="1">
        <tr>
            <th>결제 ID</th>
            <th>예약 번호</th>
            <th>결제 수단</th>
            <th>결제 날짜</th>
            <th>결제 금액</th>
            <th>상태</th>
            <th>상세보기</th>
        </tr>
        <c:forEach var="payment" items="${payments}">
            <tr>
                <td>${payment.pay_id}</td>
                <td>${payment.booking_bo_num}</td>
                <td>${payment.pay_method}</td>
                <td>${payment.pay_date}</td>
                <td>${payment.pay_amount}</td>
                <td>${payment.pay_status}</td>
                <td><a href="${pageContext.request.contextPath}/admin/pay/payViewCard?payId=${payment.pay_id}">상세보기</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

