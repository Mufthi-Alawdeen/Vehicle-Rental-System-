<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Deactivation</title>
    <link rel="stylesheet" href="styles.css"> <!-- Include your stylesheet here -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <style>
    
    /* styles.css   /* Reset some default styles */
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

      
        /* Background image for the body 
        body {
            background-image: url('image/car.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            
        }
			*/
	#my-section {
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    max-width: 400px; /* Adjust this width as needed */
    margin: 0 auto; /* Center the section horizontally */
    padding: 30px;
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
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
        }*/


 /* Container styles */
        .deactivate-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
            max-width: 400px;
        }

        /* Title styles */
        .deactivate-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* Input field styles */
        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Checkbox styles */
        .deactivate-checkbox-label {
            display: block;
            margin: 20px 0;
        }

        .deactivate-checkbox {
            margin-right: 10px;
            vertical-align: middle;
        }

        /* Deactivate button styles */
        .deactivate-button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 15px 30px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .deactivate-button:hover {
            background-color: #FF0000;
        }
    
    body {
    margin: 0;
    overflow: hidden;
}

#video-background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    z-index: -1; /* Place the video element behind other content */
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
 <video autoplay muted loop id="video-background">
            <source src="image/vid.mp4" type="video/mp4">
        </video>
    
	<br>
	<br>
	
	<body>
	 <div id="my-section">
        <div class="deactivate-container">
            <h1 class="deactivate-title">Deactivate Your Account</h1>
            <form method="post" action="deactivateacc">
                <p>Please provide your username:</p>
                <input type="text" class="input-field" name="username" placeholder="Enter your username">
                <label for="confirm-deactivation" class="deactivate-checkbox-label">
                    <input type="checkbox" id="confirm-deactivation" name="confirm-deactivation" class="deactivate-checkbox"> I am sure I want to deactivate my account
                </label>
                <center>
                <button type="submit" class="deactivate-button" id="deactivate-button">Deactivate</button>
                </center>
            </form>
        </div>
    </div>
   <script>
    const confirmCheckbox = document.getElementById('confirm-deactivation');
    const deactivateButton = document.getElementById('deactivate-button');
    const emailInput = document.querySelector('input[name="username"]');

    deactivateButton.addEventListener('click', function(event) {
        event.preventDefault(); // Prevent the form from submitting

        if (confirmCheckbox.checked) {
            // Get the email entered by the user
            const username = emailInput.value;

            // Check if the username is valid (you can replace this condition with your own validation logic)
            if (username !== 'valid_username') {
                // Show an alert for an invalid username
                alert("Invalid username. Please enter a valid username.");
            } else {
                // If the username is valid, display a confirmation message
                if (confirm("Are you sure you want to deactivate your account?")) {
                    // Redirect to deactiveacc.jsp
                    window.location.href = 'deactiveacc.jsp';
                }
            }
        } else {
            alert("Please confirm the deactivation by checking the checkbox.");
        }
    });

    confirmCheckbox.addEventListener('change', function() {
        deactivateButton.disabled = !confirmCheckbox.checked;
    });
</script>

    
</body>
</html>
