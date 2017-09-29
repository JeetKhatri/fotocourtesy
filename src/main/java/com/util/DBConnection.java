package com.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection("jdbc:mysql://127.4.228.2:3306/photography","admin8INXilU","tITlmjdXlbpr");
            //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/photography", "root", "root");
			if (conn != null)
			{
				
				return conn;
			}
		} catch (SQLException e) {
			return null;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public static void main(String[] args) {
		getConnection();
	}
}