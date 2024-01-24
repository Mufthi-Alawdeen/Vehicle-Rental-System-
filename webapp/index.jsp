<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">


<%
	if(session.getAttribute("name")==null){
	 response.sendRedirect("login.jsp");
	}
%>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Velocity - home</title>

  <!-- 
    - favicon
  -->
  <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">

  <!-- 
    - custom css link
  -->
  

  <!-- 
    - google font link
  -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600&family=Open+Sans&display=swap"
    rel="stylesheet">
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
.map {
 
  color: #737373; /* Text color */
  padding: 20px 0;
}

.map-title {
  text-align: center;
  font-size: 24px;
  margin-bottom: 20px;
}


 </style>

<body>

<header class="header">
    <div class="container">
        <img class="logo" src="image/logo.png" width="110" height="90">
        <nav class="nav">
            <ul class="nav-list">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="ExploreCar.jsp?Uid=<%= session.getAttribute("Uid") %>&username=<%= session.getAttribute("username") %>">Explore Cars</a></li>
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
               <li><a href="editprofile.jsp?Uid=<%= session.getAttribute("Uid") %>&fullname=<%= session.getAttribute("fullname") %>
               & username=<%= session.getAttribute("username") %>&email=<%= session.getAttribute("email") %>
               &phoneNumber=<%= session.getAttribute("phoneNumber") %> & password=<%= session.getAttribute("password") %>">Edit Profile</a></li>

                
                
                <li><a href="login.jsp">Sign out</a></li>
                <li><a href="deactiveacc.jsp">Deactivate</a></li>
            </ul>
        </div>
    </div>
</header>
<input type="hidden" name="user_id" value="<%= session.getAttribute("Uid") %> ">
<input type="hidden" name="fullname" value="<%= session.getAttribute("fullname") %> ">
<input type="hidden" name="username" value="<%= session.getAttribute("username") %> ">


  <main>
    <article>

      <!-- 
        - #HERO
      -->

      <section class="section hero" id="home">
        <div class="container">

          
            <h2 class="h1 hero-title">"Turning Roads into  Runways"</h2>

            <p class="new">
              -Velocity-
            </p>
          </div>
           </section>
          
          
          <div id="myBackground"></div>
          
		
		
     
	

	<br>
	<br>
	<br>
	<br>


      <section class="section get-start">
        <div class="container">

          <h2 class="center-text"style="color:black;">Get started with 4 simple steps</h2>
			
          <ul class="get-start-list">

            <li>
              <div class="get-start-card">

                <div class="card-icon icon-1">
                  <ion-icon name="person-add-outline"></ion-icon>
                </div>

                <h3 class="card-title" style="color: black;">Create a profile</h3>

                <p class="card-text">
                  If you are going to rent a super car, you need to be sure.
                </p>

                <a href="./registration.jsp" class="card-link">Get started</a>

              </div>
            </li>

            <li>
              <div class="get-start-card">

                <div class="card-icon icon-2">
                  <ion-icon name="car-outline"></ion-icon>
                </div>

                <h3 class="card-title">Tell us what car you want</h3>

                <p class="card-text">
                  Various versions have evolved over the years, sometimes by accident, sometimes on purpose
                </p>

              </div>
            </li>

            <li>
              <div class="get-start-card">

                <div class="card-icon icon-3">
                  <ion-icon name="person-outline"></ion-icon>
                </div>

                <h3 class="card-title">Match with seller</h3>

                <p class="card-text">
                  It to make a type specimen book. It has survived not only five centuries, but also the leap into
                  electronic
                </p>

              </div>
            </li>

            <li>
              <div class="get-start-card">

                <div class="card-icon icon-4">
                  <ion-icon name="card-outline"></ion-icon>
                </div>

                <h3 class="card-title">Book now</h3>

                <p class="card-text">
                  There are many variations of passages of Lorem available, but the majority have suffered alteration
                </p>

              </div>
            </li>

          </ul>

        </div>
      </section>





      <!-- 
        - #BLOG
      -->

      
</section>

          <h2 class="aboutus">About Us</h2>
<p>
Velocity is more than just a car rental service; it's an exhilarating journey where we transform ordinary roads into extraordinary runways. Our mission is to offer you the chance to experience the thrill of supercar driving. With an impressive fleet of high-performance vehicles, we put you in the driver's seat of your dreams. Whether you're a car enthusiast or looking to make a statement at your next event, Velocity has the perfect supercar waiting for you. Get ready to feel the power, speed, and luxury of these magnificent machines as you hit the road and turn heads wherever you go. Welcome to Velocity, where every drive is an adventure and every car is a statement of style and performance.
</p>

  
<section class="section map">
  <h2 class="aboutus">Our Location</h2>
  <div class="container">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2068289.7860133922!2d79.86123389175561!3d6.927122291815214!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae305a400bc621d%3A0x105df69bc36770!2sColombo%2C%20Sri%20Lanka!5e0!3m2!1sen!2sus!4v1634366068892!5m2!1sen!2sus" 	
      width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
  </div>
</section>

<section class="section">
  <div class="container">
    <h2>Our Location in Sri Lanka</h2>
    <p>Our office is located in the vibrant city of Colombo, the commercial capital of Sri Lanka. You can find us at the following address:</p>
    <p>
      123 Main Street<br>
      Colombo, Sri Lanka
    </p>
  </div>
</section>
          


  
<br>
<br>
   
    <footer class="footer">
        <div class="container">
     <div class="copyright" style="text-align: center;">            
            &copy; 2023 RAM Developers
            </div>
        </div>
    </footer>


  <!-- 
    - custom js link
  -->
  <script src="./assets/js/script.js"></script>

  <!-- 
    - ionicon link
  -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</html>