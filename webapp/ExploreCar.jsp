<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Car</title>
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    
    <link rel="Home stylesheet" href="./css/ExploreCar.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
     <link rel="stylesheet" href="./css/style.css">
</head>
<style>

 #myBackground {
    background-image: url('image/home.jpg');
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
         background: linear-gradient(to right, #ffffff 0%, #dcdcdc 85%);
        color: #737373; /* Choose your text color */
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
        color: #737373; /* Choose your link color */
        font-weight: bold;
        transition: color 0.3s;
    }

    .nav-list li a:hover {
        color: #007bff; /* Choose your link color on hover */
    }

    /* Style for the sign-in button */
   .sign-in-btn {
    background-color: #007bff; /* Choose your button color */
    color: white; /* Choose your button text color */
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-weight: bold;
    transition: background-color 0.3s;
    margin-right: -20%; /* Add margin to create space between elements */
}


    .sign-in-btn:hover {
        background-color: ##007bff; /* Choose your button color on hover */
    }

    /* Style for the footer */
    .footer {
        background-color: #f8fcfd; /* Choose your footer background color */
        color: #737373; /* Choose your footer text color */
        padding: 20px 0;
        text-align: center; /* Center-align the text */
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
    }

    /* Style for the copyright notice */
    .copyright {
        font-size: 14px;
        font-weight: bold;
    }
/* Style for the dropdown menu */
.dropdown-menu {
    background-color: #333; /* Background color of the dropdown menu */
    position: absolute;
    top: 75%; /* Position the dropdown below the button */
    right: 10%; /* Position the dropdown to the right */
    display: none;
    list-style: none;
    margin: 0;
    padding: 0;
    transition: opacity 0.3s;
    border-radius: 5px; /* Add some border-radius for rounded corners */
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.5); /* Add a subtle shadow */
}

.btn-group:hover .dropdown-menu {
    display: block; /* Display the dropdown menu on hover */
    opacity: 1; /* Show the dropdown with opacity animation */
   
}

.dropdown-menu li a {
    color: #fff; /* Link text color */
    text-decoration: none;
    padding: 10px 20px; /* Adjust padding as needed */
    display: block;
    transition: background-color 0.3s;
    white-space: nowrap; /* Prevent menu from breaking into multiple lines */
}

.dropdown-menu li a:hover {
    background-color: #007bff; /* Background color on hover */
}

