package com.gnana;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class MySQLConnection {
	private static Connection conn;
	
	public static synchronized Connection getConnection() {
		Properties prop=new Properties();
		try {
			prop.load(new FileReader("C:\\Users\\Sumithra\\Desktop\\GNANENDRA\\Advance Java\\Servlet\\ServletProject_Product-Description\\src\\main\\resources\\config\\mysqlDB.properties"));
			Class.forName(prop.getProperty("dbPath"));
			conn=DriverManager.getConnection(prop.getProperty("dbUrl"),prop.getProperty("dbUser"),prop.getProperty("dbPassword"));
		} catch (IOException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return  conn;
	}
	public static synchronized void closeConnection() {
		try {
			if(conn!=null && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
