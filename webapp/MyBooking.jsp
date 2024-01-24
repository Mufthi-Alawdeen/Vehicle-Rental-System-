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
    
    <link rel="Home stylesheet" href="./css/MyBooking.css">
	<link rel="Home stylesheet" href="./css/HearderFooter.css">
</head>
<body>
		
	<header class="header">
        <div class="containerH">
           
            <img id ="logo"  src="image/logo.png" width="110" height="90" > 

            <nav class="nav">
                <ul class="nav-list">
                    <li><a href="#" >Home</a></li>
                    <li><a href="MyCar.html" >Explore Cars</a></li>
					<li><a href="#" class="active">My Booking</a></li>
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
		
		<br><br><br><br><br><br>
		
		<h1 text align="center" style="font-family:verdana ; font-size:34px ; color:white; " >MY BOOKING</h1>
		
		<br><br><br>
		
		<table>
        <thead>
            <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Price</th>
                <th>Seat</th>
                <th>Luggage</th>
                <th>Gear Type</th>
                <th>Mileage</th>
				<th>Date</th>
                <th>Cancel</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="image-cell"><img src = "image/C4.jpg" class = "int"></td>
                <td>Name Value</td>
                <td>Price Value</td>
                <td>Seat Value</td>
                <td>Luggage Value</td>
                <td>Gear Type Value</td>
                <td>Mileage Value</td>
				<td>Date Value</td>
                <td class="button-cell"><input type="button" value="Cancel" class="updbtn"/></td>
            </tr>
				
            
        </tbody>
    </table>
			
        <br><br><br><br><br>
      <footer class="footer">
        <div class="container">
            <div class="copyright">&copy; 2023 RAM Developers</div>
        </div>
    </footer>

</body>
</html>