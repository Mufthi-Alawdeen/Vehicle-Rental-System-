<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Deactivation</title>
    <link rel="stylesheet" href="styles.css"> <!-- Include your stylesheet here -->
    <style>
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        

        /* Container styles */
        .deactivate-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
            max-width: 400px;
        }

        /* Title styles */
        .deactivate-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* Input field styles */
        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Checkbox styles */
        .deactivate-checkbox-label {
            display: block;
            margin: 20px 0;
        }

        .deactivate-checkbox {
            margin-right: 10px;
            vertical-align: middle;
        }

        /* Deactivate button styles */
        .deactivate-button {
            background-color: #ff0000;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 15px 30px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .deactivate-button:hover {
            background-color: #ff3333;
        }
    </style>
</head>
<body>
    <div class="deactivate-container">
        <h1 class="deactivate-title">Deactivate Your Account</h1>
        <p>Please provide a reason for deactivation:</p>
        <input type="text" class="input-field" placeholder="Enter your reason">
        <label for="confirm-deactivation" class="deactivate-checkbox-label">
            <input type="checkbox" id="confirm-deactivation" class="deactivate-checkbox"> I am sure I want to deactivate my account
        </label>
        <button class="deactivate-button" id="deactivate-button" disabled>Deactivate</button>
    </div>

    <script>
        const confirmCheckbox = document.getElementById('confirm-deactivation');
        const deactivateButton = document.getElementById('deactivate-button');

        deactivateButton.addEventListener('click', function() {
            if (confirmCheckbox.checked) {
                // Display a confirmation message
                if (confirm("Are you sure you want to deactivate your account?")) {
                    // Redirect to login.jsp
                    window.location.href = 'login.jsp';
                }
            } else {
                alert("Please confirm the deactivation by checking the checkbox.");
            }
        });

        confirmCheckbox.addEventListener('change', function() {
            deactivateButton.disabled = !confirmCheckbox.checked;
        });
    </script>
</body>
</html>
