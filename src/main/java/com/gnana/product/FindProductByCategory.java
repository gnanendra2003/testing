package com.gnana.product;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gnana.MySQLConnection;

@WebServlet("/find-product_by_category")
public class FindProductByCategory extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String category=request.getParameter("productCategory");
		Connection conn=MySQLConnection.getConnection();
		try {
			PreparedStatement pst=conn.prepareStatement("SELECT * FROM products WHERE productCategory=?");
			pst.setString(1, category);
			ResultSet rs=pst.executeQuery();
			request.setAttribute("resultSet", rs);
			RequestDispatcher rd=request.getRequestDispatcher("DisplayProductByCategory.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MySQLConnection.closeConnection();
		}
	}

}
