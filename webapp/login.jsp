<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="./css/login.css">
        <title>Login Page</title>
</head>
<style>

.fa {
  padding: 20px;
  font-size: 20px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 4px 2px;
  align-items: center;
   justify-content: center;
   
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
  
}



.fa-google {
  background: #dd4b39;
  color: white;
  
}
.social-icons {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: -1%; /* Adjust the margin */
   text-align: center;
}

	body {
    font-family: Arial, sans-serif;
    background-image: url('image/car.jpg');

    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
}

.login-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 500px;
    height: 450px;
    backdrop-filter: blur(5px); /* Increase the blur intensity to 10px or as needed */
     background-color: rgba(0, 0, 0, 0.3); /* Adjust the alpha (transparency) value */
   
    border-radius: 10px;
    
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin: 0 auto;
    margin-top: 160px;
}
.forgot-password {
    margin-top: 1%; /* Adjust the margin as needed */
    position: absolute;
}
</style>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

 <div class="login-container">
    <h1>Sign In</h1>
    <form action="login" method="POST">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>
        </div>
        <div class="forgot-password ">
        <p>Forgot Password? <a href="./forgotpassword.jsp">Reset Password</a></p>
        </div>
        <br>
        <br>
        <div class="form-group">
   			<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
</div>		
		<div class="social-icons">	
			<div class="social-login">
            <p>Or sign in with:</p>
            <a href="#" class="fa fa-facebook"></a>
            <a href="#" class="fa fa-google"></a>
        </div>
        </div>

    </form>
    
    <p>Don't have an account? <a href="./registration.jsp">Sign up</a></p>
</div>


<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	
	
<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal({
            title: "Invalid!",
            text: "Username or Password",
            icon: "error", // You can use different SweetAlert icons like "error," "warning," "success," etc.
        });	}
	</script>	






</body>
</html>