</style>
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
	 
		
		<br><br>
		
          <fieldset>
			<div class="row">
			  <div class="column">
				<img src = "image/C1.jpg" class = "int">
			  </div>
			  <div class="column1">
				<h2 class = "CarName">Porsche 918 Spyder</h2>
                <div class = "row1">
                    <div class="col">
                        <span class="material-symbols-outlined">person</span>
                        <p>4 Seats</p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">auto_transmission</span>
						<p>Mannual</p>
                    </div>
                </div>
                <br>
                <div class = "row2">
                    <div class="col">
                        <i class="material-icons">luggage</i>
						<p> 1 Large bag </p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">swap_driving_apps_wheel</span>
						<p> Unlimited mileage </p>
                    </div>
                </div>
			  </div>
			</div>
			</div>
			<input type ="button" value ="Book Now" class = "bookbtn">
			<h1 class = "price">$ 99.00</h1> 
		</fieldset>
		
		<br><br>
          <fieldset>
			<div class="row">
			  <div class="column">
				<img src = "image/C2.jpeg" class = "int">
			  </div>
			  <div class="column1">
				<h2 class = "CarName">Porsche 918 Spyder</h2>
                <div class = "row1">
                    <div class="col">
                        <span class="material-symbols-outlined">person</span>
                        <p>4 Seats</p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">auto_transmission</span>
						<p>Mannual</p>
                    </div>
                </div>
                <br>
                <div class = "row2">
                    <div class="col">
                        <i class="material-icons">luggage</i>
						<p> 1 Large bag </p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">swap_driving_apps_wheel</span>
						<p> Unlimited mileage </p>
                    </div>
                </div>
			  </div>
			</div>
			</div>
			<input type ="button" value ="Book Now" class = "bookbtn">
			<h1 class = "price">$ 99.00</h1> 
		</fieldset>
		
		<br><br>
          <fieldset>
			<div class="row">
			  <div class="column">
				<img src = "image/C3.jpg" class = "int">
			  </div>
			  <div class="column1">
				<h2 class = "CarName">Porsche 918 Spyder</h2>
                <div class = "row1">
                    <div class="col">
                        <span class="material-symbols-outlined">person</span>
                        <p>4 Seats</p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">auto_transmission</span>
						<p>Mannual</p>
                    </div>
                </div>
                <br>
                <div class = "row2">
                    <div class="col">
                        <i class="material-icons">luggage</i>
						<p> 1 Large bag </p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">swap_driving_apps_wheel</span>
						<p> Unlimited mileage </p>
                    </div>
                </div>
			  </div>
			</div>
			</div>
			<input type ="button" value ="Book Now" class = "bookbtn">
			<h1 class = "price">$ 99.00</h1> 
		</fieldset>
		
		<br><br>
          <fieldset>
			<div class="row">
			  <div class="column">
				<img src = "image/C4.jpg" class = "int">
			  </div>
			  <div class="column1">
				<h2 class = "CarName">Lamborghini Huracan</h2>
                <div class = "row1">
                    <div class="col">
                        <span class="material-symbols-outlined">person</span>
                        <p>2 Seats</p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">auto_transmission</span>
						<p>Mannual</p>
                    </div>
                </div>
                <br>
                <div class = "row2">
                    <div class="col">
                        <i class="material-icons">luggage</i>
						<p> 1 Large bag </p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">swap_driving_apps_wheel</span>
						<p> Unlimited mileage </p>
                    </div>
                </div>
			  </div>
			</div>
			</div>
			<input type ="button" value ="Book Now" class = "bookbtn">
			<h1 class = "price">$ 99.00</h1> 
		</fieldset>
		
		

		<br><br>
          <fieldset>
			<div class="row">
			  <div class="column">
				<img src = "image/C5.jpg" class = "int">
			  </div>
			  <div class="column1">
				<h2 class = "CarName">Lamborghini Urus</h2>
                <div class = "row1">
                    <div class="col">
                        <span class="material-symbols-outlined">person</span>
                        <p>2 Seats</p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">auto_transmission</span>
						<p>Mannual</p>
                    </div>
                </div>
                <br>
                <div class = "row2">
                    <div class="col">
                        <i class="material-icons">luggage</i>
						<p> 1 Large bag </p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">swap_driving_apps_wheel</span>
						<p> Unlimited mileage </p>
                    </div>
                </div>
			  </div>
			</div>
			</div>
			<input type ="button" value ="Book Now" class = "bookbtn">
			<h1 class = "price">$ 99.00</h1> 
		</fieldset>
		
				<br><br>
          <fieldset>
			<div class="row">
			  <div class="column">
				<img src = "images/C6.jpg" class = "int">
			  </div>
			  <div class="column1">
				<h2 class = "CarName">Lamborghini Avatar </h2>
                <div class = "row1">
                    <div class="col">
                        <span class="material-symbols-outlined">person</span>
                        <p>2 Seats</p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">auto_transmission</span>
						<p>Mannual</p>
                    </div>
                </div>
                <br>
                <div class = "row2">
                    <div class="col">
                        <i class="material-icons">luggage</i>
						<p> 1 Large bag </p>
                    </div>
                    <div class="col1">
                        <span class="material-symbols-outlined">swap_driving_apps_wheel</span>
						<p> Unlimited mileage </p>
                    </div>
                </div>
			  </div>
			</div>
			</div>
			<input type ="button" value ="Book Now" class = "bookbtn">
			<h1 class = "price">$ 99.00</h1> 
		</fieldset>



        
         <br><br><br><br><br>
		 
		<footer class="footer">
			<div class="container">
				<div class="copyright">&copy; 2023 RAM Developers</div>
			</div>
		</footer>
                    
        


</body>
</html>