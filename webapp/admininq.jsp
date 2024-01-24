<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
<head>
    <title>Inquiries</title>
    <style>
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 35px;
            font-family: verdana;
            color: #095d83;
            font-size: 13px;
            max-width: 1200px;
            margin: 0 auto;
            max-height: 500px;
        }

        #con {
            color: black;
        }

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

        #slogan {
            margin-top: -110px;
            color: black;
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
            font-weight: bold;
        }

        .card {
            box-shadow: 6px 6px 8px 6px rgba(0, 0, 0, 0.2);
            max-width: 300px;
            height: 300px;
            margin: auto;
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
            justify-content: center; /* Center the text horizontally */
            align-items: center; /* Center the text vertically */
            color: #EBB708;
            height: 60px; /* Set the height to match the font size */
            position: relative; /* Make the container relative for positioning */
            top: -125px;
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

        /* Style for the button container */
        /*    .button-container {
            text-align: right; /* Align buttons to the right */


        /* Style for the delete and reply buttons */
        .btn.delete-btn,
        .btn.reply-btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 16px 19px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 5px; /* Adjust margin to separate the buttons */
        }

        .btn.delete-btn:hover,
        .btn.reply-btn:hover {
            background-color: #0056b3;
        }

        * {
            box-sizing: border-box;
        }

        .fs {
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    background-color: white;
    border-radius: 12px;
    margin-left: 40px;
    margin-right: 40px;
    font-size: 12px;
    box-shadow: 6px 6px 8px 6px rgba(0, 0, 0, 0.2);
}


        .row {
            padding: 20px;
            display: flex;
            justify-content: space-between; /* This will place items at the start and end of the row */
        }

        .column {
            padding: 15px;
            flex: 1; /* Allow the left column to expand */
        }

        .column1 {
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-end;
    padding: 20px;
    flex: 1;
}


        .reply-fieldset {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            background-color: white;
            margin-left: 45px;
            margin-right: 45px;
            padding : 10px;
            font-size : 12px;
        }
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


.dropdown:hover .dropdown-menu {
    display: block;
}

    </style>

    <script>
        // JavaScript function to show/hide reply form
        function toggleReplyForm() {
            var replyForm = document.getElementById('reply-form');
            replyForm.style.display = (replyForm.style.display === 'block') ? 'none' : 'block';
        }

    </script>
</head>

<body>
    <img id="logo" src="image/logo.png" width="170" height="130">
    

    
 		


    <br><br><br>
    <br><br>
    <br><br>
    <br><br>

    <div class="word">
        <span>V</span>
        <span>E</span>
        <span>LO</span>
        <span>C</span>
        <span>I</span>
        <span>TY</span>
    </div>
    <p text align="center" style="font-family:'Trebuchet MS', sans-serif; font-size:20px" id="slogan"><i> CAR RENTAL SERVICE</p></i>


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

    <h1 text align="center" style="font-family:verdana; font-size:32px">INQUIRIES</h1>

    <br><br><br>
    
    <jsp:include page="my_data.jsp" />
		<%
		try{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/velocity","root","Rashad@123456");
			ResultSet resultSet = null;
			Statement statement = con.createStatement();
			
		String sql ="select * from contactus order by  id desc";
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
		%>
		

    <fieldset class = fs>
        <div class="row">
            <div class="column">
                <h1>Name: <%=resultSet.getString("first_name")%></h1>
                <div id="con">
                    <br>
                    <h2>Telephone No: <%=resultSet.getString("telephone_number")%> </h2>
                    <br>
                    <h2>Email: <%=resultSet.getString("email")%></h3>
                    <br>
                    <h2>Address: <%=resultSet.getString("address")%> </h3>
                    <br>
                    <h2>Inquiry:<br> <%=resultSet.getString("inquiry")%></h2>
                </div>
            </div>
            <div class="column1">
                <div class="button-container">
                    <button class="btn delete-btn">Delete</button>
                    <br>
                    <button class="btn reply-btn" onclick="toggleReplyForm()">Reply</button>
                </div>

                <div id="reply-form" style="display: none;">
                    <fieldset class="reply-fieldset"> <!-- Apply a unique class to this fieldset -->
                        <div class="column2">
                            <h2>Reply to Inquiry</h2>
                            <br>
                            <textarea rows="7" cols="50" placeholder=" Enter your reply here..."></textarea>
                            <br>
                            <button class="btn reply-btn" onclick="toggleReplyForm()">Submit</button>
                        </div>
                    </fieldset>
                    
                    
                </div>
            </div>
        </div>
    </fieldset>
    <br><br>
    
    <%
		}//end while
			
		}//end of try
		catch(Exception e){
			e.printStackTrace();
		}
		
		%>
		
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
