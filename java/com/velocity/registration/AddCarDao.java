package com.velocity.registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddCarDao {
	private String dburl = "jdbc:mysql://localhost:3306/velocity";
	private String dbuname = "root";
	private String dbpassword = "Rashad@123456";	
	private String dbdriver = "com.mysql.cj.jdbc.Driver";

	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dburl,dbuname,dbpassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;		
	}
	
	
	
	public String insert(AddCar addcar) {
		loadDriver(dbdriver);
		Connection con = getConnection();
		String result = "data entered successfully.!";
		String sql = "insert into velocity.cars values(?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, addcar.getId());
			ps.setInt(2, addcar.getLug_cot());
			ps.setString(3,addcar.getModal());
			ps.setString(4, addcar.getYear());
			ps.setString(5, addcar.getLicense());
			ps.setString(6, addcar.getSeats());
			ps.setString(7, addcar.getGear_Type());
			ps.setString(8, addcar.getCar_img());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			result = "data not entered.!";
		}
		return result;
		
	}

}
