package com.gnana.product;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnana.MySQLConnection;

@WebServlet("/display-all_product")
public class DisplayAllProducts extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = MySQLConnection.getConnection();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM products");
			request.setAttribute("resultSet", rs);
			RequestDispatcher rd=request.getRequestDispatcher("DisplayAllProducts.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQLConnection.closeConnection();
		}
	}
}

