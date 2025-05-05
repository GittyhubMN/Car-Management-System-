package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.ManageCar;


public class ServletUpdateCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletUpdateCar() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();

		int carid = Integer.parseInt(request.getParameter("carid"));
		long newcarprice=Long.parseLong(request.getParameter("newcarprice"));

		ManageCar mc = new ManageCar();
		mc.setCarid(carid);
		mc.setCarprice(newcarprice);
        try {
			mc.updateCar();
			pw.print("Data Updated Successfully");
		} catch (Exception e) 
        {
			e.printStackTrace();
			pw.print("Update Failed: " + e.getMessage());
		}
	}

}
