<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Car</title>
    <link rel="stylesheet" type="text/css" href="your-styles.css">
</head>
<body>
    <h1>Add New Car</h1>
    <form action="AddCarServlet" method="post" enctype="multipart/form-data">
     <input type="hidden" name="user_id" value="<%= session.getAttribute("Uid") %>">
		<input type="hidden" name="Uname" value="<%= session.getAttribute("Uname") %>">


        <label for="Modal">Car Model:</label>
        <input type="text" name="Modal" id="Modal" required>
        <br>

        <label for="Year">Year of Manufacture:</label>
        <input type="number" name="Year" id="Year" required>
        <br>

        <label for="Licence">Car License Plate No:</label>
        <input type="text" name="Licence" id="Licence" required>
        <br>

        <label for="Seats">Number of Seats:</label>
        <input type="text" name="Seats" id="Seats" required>
        <br>

        <label for="gear-type">Gear Type:</label>
        <select id="gear-type" name="gear-type">
            <option value="auto">Auto Gear</option>
            <option value="manual">Manual Gear</option>
        </select>
        <br>

        <label for="LuggageCount">Luggage Count:</label>
        <input type="text" name="LuggageCount" id="LuggageCount" required>
        <br>

        <label for="district">Select a District:</label>
        <select id="district" name="district">
            <option value="Colombo">Colombo</option>
            <option value="Gampaha">Gampaha</option>
            <!-- Add other district options here -->
        </select>
        <br>
        
        
        <label for="LuggageCount">Price:</label>
        <input type="text" name="price" id="price" required>
        
         <br>
        
       <label for="carimg">Add image of your Car:</label>
        <input type="file" name="Car_Image" id="Car_Image">
        <br>
        
        
		
		
		<!--   <label for="LicImg">Vehicle Revenue License:</label>
        <input type="file" name="licimg" id="licimg">
        <br>
        
        <label for="LicPltImg">License Plate:</label>
        <input type="file" name="LicPltImg" id="LicPltImg">
        <br>
        
        <label for="InsuranceImg">Insurance:</label>
        <input type="file" name="InsuranceImg" id="InsuranceImg">-->
       

        <button type="submit" name="submit">Submit</button>
        <input type="reset" value="Clear">
    </form>
</body>
</html>