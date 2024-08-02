<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Edit Mail Text</title>
</head>
<body>
    <h1>Edit Mail Text</h1>
    <form:form method="post" action="${pageContext.request.contextPath}/admin/mail/updateMailText" modelAttribute="mailText">
        <form:hidden path="mail_txt_code"/>
        <div>
            <label for="mail_txt_title">Title:</label>
            <form:input path="mail_txt_title" id="mail_txt_title"/>
        </div>
        <div>
            <label for="mail_txt_content">Content:</label>
            <form:textarea path="mail_txt_content" id="mail_txt_content"/>
        </div>
        <div>
            <input type="submit" value="Update"/>
        </div>
    </form:form>
</body>
</html>


