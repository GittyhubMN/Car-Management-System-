package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ManageAdmin extends Admin {
    
    public void insert() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms42", "root", "daddy12345");

        PreparedStatement ps = con.prepareStatement("INSERT INTO Admin (firstname, lastname, email, password, contactnumber) VALUES (?, ?, ?, ?, ?)");

        ps.setString(1, firstname);
        ps.setString(2, lastname);
        ps.setString(3, email);
        ps.setString(4, password);
        ps.setLong(5, contactnumber);

        ps.execute();
        con.close();
    }

    public List<Admin> login(String email, String password) throws Exception {
        List<Admin> users = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms42", "root", "daddy12345");

            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM admin WHERE email=? AND password=?");
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Admin user = new Admin();
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                users.add(user);
            }

            rs.close();
            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Error in database connection or query", e); // Rethrow the exception or handle as needed
        }

        return users;
    }
    
    public boolean emailExists(String email) throws Exception {
        boolean exists = false;
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms42", "root", "daddy12345");
        
        String query = "SELECT COUNT(*) FROM admin WHERE email = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, email);
        
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            exists = rs.getInt(1) > 0;
        }

        rs.close();
        ps.close();
        con.close();

        return exists;
    }
}
      