package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.ManageAdmin;

public class ServletAdminRegistration extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ServletAdminRegistration() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Not used in this case
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        long contactnumber = Long.parseLong(request.getParameter("contactnumber"));

        ManageAdmin mr = new ManageAdmin();
        mr.setFirstname(firstname);
        mr.setLastname(lastname);
        mr.setEmail(email);
        mr.setPassword(password);
        mr.setContactnumber(contactnumber);

        try {
            if (mr.emailExists(email)) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/adminregistration.jsp");
                dispatcher.forward(request, response);
            } else {
                mr.insert();
                RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminregistration.jsp");
            dispatcher.forward(request, response);
        }
    }
}
