<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Send Mail</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>메일 발송</h1>
    <c:if test="${not empty successMessage}">
        <p style="color:green;">${successMessage}</p>
    </c:if>
    <c:if test="${not empty errorMessage}">
        <p style="color:red;">${errorMessage}</p>
    </c:if>
    <form:form action="${pageContext.request.contextPath}/admin/mail/sendMail" method="post" modelAttribute="emailForm">
        <table>
            <tr>
                <td>To:</td>
                <td><form:input path="to" /></td>
            </tr>
            <tr>
                <td>Subject:</td>
                <td><form:input path="subject" /></td>
            </tr>
            <tr>
                <td>Text:</td>
                <td><form:textarea path="text" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Send">
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>
