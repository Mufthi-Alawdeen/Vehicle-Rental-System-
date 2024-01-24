<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
    <head>
        <title>Contact Us</title>
        <!-- Include your CSS and JavaScript links here -->
        
                <style>
            
        
               
        
              
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
                }
        
            
                input[type=reset] {
                  background-color: #007bff;
                  color: white;
                  padding: 13px 22px;
                  border: none;
                  border-radius: 5px;
                  cursor: pointer;
                  font-size:15px;
                  float : right ;
                  margin-top: 8px;
                }
                
                input[type=reset]:hover {
                  background-color: #0056b3;
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
                
                input[type=number], select, textarea {
                  width: 100%;
                  padding: 12px;
                  border: 1px solid #ccc;
                  border-radius: 4px;
                  box-sizing: border-box;
                  margin-top: 6px;
                  margin-bottom: 16px;
                  resize: vertical;
                }
                
                button {
                  background-color: rgba(219, 5, 5, 0.793);
                  color: white;
                  padding: 16px 39px;
                  border: none;
                  border-radius: 5px;
                  cursor: pointer;
                  font-size: 17px;
                  font-weight: 600;
                }
        
                button:hover {
                  background-color: rgb(253, 57, 57);
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

                            
                    
                
            </style>
        
    </head>
    <body>
    
   <br>
        <h1 text align="center" style="font-family :verdana ;font-size:38px ;color: #fff; text-transform: uppercase;text-shadow: 5px 5px 7px #000;">Contact Us</h1>
		
		<br><br><br>
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
        <input type="reset" value="Clear">

    </form>
    </div>



       
    </body>
</HTML>


        <!-- Your HTML and form code as provided in your previous message -->
    
       

       
           
   
