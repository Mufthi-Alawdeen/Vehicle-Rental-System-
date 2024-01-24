<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="./css/editprofile.css">
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    
    <style>
        #background{
         background-size: cover;
    background-position: center;
    position: absolute;
    top: 15%;
    width: 90%;
    height: 80%;
    left:5%;
    border-radius: 30px;
    z-index: -1;
    transform: translate(1%, 1%);
        
        
        }
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Basic styles for the header */
        .header {
            background-color: #f8fcfd;
            color: #737373;
            padding: 10px 0;
        }

        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            margin-left :-7.5px;
        }

        /* Style for the navigation links */
        .nav {
            display: flex;
            align-items: center;
            font-weight: bold;
        }

        .nav-list {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .nav-list li a {
            text-decoration: none;
            color: #737373;
            font-weight: bold;
            transition: color 0.3s;
        }

        .nav-list li a:hover {
            color: #007bff;
        }

        /* Style for the sign-in button */
        .sign-in-btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            
            transition: background-color 0.3s;
            margin-right: -25%; /* Add margin to create space between elements */
        }

        .sign-in-btn:hover {
            background-color: #0056b3;
        }

        /* Style for the dropdown menu */
        .btn-group {
            position: relative;
        }

        .dropdown-menu {
            background-color: #333;
            position: absolute;
            top: 110%;
            right: 0;
            display: none;
            list-style: none;
            margin: 0;
            padding: 0;
            transition: opacity 0.3s;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
        }

        .btn-group:hover .dropdown-menu {
            display: block;
            opacity: 1;
        }

        .dropdown-menu li a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            display: block;
            transition: background-color 0.3s;
            white-space: nowrap;
        }

        .dropdown-menu li a:hover {
            background-color: #007bff;
        }

        /* Background image for the body */
       

        /* Style for the footer */
        .footer {
            background-color: #f8fcfd;
            color: #737373;
            padding: 20px 0;
            text-align: center;
        }

        .copyright {
            font-size: 14px;
            font-weight: bold;
        }
        @charset "UTF-8";



.profile-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 550px;
    height: 750px;
    background-color: rgba(249, 249, 249, 0.78);
    border: 1px solid rgba(249, 249, 249, 0.78);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin: 0 auto; /* Center horizontally by setting margin-left and margin-right to "auto" */
    margin-top: 50px;
}


.avatar-input {
    display: none;
}

.avatar-label {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    border: 2px dashed #0d0606;
    overflow: hidden;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
}

.avatar-label img {
    width: 100%;
    height: auto;
}

#h1 {
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 10px;
}

label {
    display: block;
    font-weight: bold;
}

input[type="text"],
input[type="email"],
input[type="password"],
textarea {
    width: 100%;
    padding: 12px; /* Increased padding for better spacing */
    border: 1px solid #ccc; /* Softer border color */
    border-radius: 6px; /* Slightly rounder corners */
    font-size: 16px; /* Adjust font size */
    color: #333; /* Text color */
    background-color: #f8f8f8; /* Background color */
    transition: border-color 0.3s ease; /* Smooth transition for border color on focus */
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus,
textarea:focus {
    border-color: #007bff; /* Change border color on focus */
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* Add a subtle shadow on focus */
}


button {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
}

.profile-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100%;
}

#profile-form {
    width: 100%;
    max-width: 400px;
}

input[type="file"] {
    cursor: pointer;
}

button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    margin-top: 10px;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}
/* Apply the same styling to input[type="date"] and select */
#accounttype,
#dob {
    width: 40%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 16px;
    color: #333;
    background-color: #f8f8f8;
    margin-right: 10px; /* Add spacing between the fields */
}

/* Style the placeholder text */
#dob::placeholder,
#accounttype::placeholder {
    color: #999; /* Change the color to match your design */
}

