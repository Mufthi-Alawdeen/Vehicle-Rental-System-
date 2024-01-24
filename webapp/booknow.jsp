<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<HTML>
	<head>
	<title>Booking Reservation</title>
		
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
            padding: 13px 17px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            
            transition: background-color 0.3s;
            margin-right: -25%; /* Add margin to create space between elements */
        }

        .sign-in-btn:hover {
            background-color: #0056b3;
        }

        /* Style for the dropdown menu */
        .btn-group {
            position: relative;
            display: inline-block;
        }

        .btn-primary {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 13px 17px;
            border-radius: 5px;
            cursor: pointer;
            float: left;
            margin-left: -10px;
            font-size: 14px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
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
            z-index: 1;
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
            background-color: #0056b3;
        }

        /* Background image for the body */
        body {
            
            background-image: url('image/bg.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }

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
		.two-col {
			overflow: hidden;/* Makes this div contain its floats */
		}


		/* Add CSS for the label */
       /* CSS for labels */
        .two-col.col1 {
            display: block;
            font-size: 14px; /* Adjust the font size */
            margin-bottom: 5px; /* Add space between label and dropdown */
            margin-right: 30px;
        }

/* CSS for the dropdown */
        .two-col.col2 {
            width: 30%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 14px;
            vertical-align: top; /* Align the select element to the top of the line */
        }


		
		input[type=text] {
		  width: 50%;
		  padding: 12px;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		  margin-top: 6px;
		  margin-bottom: 16px;
          margin-left: 20px;
		  resize: vertical;
		}

        input[type="date"] {
            width: 200px; /* Adjust the width as needed */
            border: 1px solid #ccc; /* Add a border */
            border-radius: 5px; /* Add border radius */
            padding: 8px; /* Add padding for better spacing */
            font-size: 16px; /* Adjust the font size as needed */
            margin-top: 8px;
        }

		input[type=submit] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 17px;
            margin: 0 auto; /* Center horizontally */
            display: block; /* Ensure it takes the full width available */
        }



		input[type=submit]:hover {
		  background-color: #0056b3;
		}
		

		.container1 {
        border-radius: 12px;
        background-color: rgba(248, 248, 248, 0.7); /* Use rgba for transparency */
        padding: 15px;
        font-family: verdana;
        color: black;
        font-size: 15px;
        max-width: 450px;
        margin: 0 auto;
        font-weight: 1000;
        }
  

				
		#myBtn {
		  display: none;
		  position: fixed;
		  bottom: 20px;
		  right: 30px;
		  z-index: 99;
		  font-size: 16px;
		  border: none;
		  outline: none;
		  background-color: #1c9bd3;
		  color: white;
		  cursor: pointer;
		  padding: 10px;
		  border-radius: 50px;
		  opacity: 0.7;
		}

		#myBtn:hover {
		  background-color: #1c9bd3;
		  border: 2px solid #777;
		}
		
		input[type=number], select {
		  width: 40%;
		  padding: 12px;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		  margin-top: 6px;
		  margin-bottom: 16px;
		  resize: vertical;
		}
		
		#btnf {
            background-color: #007bff;
            color: white;
            padding: 14px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 17px;
            margin: 0 auto; /* Center horizontally */
            display: block; /* Ensure it takes the full width available */
            margin-bottom: 100px;
		}

		#btnf:hover {
		  background-color: #0056b3;
		}

		.login-button {
            /* ...Existing button styles... */
           	margin-top:-100px;
			background-color :#8bcb34;
        }

        .login-button::before {
           
            position: absolute;
          
           
            
			margin-left:20px;
			color: white;
        }

        .logo {
            position: relative;
            top: 10px;
            left: 100px;
        }
        
		
		

		
	</style>
	 <header class="header">
        <div class="container">
           
            <img id ="logo"  src="image/logo.png" width="110" height="90" > 

            <nav class="nav">
                <ul class="nav-list">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Explore Cars</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </nav>
            <button class="btn sign-in-btn">Sign In</button>
            <div class="btn-group">
                <button type="button" class="btn btn-primary">
                    <class="fas fa-bars">Menu</i>
                </button>
                <ul class="dropdown-menu" role="Menu">
                    <li><a href="login.jsp">Sign in</a></li>
                    <li><a href="editprofile.jsp">Edit Profile</a></li>
                    <li><a href="login.jsp">Sign out</a></li>
                    <li><a href="#">More</a></li>
                </ul>
            </div>
        </div>
    </header>
	</head>
	<br>
	<body>
	
		
			<br><br><br>
		
		
		
		
	<!-- Form Section -->	
		<h1 text align="center" style="font-family :verdana ;font-size:38px ;color: #fff; text-transform: uppercase;text-shadow: 5px 5px 7px #000;">Booking Reservation</h1>
		
		<br><br><br><br>
		<div class="container1">
		  <form class="" action="" method="post" autocomplete="off" enctype="multipart/form-data">
		  
				
		  
			  <div class="two-col1">
					<div class="col1">
					<label for="fname">Booking Date :</label>
					<input type="date" class = "fname" id="fname" name="fname" required>
				</div>
                <br>
					<div class="col2">
					<label for="lname">License No :</label>
					<input type="text" id="lname" name="Clname" placeholder=" Your License No " required>
					</div>
				</div>

                <label for="nic">NIC No:</label>
                <input type="text" id="nic" name="Cnic" pattern="[0-9VX]+" placeholder="National Identity Card No" required>

				
				<div class="two-col">
                    <div class="col1">
                        <label for="location">Location :</label>
                        <div class="col2">
                        <select id="location" name="Clocation">
                            <option value="Ampara">Ampara</option>
                            <option value="Anuradhapura">Anuradhapura</option>
                            <option value="Badulla">Badulla</option>
                            <option value="Batticaloa">Batticaloa</option>
                            <option value="Colombo">Colombo</option>
                            <option value="Galle">Galle</option>
                            <option value="Gampaha">Gampaha</option>
                            <option value="Hambantota">Hambantota</option>
                            <option value="Jaffna">Jaffna</option>
                            <option value="Kalutara">Kalutara</option>
                            <option value="Kandy">Kandy</option>
                            <option value="Kegalle">Kegalle</option>
                            <option value="Kilinochchi">Kilinochchi</option>
                            <option value="Kurunegala">Kurunegala</option>
                            <option value="Mannar">Mannar</option>
                            <option value="Matale">Matale</option>
                            <option value="Matara">Matara</option>
                            <option value="Moneragala">Moneragala</option>
                            <option value="Mullaitivu">Mullaitivu</option>
                            <option value="Nuwara Eliya">Nuwara Eliya</option>
                            <option value="Polonnaruwa">Polonnaruwa</option>
                            <option value="Puttalam">Puttalam</option>
                            <option value="Ratnapura">Ratnapura</option>
                            <option value="Trincomalee">Trincomalee</option>
                            <option value="Vavuniya">Vavuniya</option>
                        </select>
                    </div>
                </div>
                </div>
                
					<div class="col2">
					<label for="eadd">Required Kilometers :</label>
					<input type="number" id="email" name="Cemail" placeholder="In Kilometers">
					</div>
				</div>
				
			
			<br>
				
		</form>
		</div>
        <button type="submit" name="submit" id="btnf">Book Now</button>
				
		</b>
		<br>

        <footer class="footer">
            <div class="container">
                <div class="copyright">&copy; 2023 RAM Developers</div>
            </div>
        </footer>
	
	
	</body>
</HTML>