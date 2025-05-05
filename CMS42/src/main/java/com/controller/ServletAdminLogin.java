package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.Admin;
import com.model.ManageAdmin;


@WebServlet({"/ServletAdminLogin", "/admin/login"})
public class ServletAdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletAdminLogin() {
        super();
    
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
        String password = request.getParameter("password");

        ManageAdmin manageLogin = new ManageAdmin();

        try {
            List<Admin> users = manageLogin.login(email, password);
            if (!users.isEmpty()) {

                request.setAttribute("email", email);
                
                RequestDispatcher dispatcher = request.getRequestDispatcher("/adminhome.jsp");
                dispatcher.forward(request, response);
                
            } else {
               
                request.setAttribute("errorMessage", "Invalid username or password");
                
                RequestDispatcher dispatcher = request.getRequestDispatcher("/adminlogin.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Database error", e);
        }
	}

}
