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
import javax.servlet.http.HttpSession;

@WebServlet("/editprofile")
public class editprofile extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/velocity";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Rashad@123456";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String avatar = request.getParameter("avatar");
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");
        String accounttype = request.getParameter("accounttype");
        String Uid = request.getParameter("user_id");
        // Retrieve the user's ID from their session
        HttpSession session = request.getSession();
        String user_id = (String) session.getAttribute("Uid");

        if (user_id == null) {
            // User ID not found in the session, you can handle it as you wish
            // In this example, we'll set a default user_id
            user_id = retrieveUserIdFromDatabase(email);

            if (user_id == null) {
                // Handle the case where the user ID is not found
                response.sendRedirect(request.getContextPath() + "/login.jsp");
                return;
            }
        }

        // Update the user's profile data in the database
        boolean updateResult = updateUserProfileInDatabase(user_id, avatar, fullname, username, email, phoneNumber, password, dob, accounttype);

        if (updateResult) {
            // Set a success message as a session attribute
            request.getSession().setAttribute("updateMessage", "Profile updated successfully");
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } else {
            // Set a failure message as a session attribute
            request.getSession().setAttribute("updateMessage", "Profile update failed");
            response.sendRedirect(request.getContextPath() + "/editprofile.jsp");
        }
    }

    private String retrieveUserIdFromDatabase(String userEmail) {
        String user_id = null; // Default user_id if not found

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // Replace this SQL query with your actual query to retrieve the user's ID
            String query = "SELECT id FROM your_table_name WHERE email = ?";

            PreparedStatement preparedStatement = connection.prepareStatement(query);
            // Set the email to the one associated with the user
            preparedStatement.setString(1, userEmail);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                user_id = resultSet.getString("id");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        }

        return user_id;
    }

    private boolean updateUserProfileInDatabase(String user_id, String avatar, String fullname, String username, String email,
            String phoneNumber, String password, String dob, String accounttype) {
        boolean updateResult = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            String updateQuery = "UPDATE user SET avatar=?, fullname=?, username=?, email=?, phoneNumber=?, password=?, dob=?, accounttype=? WHERE id=?";
            PreparedStatement preparedStatement = connection.prepareStatement(updateQuery);
            preparedStatement.setString(1, avatar);
            preparedStatement.setString(2, fullname);
            preparedStatement.setString(3, username);
            preparedStatement.setString(4, email);
            preparedStatement.setString(5, phoneNumber);
            preparedStatement.setString(6, password);
            preparedStatement.setString(7, dob);
            preparedStatement.setString(8, accounttype);
            preparedStatement.setString(9, user_id);

            int rowsUpdated = preparedStatement.executeUpdate();

            if (rowsUpdated > 0) {
                updateResult = true;
            }

            preparedStatement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        }
        return updateResult;
    }
}
