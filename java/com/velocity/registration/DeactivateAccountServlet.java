package com.velocity.registration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/deactivateacc")
public class DeactivateAccountServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/velocity";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Rashad@123456";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        // Define the SQL query to update the user's account type to 'deactivated'
        String updateQuery = "UPDATE velocity.user SET accounttype = 'deactivated' WHERE username = ? and id=?";
        RequestDispatcher dispatcher = null;
        try (Connection con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement updateStatement = con.prepareStatement(updateQuery)) {

            updateStatement.setString(1, username);
            int rowsUpdated = updateStatement.executeUpdate();

            if (rowsUpdated > 0) {
                RequestDispatcher loginDispatcher = request.getRequestDispatcher("login.jsp");
                loginDispatcher.forward(request, response);
            } else {
            	RequestDispatcher deactiveaccDispatcher = request.getRequestDispatcher("deactiveacc.jsp");
                deactiveaccDispatcher.forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            RequestDispatcher deactiveaccDispatcher = request.getRequestDispatcher("deactiveacc.jsp");
            deactiveaccDispatcher.forward(request, response);
        }
    }
}
