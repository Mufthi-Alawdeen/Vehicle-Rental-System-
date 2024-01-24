<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
    <head>
        <title>Contact Us</title>
        <!-- Include your CSS and JavaScript links here -->
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
                <style>
            
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
               
        
              
                .two-col {
                    overflow: hidden;/* Makes this div contain its floats */
                }
        
                .two-col .col1,
                .two-col .col2 {
                    width: 48%;
                }
        
                .two-col .col1 {
                    float: left;
                }
        
                .two-col .col2 {
                    float: right;
                }
        
                .two-col label {
                    display: block;
                }
                
                input[type=text], select, textarea {
                  width: 100%;
                  padding: 12px;
                  border: 1px solid #ccc;
                  border-radius: 4px;
                  box-sizing: border-box;
                  margin-top: 6px;
                  margin-bottom: 16px;
                  resize: vertical;
                  background-color : white;
                }
        
            
               
        
                .container1 {
                border-radius: 12px;
                background-color: rgba(242, 242, 242, 0.7); /* Use rgba for transparency */
                padding: 20px;
                font-family: verdana;
                color: black;
                font-size: 13px;
                max-width: 1000px;
                margin: 0 auto;
                font-weight: 900;
                }
          
        
                
                input[type=number], select, textarea {
                  width: 100%;
                  padding: 12px;
                  border: 1px solid #ccc;
                  border-radius: 4px;
                  box-sizing: border-box;
                  margin-top: 6px;
                  margin-bottom: 16px;
                  resize: vertical;
                  background-color: white;
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

                body {
                    background-image: url('image/img.jpg');
                    background-repeat: no-repeat;
                    background-attachment: fixed;
                    background-size: 100% 100%;
                }
                

                /*Code for the complete header part*/

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
   <br>
   <br>
   <br>
        <h1 text align="center" style="font-family :verdana ;font-size:38px ;color: #fff; text-transform: uppercase;text-shadow: 5px 5px 7px #000;">Contact Us</h1>
		
		<br><br>
        <!-- Your HTML and form code as provided in your previous message -->
		<div class="container1">
        <form action="contactus" method="post">
       
            <input type="hidden" name="user_id" value="<%= session.getAttribute("user_id") %>">
            
            
             <div class="two-col">
            <div class="col1">
            <label for="fname">First Name :</label>
            <input type="text" id="Cfname" name="Cfname" placeholder="Your name">
        </div>
            <div class="col2">
            <label for="lname">Last Name :</label>
            <input type="text" id="Clname" name="Clname" placeholder="Your last name">
            </div>
        </div>
        
        <div class="two-col">
            <div class="col1">
            <label for="tnum">Telephone Number :</label>
            <input type="number" id="Ctelno" name="Ctelno" placeholder="Telephone Number">
        </div>
            <div class="col2">
            <label for="eadd">Email Address :</label>
            <input type="text" id="Cemail" name="Cemail" placeholder="Email Address">
            </div>
        </div>
        
        <label for="add">Address :</label>
        <input type="text" id="Cadd" name="Cadd" placeholder="Address">
        
        <label for="Inquiry">Inquiry</label>
        <textarea id="Cinq" name="Cinq" placeholder="Write something" style="height:200px"></textarea>
    <br>
        
        <button type="submit">Submit</button>
        <button type="reset" style="float: right; margin-top: -40px;background-color: red;">Clear</button>



    </form>
    
        
    </div>
 
		
<br>
<br>
<footer class="footer">
        <div class="container">
     <div class="copyright" style="text-align: center;">            
            &copy; 2023 RAM Developers
            </div>
        </div>
    </footer>


       
    </body>
</HTML>


        <!-- Your HTML and form code as provided in your previous message -->
    
       

       
           
   
