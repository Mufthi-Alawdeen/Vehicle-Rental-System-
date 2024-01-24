<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<% 
    String idParam = request.getParameter("CarID");

    if (idParam != null) {
        int id = Integer.parseInt(idParam);
        Connection con = null;
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/velocity", "root", "Rashad@123456");
            String sql = "DELETE FROM cars WHERE id = ?";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
            response.sendRedirect("OwnerCar.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            // Handle the exception here, e.g., redirect to an error page or display an error message
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
%>