package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ManageCar extends Car {
   

	public void addCar() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms42", "root", "daddy12345")) {
            String query = "INSERT INTO CAR (carid, carmodel, carprice, carimage) VALUES (?, ?, ?, ?)";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setInt(1, getCarid());
                ps.setString(2, getCarmodel());
                ps.setLong(3, getCarprice());
                if (getCarimageStream() != null) {
                    ps.setBinaryStream(4, getCarimageStream());
                }
                int rowsAffected = ps.executeUpdate();
                if (rowsAffected > 0) {
                    System.out.println("Car details and image inserted successfully");
                } else {
                    throw new Exception("Failed to insert car details");
                }
            }
        }
    }

	public boolean caridExists(int carid) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms42", "root", "daddy12345")) {
            String query = "SELECT * FROM CAR WHERE carid = ?";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setInt(1, carid);
                try (ResultSet rs = ps.executeQuery()) {
                    return rs.next(); // Returns true if carid exists
                }
            }
        }
    }
	public void updateCar() throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms42", "root", "daddy12345");

		PreparedStatement ps = con.prepareStatement("UPDATE Car SET carprice= ? WHERE carid = ?");

		ps.setLong(1, carprice);
		ps.setInt(2, carid);

		ps.execute();
		con.close();
	}
	public void deleteCar() throws Exception {
	    Class.forName("com.mysql.cj.jdbc.Driver");

	    try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms42", "root", "daddy12345")) {
	        PreparedStatement ps = con.prepareStatement("DELETE FROM car WHERE carid = ?");
	        ps.setInt(1, carid);

	        ps.executeUpdate();
	    }
	}
}
