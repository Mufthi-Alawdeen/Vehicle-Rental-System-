<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update User</title>
</head>
<body>
<% 
	String Modal = request.getParameter("Modal");
	String Price = request.getParameter("Price");
	String Seats = request.getParameter("Seats");
	String Luggage_Count = request.getParameter("Luggage_Count");
	String Gear_Type = request.getParameter("Gear_Type");
	String Year = request.getParameter("Year");
	String Licence = request.getParameter("Licence");
	String District = request.getParameter("District");
	
%>	
    <h2>Update User</h2>
    
    <form action="UpdateCarServlet" method="post" enctype="multipart/form-data">
     <input type="hidden" name="user_id" value="<%= session.getAttribute("Uid") %>">
		<input type="hidden" name="Uname" value="<%= session.getAttribute("Uname") %>">
		<input type="hidden" name="CarID" value="<%= request.getParameter("CarID") %>">


        <label for="password">Model:</label>
        <input type="text" name="Modal" id="Modal"  value =<%= Modal %> >
        <br>
		
		
        <label for="password">Seats:</label>
        <input type="text" name="Price" id="Price"  value =<%= Price %> >
        <br>
       	
        <label for="password">Seats:</label>
        <input type="text" name="Seats" id="Seats"  value =<%= Seats %> >
        <br>

       <label for="password">Luggage_Count:</label>
        <input type="text" name="Luggage_Count" id="Luggage_Count"  value =<%= Luggage_Count %> >
        <br>
        
        <label for="password">Luggage_Count:</label>
        <input type="text" name="Gear_Type" id="Gear_Type"  value =<%= Gear_Type %> >
        <br>
        
        <label for="password">Luggage_Count:</label>
        <input type="text" name="Year" id="Year"  value =<%= Year %> >
        <br>
        
        <label for="password">Luggage_Count:</label>
        <input type="text" name="Licence" id="Licence"  value =<%= Licence %> >
        <br>
       

        <label for="gear-type">Gear Type:</label>
        <select id="gear-type" name="gear-type">
        	<option value="<%= Gear_Type %>"><%= Gear_Type %> gear</option>
            <option value="auto">Auto Gear</option>
            <option value="manual">Manual Gear</option>
        </select>
        <br>

      

        <label for="district">Select a District:</label>
        <select id="district" name="district">
        <option value="<%= District %>"></option>
            <option value="Colombo">Colombo</option>
            <option value="Gampaha">Gampaha</option>
            <!-- Add other district options here -->
        </select>
        <br>
        
        
       
        
         <br>
        
       
        <button type="submit" name="submit">Submit</button>
        <input type="reset" value="Clear">
    </form>
    
  
</body>
</html>