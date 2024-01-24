<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="./css/registration.css">
   
</head>

<style>

body {
    font-family: Arial, sans-serif;
    background-image: url('./image/i2.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
    background-color: #f5f5f5;
}
.avatar-label img {
    width: 100%;
    height: auto;
}
</style>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	 
    <div class="profile-container">
        <h1>Create Profile</h1>
         <form id="register-form" method="post" action="register" >
            <div class="form-group">
            <center>
           <label for="avatar" class="avatar-label">
    <input type="file" id="avatar" name="avatar" class="avatar-input" accept="image/*" onchange="showImagePreview(this)">
    <div class="avatar-preview-container">
        <div class="avatar-circle">
            <img id="avatar-preview" src="#" alt="upload image" style="margin-top: 50px;"> <!-- Adjust the margin-top value to your preference -->
        </div>
    </div>
</label>


                </center>
            </div>
            <div class="form-group">
                <label for="fullname">Full Name:</label>
                <input type="text" id="fullname" name="fullname" placeholder="Fullname" required>
            </div>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" placeholder="Username" required>
            </div>
            
           <div class="form-group">
 			   <label for="email">Email:</label>
    			<input type="email" id="email" name="email" placeholder="Email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}">
			</div>

            <div class="form-group">
                <label for="phoneNumber">Contact Number:</label>
                <input type="text" id="phoneNumber" name="phoneNumber" pattern="[0-9]{10}" placeholder="Enter your phone number" required>
            </div>
            
            
            
	 	<div class="form-group">
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" placeholder="Password" required>
		</div>
            
            
            
            
            
             <div class="form-group">
    <div class="label-left">
        <label for="dob" >Date of Birth</label>
    </div>
    <div class="label-right">
        <label for="accounttype" >Account</label>

    </div>
    <div class="input-group">
        <input type="date" id="dob" name="dob" placeholder="DD/MM/YYYY" required>
        <select id="accounttype" name="accounttype">                            
        
            <option value=" disabled selected">Select Account type</option>
            <option value="Customer">Customer</option>
            <option value="Vehicle Owner">Vehicle Owner</option>
          
        </select>
    </div>
	<br>

            
            
            
            
            
			<div class="form-group form-button">
			<input type="submit" name="signup" id="signup"
					class="form-submit" value="Register" />
							
					</div>
				</div>
			</div>
		
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	
	
<script type="text/javascript">
	var status = document.getElementById("status").value;
	if (status == "success") {
		swal("Congrats!", "Account created Successfully", "success")
			.then(function () {
				// Redirect to login.jsp
				window.location.href = "login.jsp";
			});
	}
</script>
<script>
        function showImagePreview(input) {
            var preview = document.getElementById('avatar-preview');
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    preview.src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>



</body>

</html>