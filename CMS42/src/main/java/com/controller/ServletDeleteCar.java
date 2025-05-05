package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.ManageCar;

public class ServletDeleteCar extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ServletDeleteCar() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        int carid = Integer.parseInt(request.getParameter("carid"));
        String confirmDelete = request.getParameter("confirmDelete");

        if (confirmDelete != null && confirmDelete.equals("delete")) {
            ManageCar mc = new ManageCar();
            mc.setCarid(carid);
            try {
                mc.deleteCar();
                request.setAttribute("message", "Car Details Deleted Successfully");
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("message", "Failed to delete: " + e.getMessage());
            }
        } else {
            request.setAttribute("message", "Deletion not confirmed. Type 'delete' to confirm.");
        }

        request.getRequestDispatcher("/deleteCar.jsp").forward(request, response);
    }
}
