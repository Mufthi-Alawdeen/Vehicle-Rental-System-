package com.velocity.registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddCarSev
 */
@WebServlet("/AddCarSev")
public class AddCarSev extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        String Modal = request.getParameter("Modal");
        String Year = request.getParameter("Year");
        String License = request.getParameter("License");
        String seats = request.getParameter("seats");
        String Gear_Type = request.getParameter("Gear_Type");
        int LugCot = Integer.parseInt(request.getParameter("Lug_cot")); // Corrected this line
        String Car_img = request.getParameter("Car_img");
        String userid = request.getParameter("userid");

        doGet(request, response);
    }
}
