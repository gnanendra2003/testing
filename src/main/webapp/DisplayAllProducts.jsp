<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Products</title>
</head>
<body>
	<%ResultSet rs=(ResultSet) request.getAttribute("resultSet"); %>
	<h1><u>Available Products in Store</u> :-</h1>
	<table border="" style="text-align: center;">
		<tr style="background-color: orange;">
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Product Brand</th>
			<th>Product Category</th>
			<th>Product Price</th>
			<th>Product Image</th>
		</tr>
	<%while(rs.next()){%>
		<tr style="height: 50px; ">
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getInt(5)%></td>
			<td>
            	<img class="hidden-image" alt="<%=rs.getString(2)%>" src="<%=rs.getString(6)%>" width="150px" height="150px">
			</td>
		</tr>
	<%}%>	
	</table>
	<h1><a href="index.jsp">←Go back</a></h1>
</body>
</html>