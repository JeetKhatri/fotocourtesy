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
			Connection conn = DriverManager.getConnection("jdbc:mysql://65.19.141.67:3306/sharvil_fotocourtesy","sharvil_wp614","urvilsh@H1628");
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
