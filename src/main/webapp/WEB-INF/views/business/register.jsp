<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Business Registration</h2>
        <form id="registrationForm">
            <div>
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div>
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div>
                <label for="tel">Telephone</label>
                <input type="tel" id="tel" name="tel" required>
            </div>
            <div>
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div>
                <label for="code">Business Code</label>
                <input type="text" id="code" name="code" required>
            </div>
            <div>
                <label for="approval">Approval Status</label>
                <input type="text" id="approval" name="approval" required>
            </div>
            <div>
                <label for="accountNum">Account Number</label>
                <input type="text" id="accountNum" name="accountNum" required>
            </div>
            <button type="submit">Register</button>
        </form>
    </div>

    <script>
        document.getElementById('registrationForm').addEventListener('submit', function(event) {
            event.preventDefault();

            const formData = {
                bu_email: document.getElementById('email').value,
                bu_password: document.getElementById('password').value,
                bu_tel: document.getElementById('tel').value,
                bu_name: document.getElementById('name').value,
                bu_code: document.getElementById('code').value,
                bu_approval: document.getElementById('approval').value,
                bu_account_num: document.getElementById('accountNum').value
            };

            fetch('/api/business/register', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(formData)
            })
            .then(response => response.text())
            .then(data => {
                alert(data);
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Registration failed!');
            });
        });
    </script>
</body>
</html>
