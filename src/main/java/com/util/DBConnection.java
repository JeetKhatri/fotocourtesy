package com.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			//Connection conn =DriverManager.getConnection("jdbc:mysql://mysql:3306/sampledb","user","password");
            //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/photography", "root", "root");
			//Connection conn = DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12230123","sql12230123","9Y5VZmlPqn");
			
			Connection conn = DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12239684","sql12239684","AS1pZyD6HE");
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
