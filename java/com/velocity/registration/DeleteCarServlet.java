package com.velocity.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteCarServlet")
public class DeleteCarServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtain the ID of the record to delete from the request parameter
        String id = request.getParameter("id");
        int CarID = Integer.parseInt(id);

        // Validate the username (ensure it's not empty)
        if (id != null && !id.isEmpty()) {
            // Define your database connection details
            String DB_URL = "jdbc:mysql://localhost:3306/velocity";
            String DB_USER = "root";
            String DB_PASSWORD = "Rashad@123456";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

                // Define your SQL delete query
                String deleteQuery = "DELETE FROM cars WHERE id = ?";
                PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery);
                preparedStatement.setInt(1, CarID);

                // Execute the delete statement
                int rowsDeleted = preparedStatement.executeUpdate();

                // Close the database connection
                connection.close();
                
                // Redirect back to the OwnerCar.jsp page after the record is deleted
                response.sendRedirect("OwnerCar.jsp");
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                System.out.println("Error: " + e.getMessage());
                // Handle any exceptions and redirect to an error page or display an error message
            }
        } else {
            // Handle the case where the "username" parameter is missing or empty
            System.out.println("Error: ID parameter is missing or empty");
        }
    }
}
