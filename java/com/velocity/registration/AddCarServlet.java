package com.velocity.registration;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/AddCarServlet")
@MultipartConfig
public class AddCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uploadPath = "C:/Users/rasha/OneDrive/Desktop/register/src/main/webapp/image/"; // Set the desired upload directory
        
        Part filePart = request.getPart("Car_Image");
        String imageName = request.getParameter("Modal"); // Get user-provided image name

        if (imageName != null && !imageName.isEmpty()) {
        	
        	 Random random = new Random();
             int num = random.nextInt(100000);
             // Sanitize the filename
             String sanitizedFileName = sanitizeFileName(Integer.toString(num)+".jpg");
            

            if (sanitizedFileName != null && !sanitizedFileName.isEmpty()) {
                try {
                    InputStream fileContent = filePart.getInputStream();
                    String fullUploadPath = uploadPath + sanitizedFileName;

                    // Save the file to the server
                    Files.copy(fileContent, Paths.get(fullUploadPath));

                    // Database connection
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/velocity", "root", "Rashad@123456");

                   
                    
                    String UID = request.getParameter("user_id");
                    int userId = Integer.parseInt(UID);
                    

                    String insertCarQuery = "INSERT INTO cars (user_id, Modal, Year, Licence, Seats, Gear_Type, Luggage_Count, District, username,Car_Image, price) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

                        // Create a prepared statement
                        PreparedStatement preparedStatement = conn.prepareStatement(insertCarQuery);
                        preparedStatement.setInt(1, userId); // Set the user_id
                        preparedStatement.setString(2, request.getParameter("Modal"));
                        preparedStatement.setString(3, request.getParameter("Year"));
                        preparedStatement.setString(4, request.getParameter("Licence"));
                        preparedStatement.setString(5, request.getParameter("Seats"));
                        preparedStatement.setString(6, request.getParameter("gear-type"));
                        preparedStatement.setString(7, request.getParameter("LuggageCount"));
                        preparedStatement.setString(8, request.getParameter("district"));
                        preparedStatement.setString(8, request.getParameter("district"));
                        preparedStatement.setString(9, request.getParameter("Uname"));
                        preparedStatement.setString(10,sanitizedFileName);
                        preparedStatement.setString(11, request.getParameter("price"));
                        
                    preparedStatement.executeUpdate();
                    preparedStatement.close();
                    conn.close();

                    
                    response.sendRedirect("OwnerCar.jsp");
                } catch (Exception e) {
                    e.printStackTrace();
                    response.getWriter().print("Error: " + e.getMessage());
                    System.out.println("NO");
                }
            } else {
                response.getWriter().print("Invalid or missing image name.");
                System.out.println("NO");
            }
        } else {
            response.getWriter().print("No image name provided.");
            System.out.println("NO");
        }
    }

    private String sanitizeFileName(String originalFileName) {
        // Remove invalid characters from the filename
        return originalFileName.replaceAll("[^a-zA-Z0-9\\.\\-]", "_");
    }
}