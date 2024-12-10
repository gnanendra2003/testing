<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display by category</title>
<style>
	.hidden-image {
    	display: none;
	}
	.hover-text:hover ~ .hidden-image {
	    display: block;
	}
	.hover-text:hover {
		color : red;
		cursor: pointer;
		background-color: yellow;
	}
}
	
</style>
</head>
<body>
	<%ResultSet rs=(ResultSet) request.getAttribute("resultSet"); 
	if(!rs.next()){%>
		<h2>No products found</h2>
	<%} else { 
	%>
	<table border="" style="text-align: center;">
		<tr style="background-color: orange;">
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Product Brand</th>
			<th>Product Category</th>
			<th>Product Price</th>
			<th>Product Image</th>
		</tr>
	<%do{%>
		<tr style="height: 50px; ">
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getInt(5)%></td>
			<td>
				<div class="hover-text" style="color: blue">View Image</div>
            	<img class="hidden-image" alt="<%=rs.getString(2)%>" src="<%=rs.getString(6)%>" width="300px" height="300px"  hidden="hidden">
			</td>
		</tr>
	<%}while(rs.next()); %>	
	</table>
	<%} %>
	<h1><a href="index.jsp">←Go back</a></h1>
</body>
</html>