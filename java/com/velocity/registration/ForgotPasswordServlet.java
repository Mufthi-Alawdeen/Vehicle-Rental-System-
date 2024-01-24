package com.velocity.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forgotpassword")
public class ForgotPasswordServlet extends HttpServlet {
    // Database connection parameters (replace with your actual database details)
    private static final String DB_URL = "jdbc:mysql://localhost:3306/velocity";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Rashad@123456";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the email and new password from the request parameters
        String email = request.getParameter("email");
        String newPassword = request.getParameter("newPassword");

        // Database connection
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Load the database driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL statement to update the password
            String updatePasswordQuery = "UPDATE user SET password = ? WHERE email = ?";

            // Prepare the statement with the SQL
            preparedStatement = connection.prepareStatement(updatePasswordQuery);
            preparedStatement.setString(1, newPassword);
            preparedStatement.setString(2, email);

            // Execute the update
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                // Password updated successfully
            	 request.setAttribute("status", "success");
                response.sendRedirect(request.getContextPath() + "/login.jsp");
            } else {
                // Password update failed (no user with the provided email)
                PrintWriter out = response.getWriter();
                out.println("Password update failed. User not found.");
                out.println("<script>alert('Password update failed. User not found.');</script>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle SQL exceptions
            PrintWriter out = response.getWriter();
            out.println("<script>alert('Password update failed due to a database error.');</script>");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Handle class loading exceptions
            PrintWriter out = response.getWriter();
            out.println("<script>alert('Password update failed due to a server error.');</script>");
        } finally {
            try {
                // Close resources
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
                // Handle exceptions as needed
            }
        }
    }
}
