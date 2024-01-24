<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Car</title>
    
    
    <script type="text/javascript">
    function confirmDelete(id) {
        if (confirm("Are you sure you want to delete this record?")) {
            window.location.href = "DeleteCars.jsp?CarID=" + id;
        } else {
            window.location.href = "OwnerCar.jsp";
        }
    }
</script>



    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    
    <link rel="Home stylesheet" href="./css/OwnerCar.css">
     <link rel="stylesheet" href="./css/style.css">
	<!--<link rel="Home stylesheet" href="./css/HearderFooter.css"> -->
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
    margin-right: -26%; /* Add margin to create space between elements */
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
</head>
<body>
		
	
  <header class="header">
    <div class="container">
        <img class="logo" src="image/logo.png" width="110" height="90">
        <nav class="nav">
            <ul class="nav-list">
                <li><a href="vehicleowner.jsp">Home</a></li>
                <li><a href="OwnerCar.jsp">My Cars</a></li>
                
                <li><a href="Ownercontactus.jsp">Contact Us</a></li>
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


		<br><br><br><br><br><br>
		<input type="hidden" name="email" value="<%= session.getAttribute("email") %>">
		<input type="hidden" name="id" value="<%= session.getAttribute("id") %>">
		

		<h1 text align="center" style="font-family:verdana ; font-size:34px ; color:black; " >MY CARS</h1>
		
		<br><br><br>
		
		<table>
        <thead>
            <tr>
                <th>Image</th>
                <th>Model</th>
                <th>Price</th>
                <th>Seats</th>
                <th>Luggage</th>
                <th>Gear Type</th>
                <th>Year of Manufacture</th>
                <th>Licence No</th>
                <th>District</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        

        
        
        <tbody>
        <% 
        
       		 

        
                try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/velocity", "root", "Rashad@123456");
            ResultSet resultSet = null;
            
            Statement statement = con.createStatement();
            String sql = "select * from cars ";
            
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
        %>
            <tr>
            	<td class="image-cell"><img src = "image/<%= resultSet.getString("Car_Image") %>" class = "int"></td>
                <td><%= resultSet.getString("Modal") %></td>
                <td><%= resultSet.getString("Price") %></td>
                <td><%= resultSet.getString("Seats") %></td>
                <td><%= resultSet.getString("Luggage_Count") %></td>
                <td><%= resultSet.getString("Gear_Type") %></td>
                <td><%= resultSet.getString("Year") %></td>
                <td><%= resultSet.getString("Licence") %></td>
                <td><%= resultSet.getString("District") %></td>
                <td class="button-cell"><input type="button" value="Update" class="updbtn"/>
                
                <a href="UpdateCar.jsp?CarID=<%= resultSet.getString("id") %>&Modal=<%= resultSet.getString("Modal") %>&Price=<%= resultSet.getString("Price")%>&Seats=<%= resultSet.getString("Seats") %>&Luggage_Count=<%= resultSet.getString("Luggage_Count") %>&Gear_Type=<%= resultSet.getString("Gear_Type") %>&Year=<%= resultSet.getString("Year") %>&Licence=<%= resultSet.getString("Licence") %>&District=<%= resultSet.getString("District") %>"  class="dltbtn">Update</a>
               
                </td>
                <td class="button-cell">
                 <a href="javascript:void(0);" onclick="confirmDelete('<%= resultSet.getString("id") %>')" class="dltbtn">Delete</a>
                 
                </td>
                
            </tr>
        <%
            }//end while
        }//end of try
        catch(Exception e){
            e.printStackTrace();
        }
        %>
            
        </tbody>
    </table>
	
            <a href="AddCar.jsp?Uid=<%= session.getAttribute("Uid") %>&username=<%= session.getAttribute("Uname") %>"><button class="floating-button">Add New Car</button> </a>
			
        <br><br><br><br><br>
      <footer class="footer">
        <div class="container">
            <div class="copyright">&copy; 2023 RAM Developers</div>
        </div>
    </footer>

</body>
</html>