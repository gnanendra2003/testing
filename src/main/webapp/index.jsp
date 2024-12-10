<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gnana Store</title>
<style>
	body{
		background-image: url('https://media.istockphoto.com/id/1556119299/photo/empty-aisles-at-a-supermarket.jpg?s=1024x1024&w=is&k=20&c=RIdtdC1ys2hoU6VaJK9MIC1A_c8zvB8yBeU6kfx8fBg=');
		background-size: cover;
	}
	a{
		color : yellow;
		text-decoration: none
	}
	a:hover {
		text-decoration: underline;
		color: red;
	}
	.butt{
		border: none;
		border-bottom: 50px;
		background-color: transparent;
	}
	.butt:hover{
		background-color: white;
	}
}
</style>
</head>
<body>
	<div style="display: absolute; position: fixed; top: 5px "><img alt="products photo" src="https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1000w,f_auto,q_auto:best/newscms/2021_07/3451045/210218-product-of-the-year-2x1-cs.jpg" width="300px" height="150px"></div>
	<div style="display: flex; background-color: #ffeb8b; align-items: center; height: 100px; padding-left: 5px; margin-top: 30px; justify-content: center;">
	<div style="height: 75px"><h1>Welcome to Gnana Products Store</h1></div>
	</div>
	<br>
	<form action="find-product_by_category">
	<div align="right" style="margin-right: 50px;">
		<input type="text" placeholder="Search the Product by Category" name="productCategory" size="50" style="height: 25px">
		<input type="submit" value="Search" style="height: 25px; cursor: pointer;">
	</div>
	</form>
	<div>
	<div style="margin-top: 100px">
		<button class="butt" style="margin-right: 30px"><a href="display-all_product"><h2>Display all Products</h2></a></button>
		<button class="butt" style="margin-right: 30px"><a href=""><h2>Modify Product</h2></a></button>
		<button class="butt"><a href=""><h2>Add a new Product</h2></a></button>
	</div>
		
	</div>
	
	
</body>
</html>