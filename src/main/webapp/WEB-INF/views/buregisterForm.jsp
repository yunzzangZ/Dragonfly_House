<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Business Registration</title>
    <style>
        .form-container {
            width: 300px;
            margin: auto;
            padding-top: 50px;
        }
        .form-container div {
            margin-bottom: 15px;
        }
        .form-container label {
            display: block;
            margin-bottom: 5px;
        }
        .form-container input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #0056b3;
        }
        .message {
            color: green;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Business Registration</h2>
        <c:if test="${not empty message}">
            <div class="message">${message}</div>
        </c:if>
        <form action="${pageContext.request.contextPath}/admin/business/register" method="post">
            <div>
                <label for="email">Email</label>
                <input type="email" id="email" name="bu_email" required>
            </div>
            <div>
                <label for="password">Password</label>
                <input type="password" id="password" name="bu_password" required>
            </div>
            <div>
                <label for="tel">Telephone</label>
                <input type="tel" id="tel" name="bu_tel" required>
            </div>
            <div>
                <label for="name">Name</label>
                <input type="text" id="name" name="bu_name" required>
            </div>
            <div>
                <label for="code">Business Code</label>
                <input type="text" id="code" name="bu_code" required>
            </div>
            <div>
                <label for="approval">Approval Status</label>
                <input type="text" id="approval" name="bu_approval" required>
            </div>
            <div>
                <label for="accountNum">Account Number</label>
                <input type="text" id="accountNum" name="bu_account_num" required>
            </div>
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
