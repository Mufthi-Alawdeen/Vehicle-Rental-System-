<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Forgot Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            background-image: url('image/fg.jpg');
            background-attachment: fixed;
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            width: 650px;
            height: 500px;
            padding: 30px;
            text-align: center;
            display: flex;
            flex-direction: row; /* Arrange children side by side */
            align-items: center; /* Center vertically */
            backdrop-filter: blur(5px); /* Add a blur effect to the form background */
        }

        .cartoon-pic {
            max-width: 200px; /* Adjust the size as needed */
        }

        .form-container {
            flex: 1; /* Take up the remaining space */
        }

        h2 {
            color: #333;
        }

        input[type="email"] {
            width: 50%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="email"]:focus {
            border: 2px solid #007bff;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .message {
            margin: 10px 0;
            color: #007bff;
        }

      
        
        /* Style for the OTP field */
#otpField {
    display: none;
    padding: 20px;
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    margin-top: 20px;
}

#otpField label {
    font-weight: bold;
    font-size: 18px;
    color: #333;
}

#otpField input[type="text"] {
    width: 50%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

#otpField input[type="text"]:focus {
    border: 2px solid #007bff;
}

#otpField p.otp-instructions {
    color: #007bff;
    font-size: 14px;
}

#otpField button#submitOTP {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

#otpField button#submitOTP:hover {
    background-color: #0056b3;
}

.qrcode-wrapper {
    display: flex;
    justify-content: flex-end; /* Align to the right side */
    align-items: center;
    pointer-events: none; /* Disable pointer events on the QR code */
}

/* Hide the number when hovering over the QR code */
.qrcode-wrapper:hover:after {
    content: "";
}

/* Add margin to separate the QR code from the form */
.qrcode-wrapper {
    margin-right: 34.5%; /* Adjust the margin as needed */
}

#changePasswordField {
    display: none;
    margin-top: 20px;
    padding: 20px;
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

#changePasswordField label {
    font-weight: bold;
    font-size: 18px;
    color: #333;
    display: block; /* Display the label on a new line */
    margin-bottom: 10px; /* Add some spacing below the label */
}

#changePasswordField input[type="password"] {
       width: 50%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;

}

#changePasswordField input[type="password"]:focus {
    border: 2px solid #007bff;
}

#changePasswordField button#changePassword {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

#changePasswordField button#changePassword:hover {
    background-color: #0056b3;
}

        
    </style>
</head>
<body>
    <div class="container">
        <img class="cartoon-pic" src="./image/forgotpassword.png" alt="Cartoon Image">
        <div class="form-container">
            <h2>Forgot Password</h2>
            <form action="forgotpassword" method="POST" id="emailForm">
                <label for="email">Enter your email:</label><br>
                <input type="email" id="email" name="email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" required>
                <br>
                <button type="button" class="btn" id="sendOTPButton">Send OTP</button>
                
                <div id="otpField" style="display: none;">
                    <label for="otp">Enter OTP:</label>
                    <br>
                    <input type="text" id="otp" name="otp" required>
                    <br>
                    <p class="otp-instructions">Scan the QR code to retrieve the 4-digit code.</p>
                    <!-- Add an empty div for the QR code -->
                    <div class="qrcode-wrapper" id="qrcode"></div>
                    <div id="qrcode"></div>
                    <br>
                    <button type="button" id="submitOTP" class="btn">Submit OTP</button>
                </div>
                <!-- Change Password field -->
<div id="changePasswordField" style="display: none;">
    <label for="newPassword">New Password:</label><br>
    <input type="password" id="newPassword" name="newPassword" required>
    <br>
    <input type="submit" name="changepassword" id="changepassword" class="btn" value="Change Password" />

</div>
                
                
                <p class="message">A password reset link will be sent to your email.</p>
            </form>
        </div>
    </div>
	 <input type="hidden" id="status" name="status" value="${status}">
    <!-- Include the qrcode.js library -->
    <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>

    <script>
        const sendOTPButton = document.getElementById("sendOTPButton");
        const otpField = document.getElementById("otpField");
        const submitOTPButton = document.getElementById("submitOTP");
        const otpInput = document.getElementById("otp");
        const qrCodeDiv = document.getElementById("qrcode");

        let generatedCode = ""; // Store the generated 4-digit code here

        sendOTPButton.addEventListener("click", () => {
            otpField.style.display = "block";

            // Generate a random 4-digit code
            generatedCode = generateRandomCode();
            displayQRCode(generatedCode);
        });

        submitOTPButton.addEventListener("click", () => {
            const enteredOTP = otpInput.value;

            if (enteredOTP === generatedCode) {
                alert("OTP validation successful!");

                // Hide the OTP field
                otpField.style.display = "none";

                // Show the Change Password field
                const changePasswordField = document.getElementById("changePasswordField");
                changePasswordField.style.display = "block";
            } else {
                alert("Invalid OTP. Please try again.");
            }
        });

       
        submitOTPButton.addEventListener("click", () => {
            const enteredOTP = otpInput.value;

            if (enteredOTP === generatedCode) {
            	
            	 
                
            } else {
                alert("Invalid OTP. Please try again.");
            }
        });

        // Function to generate a random 4-digit code
        function generateRandomCode() {
            return Math.floor(1000 + Math.random() * 9000).toString();
        }

        // Function to display a QR code with the 4-digit code
        function displayQRCode(code) {
            const qrCode = new QRCode(qrCodeDiv, {
                text: code,
                width: 128,
                height: 128
            });
        }
        
       	
    </script>
    
     <script type="text/javascript">
    	var status = document.getElementById("status").value;
    	if (status === "success") {
            swal({
                title: "Success!",
                text: "Password changed successfully",
                icon: "success",
            });
    	</script>
</body>
</html>