package com.velocity.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contactus")
public class ContactusServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/velocity";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Rashad@123456";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("Cemail"); // Assuming the user provides their email in the form

        try {
            // Load the MySQL driver (usually done automatically with JDBC 4.0+)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a database connection
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Define the SQL query to fetch the user's ID based on their email
            String selectUserQuery = "SELECT id FROM user WHERE email = ?";

            // Create a prepared statement to fetch the user's ID
            PreparedStatement selectUserStatement = connection.prepareStatement(selectUserQuery);
            selectUserStatement.setString(1, email);

            // Execute the select statement
            ResultSet resultSet = selectUserStatement.executeQuery();

            int user_id = 0; // Default user_id if not found

            if (resultSet.next()) {
                user_id = resultSet.getInt("id");
            }

            // Define the SQL query for inserting data
            String insertQuery = "INSERT INTO contactus (user_id, title, first_name, last_name, telephone_number, email, address, inquiry) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            // Create a prepared statement
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setInt(1, user_id);
            preparedStatement.setString(2, request.getParameter("Ctitle"));
            preparedStatement.setString(3, request.getParameter("Cfname"));
            preparedStatement.setString(4, request.getParameter("Clname"));
            preparedStatement.setString(5, request.getParameter("Ctelno"));
            preparedStatement.setString(6, email);
            preparedStatement.setString(7, request.getParameter("Cadd"));
            preparedStatement.setString(8, request.getParameter("Cinq"));

            // Execute the insert statement
            int rowsAffected = preparedStatement.executeUpdate();

            // Close the database connection
            connection.close();

            if (rowsAffected > 0) {
                // Redirect to a success page or display a success message
                response.sendRedirect("index.jsp");
            } else {
                // Redirect to an error page or display an error message
                response.sendRedirect("error.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle any exceptions and redirect to an error page or display an error message
            response.sendRedirect("error.jsp");
        }
    }
}
