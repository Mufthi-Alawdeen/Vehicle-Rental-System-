<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>





 <div class="profile-container">
        <h1>Edit Profile</h1>
        <form id="edit-profile-form" method="post" action="editprofile">
            <!-- Avatar Input -->
            <center>
                <label for="avatar" class="avatar-label">
                    <input type="file" id="avatar" name="avatar" class="avatar-input">
                  
                </label>
            </center>
            <!-- Full Name Input -->
            <div class="form-group">
                <label for="fullname">Full Name:</label>
                <input type="text" id="fullname" name="fullname" placeholder="Fullname" value="${fullname}" required>
            </div>
            <!-- Username Input -->
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" placeholder="Username" value="${username}" required>
            </div>
            <!-- Email Input -->
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Email" value="${email}"required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}">
            </div>
            <!-- Contact Number Input -->
            <div class="form-group">
                <label for="phoneNumber">Contact Number:</label>
                <input type="text" id="phoneNumber" name="phoneNumber" pattern="[0-9]{10}" value="${phoneNumber}"placeholder="Enter your phone number" required>
            </div>
            <!-- Password Input -->
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" value="$password"placeholder="Password" required>
            </div>
            <!-- Date of Birth and Account Type Inputs -->
            <div class="form-group">
                <div class="label-left">
                    <label for="dob" >Date of Birth</label>
                </div>
                <div class="label-right">
                    <label for="accounttype">Account Type</label>
                </div>
                <div class="input-group">
                    <input type="date" id="dob" name="dob" placeholder="DD/MM/YYYY" required>
                    <select id="accounttype" name="accounttype">
                        <option value="" disabled selected>Select Account type</option>
                        <option value="Customer">Customer</option>
                        <option value="Vehicle Owner">Vehicle Owner</option>
                    </select>
                </div>
            </div>
            <!-- Submit Button -->
            <div class="form-group">
                <input type="submit" name="update-profile" id="update-profile" class="form-submit" value="Update Profile" />
            </div>
        </form>
    </div>
    
    
















</body>
</html>