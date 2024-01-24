package com.velocity.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        HttpSession session = request.getSession();
        
        RequestDispatcher dispatcher = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/velocity", "root", "Rashad@123456");
            PreparedStatement pst = con.prepareStatement("select * from user where username = ? and password  = ? ");
            pst.setString(1, username);
            pst.setString(2, password);

            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                String accountType = rs.getString("accounttype");
                int uid = rs.getInt("id");
                String Uname = rs.getString("username");
                session.setAttribute("Uid", rs.getString("id"));
                session.setAttribute("Uname", rs.getString("username"));
                
                ;
                if ("Vehicle Owner".equals(accountType)) {
                    // Redirect to vehicleowner.jsp for Vehicle Owners
                    dispatcher = request.getRequestDispatcher("vehicleowner.jsp");
                } else if("Customer".equals(accountType)) {
                    // Redirect to a default page for other account types (e.g., a dashboard)
                	dispatcher = request.getRequestDispatcher("index.jsp");
                }else if ("deactivated".equals(accountType)) {
                	request.setAttribute("status", "failed");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                }
                else {
                	dispatcher = request.getRequestDispatcher("AdminHome.jsp");
                	
                }
            } else {
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("login.jsp");
            }
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