/* Style the border and background when the element is focused */
#dob:focus,
#accounttype:focus {
    border: 1px solid #007bff; /* Change the color to match your design */
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* Change the shadow as needed */
}
 body {
            background-image: url('image/car.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }


.label-left {
    float: left; /* Float the "Location" label to the left */
    margin-right: 10px; /* Add spacing between label-input pairs */
}

.label-right {
    text-align: right; /* Right-align the "Date of Birth" label within its container */
    margin-right: 32.5%;
}

/* Adjust the margin-top for the "Location" label */
.label-left label[for="accounttype"] {
    margin-top: -5px; /* Move it up by 5px */
    margin-right : -10%;
    
}

/* Adjust the margin-top for the "Date of Birth" label */
.label-right label[for="dob"] {
    text-align: right; /* Right-align the "Date of Birth" label within its container */
    margin-top: -10px; /* Move it up by 10px */
}

.input-group {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.input-group label,
.input-group input,
.input-group select {
    flex: 1;
    margin-right: 5%; /* Add spacing between label-input pairs */
}

/* Remove margin-right from the last label to prevent extra spacing */
.input-group:last-child label {
    margin-right: 0;
}


.form-submit {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    margin-top: 10px;
    width: 100%; /* Use 100% width to fill the container */
    transition: background-color 0.3s; /* Add smooth hover effect */
}

.form-submit:hover {
    background-color: #0056b3;
}


input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    margin-top: 10px;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}
/* Adjust the size of the Account Type field */
#accounttype {
    width: 70%; /* Increase the width as needed */
    padding: 12px; /* Increase the padding to make it larger */
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 16px;
    color: #333;
    background-color: #f8f8f8;
    margin-right: 15%;
}

    </style>
</head>
<body>
  <header class="header">
    <div class="container">
        <img class="logo" src="image/logo.png" width="110" height="90">
        <nav class="nav">
            <ul class="nav-list">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="ExploreCar.jsp">Explore Cars</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="contactus.jsp">Contact Us</a></li>
            </ul>
            
        </nav>
        <button class="btn sign-in-btn">Sign In</button>
        <div class="btn-group">
            <button type="button" class="btn btn-primary">
                <i class="fas fa-bars"></i> <!-- Font Awesome menu icon -->
            </button>

            <ul class="dropdown-menu" role="menu">
                <li><a href="login.jsp">Sign in</a></li>
                <li><a href="editprofile.jsp">Edit Profile</a></li>
                <li><a href="login.jsp">Sign out</a></li>
                <li><a href="deactiveacc.jsp">Deactivate</a></li>
            </ul>
        </div>
    </div>
</header>

	<br>
	<br>
    <!-- Your content here -->
    
    
    
    
   <%@ page import="com.velocity.registration.User" %>
   
    <%
String avatar = request.getParameter("avatar");
String fullname = request.getParameter("fullname");
String username = request.getParameter("username");
String email = request.getParameter("email");
String phoneNumber = request.getParameter("phoneNumber");
String password = request.getParameter("password");
String dob = request.getParameter("dob");
String accounttype = request.getParameter("accounttype");
%>
  
    
    

 <div class="profile-container">
        <h1>Edit Profile</h1>
       <form id="edit-profile-form" method="post" action="editprofile">
            <!-- Avatar Input -->
            <input type="hidden" name="user_id" value="<%= request.getParameter("Uid") %>">

            <center>
                <label for="avatar" class="avatar-label">
                    <input type="file" id="avatar" name="avatar" class="avatar-input" value="<%= request.getParameter("avatar") %>">
                    <img src="<%= request.getParameter("avatar") %>" alt="Avatar Image">
                </label>
            </center>

            <!-- Full Name Input -->
            <div class="form-group">
                <label for="fullname">Full Name:</label>
                <input type="text" id="fullname" name="fullname" value="<%= fullname %>" required>
            </div>

            <!-- Username Input -->
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="<%= session.getAttribute("username") %>" required>
            </div>

            <!-- Email Input -->
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%= email %>" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}">
            </div>

            <!-- Contact Number Input -->
            <div class="form-group">
                <label for="phoneNumber">Contact Number:</label>
                <input type="text" id="phoneNumber" name="phoneNumber" pattern="[0-9]{10}" value="<%= session.getAttribute("phoneNumber") %>" required>
            </div>

            <!-- Password Input -->
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" value="<%= session.getAttribute("password") %>" required>
            </div>

            <!-- Date of Birth and Account Type Inputs -->
            <div class="form-group">
                <div class="label-left">
                    <label for="dob">Date of Birth</label>
                </div>
                <div class="label-right">
                    <label for="accounttype">Account Type</label>
                </div>
                <div class="input-group">
                    <input type="date" id="dob" name="dob" value="<%= session.getAttribute("dob") %>" required>
                    <select id="accounttype" name="accounttype">
                        <option value="" disabled>Select Account type</option>
                        <option value="Customer" <%= "Customer".equals(session.getAttribute("accounttype")) ? "selected" : "" %>>Customer</option>
                        <option value="Vehicle Owner" <%= "Vehicle Owner".equals(session.getAttribute("accounttype")) ? "selected" : "" %>>Vehicle Owner</option>
                    </select>
                </div>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <input type="submit" name="update-profile" id="update-profile" class="form-submit" value="Update Profile">
            </div>
        </form>
    </div>
	
	
	<br>
    <footer class="footer">
        <div class="container">
            <div class="copyright">&copy; 2023 RAM Developers</div>
        </div>
    </footer>

    <!-- Your scripts and other links here -->

</body>
</html>
