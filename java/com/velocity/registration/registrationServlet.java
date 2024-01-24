package com.velocity.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class registrationServlet
 */
@WebServlet("/register")
public class registrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private PrintWriter con;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//PrintWriter  out = response.getWriter();
		//out.print("working");
		 String avatar = request.getParameter("avatar");
		 String fullname = request.getParameter("fullname");
		 String username = request.getParameter("username");
		 String email = request.getParameter("email");
		 String phoneNumber = request.getParameter("phoneNumber");
		 String password  = request.getParameter("password");
		 String dob = request.getParameter("dob");
		 String accounttype = request.getParameter("accounttype");
		 
		 
		// PrintWriter  out = response.getWriter();
		// out.print(avatar);
		// out.print(fullname);
		// out.print(username);
		// out.print(email);
		// out.print(phoneNumber);
		// out.print(password);
		// out.print(dob);
		// out.print(accounttype);
		 

		 RequestDispatcher dispatcher = null;
		 Connection con = null;
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/velocity", "root", "Rashad@123456");

			PreparedStatement pst = con
					.prepareStatement("insert into user(avatar , fullname , username , email, phoneNumber , password , dob , accounttype) values (?,?,?,?,?,?,?,?)");
			pst.setString(1, avatar);
			pst.setString(2, fullname);
			pst.setString(3, username);
			pst.setString(4, email);
			pst.setString(5, phoneNumber);
			pst.setString(6, password);
			pst.setString(7, dob);
			pst.setString(8, accounttype);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount >0) {
				
				request.setAttribute("status", "success");
				
			}else
			{
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
			
			 
		 }catch (Exception e) {
			 e.printStackTrace();
			 
		 }finally {
			 try {
			        if (con != null) {
			            con.close();
			        }
			    } catch (SQLException e) {
			        e.printStackTrace();
			    }
		 }
		 
		 HttpSession session = request.getSession();
		 	session.setAttribute("avatar", avatar);
		 	
			session.setAttribute("fullname", fullname);
			session.setAttribute("username", username);
			session.setAttribute("email", email);
			session.setAttribute("phoneNumber", phoneNumber);
			session.setAttribute("dob", dob);
			session.setAttribute("accounttype", accounttype);
			

			// Redirect to the EditProfileServlet
			response.sendRedirect("editprofile");
		 
		 
	}
	

}
