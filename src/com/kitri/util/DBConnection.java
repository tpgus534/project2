package com.kitri.util;

import java.sql.*;

public class DBConnection {
	
	static {
		try {
			Class.forName(HobbyConstance.DB_DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection makeConnection() throws SQLException {
		return DriverManager.getConnection(HobbyConstance.DB_URL, HobbyConstance.DB_USERNAME, HobbyConstance.DB_PASSWORD);
	}
}
