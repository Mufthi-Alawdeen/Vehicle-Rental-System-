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

@WebServlet("/UpdateCarServlet")
public class UpdateCarServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/userdb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Rashad@123456";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            
            
            String updateQuery = "UPDATE cars SET Modal = ?, Year = ?, Licence = ?, Seats = ?, Gear_Type = ?, Luggage_Count = ?, District = ?, price = ? WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(updateQuery);
            preparedStatement.setString(1, request.getParameter("Modal"));
            preparedStatement.setString(2, request.getParameter("Year"));
            preparedStatement.setString(3, request.getParameter("Licence"));
            preparedStatement.setString(4, request.getParameter("Seats"));
            preparedStatement.setString(5, request.getParameter("gear-type"));
            preparedStatement.setString(6, request.getParameter("LuggageCount"));
            preparedStatement.setString(7, request.getParameter("district"));
            preparedStatement.setString(8, request.getParameter("price"));          
            preparedStatement.setInt(11, Integer.parseInt(request.getParameter("CarID")));


            int rowsUpdated = preparedStatement.executeUpdate();

            connection.close();

            if (rowsUpdated > 0) {
                response.sendRedirect("OwnerCar.jsp");
            } else {
                // Handle the case where no rows were updated (e.g., user not found).
                // You can redirect to an error page or display an error message.
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database-related exceptions here
        }
    }
}