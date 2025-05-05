package com.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.model.ManageCar;

@MultipartConfig(maxFileSize = 16177215) // upload file's size up to 16MB
public class ServletAddCar extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ServletAddCar() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle GET requests if needed
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        int carid = Integer.parseInt(request.getParameter("carid"));
        String carmodel = request.getParameter("carmodel");
        long carprice = Long.parseLong(request.getParameter("carprice"));
        Part filePart = request.getPart("carimage");

        InputStream inputStream = null;
        if (filePart != null) {
            inputStream = filePart.getInputStream();
        }

        ManageCar mc = new ManageCar();
        mc.setCarid(carid);
        mc.setCarmodel(carmodel);
        mc.setCarprice(carprice);
        mc.setCarimageStream(inputStream);

        try {
            if (mc.caridExists(carid)) {
                request.setAttribute("message", "Car ID already exists!");
            } else {
                mc.addCar();
                response.setContentType("text/html");
                PrintWriter pw = response.getWriter();
                pw.print("Car details added successfully!");
//                request.setAttribute("message", "Car details added successfully!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Error: " + e.getMessage());
        }

        // Forward the request to the addcar.jsp page with the message
        RequestDispatcher dispatcher = request.getRequestDispatcher("/addcar.jsp");
        dispatcher.forward(request, response);
    }
}
