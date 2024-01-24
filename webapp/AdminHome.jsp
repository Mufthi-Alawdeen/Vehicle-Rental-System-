<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
	<head>
	<title>Velocity</title>
		
	<style>
	
/* Style for the dropdown button */
.dropbtn {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-weight: bold;
    float: right; /* Position the button to the right */
    margin-right : 40px;
}

.dropbtn:hover {
    background-color: #0056b3;
}

/* Style for the dropdown menu */
.dropdown-menu {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: -8px 0px 16px 0px rgba(0, 0, 0, 0.2); /* Position the shadow to the left */
    z-index: 1;
    right: 0;
    top: 25%; /* Position the menu to the right */
}

.dropdown-menu a {
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-menu a:hover {
    background-color: #f1f1f1;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-menu {
    display: block;
}
  /* Reset some default styles */
         .sign {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 16px 19px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            position: absolute;
            top: 45px; /* Adjust the top position as needed */
            right: 40px; /* Adjust the right position as needed */
        }

        .sign:hover {
            background-color: #0056b3;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }



        /* Style for the logout button */
        .LogOut{

        background-color: #007bff;
        color: white;
        border: none;
        padding: 16px 19px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        position: absolute;
        top: 40px; /* Adjust the top position as needed */
        right: 45px; /* Adjust the right position as needed */
        transition: background-color 0.3s;

        }


        .LogOut:hover {
            background-color: #0056b3;
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

        #logo {
            position: absolute;
            top: 20px; /* Adjust the top position as needed */
            left: 40px; /* Adjust the left position as needed */
        }
        #slogan{
		margin-top : -75px;
		color:  black;
	}
        .column {
		  float: left;
		  width: 33.3%;
		}

		/* Clearfix (clear floats) */
		.row::after {
		  content: "";
		  clear: both;
		  display: table;
		}

        .card button {
		  border: none;
		  outline: 0;
		  padding: 12px;
		  color: white;
		  background-color: #1A0377;
		  text-align: center;
		  cursor: pointer;
		  width: 90%;
		  font-size: 18px;
          border-radius: 8px;
          margin-top: 70px;
          font-weight: bold ;
		  
		}

        .card {
		  box-shadow: 6px 6px 8px 6px rgba(0, 0, 0, 0.2);
		  max-width: 300px;
		  height : 300px;
		  margin:auto;
		  text-align: center;
		  font-family: arial;
          border-radius: 8px;
          position: relative; /* or absolute, depending on your layout requirements */
          top: 40px; /* Adjust the top value to move the image down */
          left: 20px;
		  
		}

		.card button:hover {
		  opacity: 0.7;
		  border: 1px solid #065499;
		}

        .move-image {

        margin-top: 20px; /* Adjust the margin-top value to move the image down */
        margin-left: 20px; /* Adjust the margin-left value to move the image to the right */
        }

        .move-image2 {

        margin-top: 20px; /* Adjust the margin-top value to move the image down */
        margin-left: 20px; /* Adjust the margin-left value to move the image to the right */

        }

        .move-image3 {
        margin-top: 20px; /* Adjust the margin-top value to move the image down */
        margin-left: 10px; /* Adjust the margin-left value to move the image to the right */
        }

        .word {
        font-size: 65px;
        display: flex;
        font-weight: bold;
        font-family: verdana;
        justify-content: center; 
        align-items: center; 
        color: #EBB708;
        height: 60px; /* Set the height to match the font size */
        position: relative; /* Make the container relative for positioning */
        top: -85px;
        text-shadow: 3px 3px 5px rgba(0, 0, 0, 0.3); /* Add text shadow */
        }

        .word span {
        position: relative;
        margin: 0 2px; /* Adjust this margin for spacing between characters */
        }

        .word span:nth-child(3) {
        margin-right: -20px; /* Remove the negative margin */
        }

        .word::before {
        content: "";
        position: absolute;
        width: 20px;
        height: 2px;
        background-color: white;
        top: 10%;
        transform: translateY(-50%);
        left: 50%; /* Center the line horizontally */
        z-index: -1; /* Place the line behind the text */
        }

	


    </style>
	
        
           
            <img id ="logo"  src="image/logo.png" width="170" height="130" > 
            
            
    
	</head>
	<br><br><br>
    <br><br>
    <br><br>

    <body>
        <div class="word">
            <span>V</span>
            <span>E</span>
            <span>LO</span>
            <span>C</span>
            <span>I</span>
            <span>TY</span>
        </div>
       
         <p text align = "center" style="font-family:'Trebuchet MS', sans-serif ; font-size:20px" id = "slogan"><i> CAR RENTAL SERVICE</p></i>
			
			<a href="login.jsp" class="sign">Log Out</a>
			
			
			<div class="dropdown">
    <button class="dropbtn">Menu</button>
    <div class="dropdown-menu">
        <a href="#">Approve cars</a>
        <a href="#">View Booking</a>
        <a href="admininq.jsp">View Inquiry</a>
       
    </div>
</div>
				
         <br><br>
         <br>
         <hr>
         <br><br>
			
       
		<div class="row">
            <div class="column">
              <div class="card">
                <img src="image/damage.png" class="move-image3"  style="width:80%">
                <p><a href="Sub Pages/appoint.html"><button> Damaged Cars </button></a></p>
        </div>
            </div>
            <div class="column">
              <div class="card">
                <img src="image/booking.png" class="move-image2"   style="width:80%">
                <p><a href="Sub Pages/appoint.html"><button>View Bookings</button></a></p>
        </div>
            </div>
            <div class="column">
              <div class="card">
                <img src="image/inq.png"  class="move-image" style="width:80%">
                <p><a href="admininq.jsp"><button>View Inquiries</button></a></p>
         </div>
        </div>
        </div>

    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <footer class="footer">
        <div class="container">
            <div class="copyright">&copy; 2023 RAM Developers</div>
        </div>
    </footer>


</body>
</HTML>