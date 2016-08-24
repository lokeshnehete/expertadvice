<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>${msg}</p>
<form action="adddata" method="post">
  Product Id:<br>
  <input type="text" name="productId"><br>
  Product Name:<br>
  <input type="text" name="productName"><br>
  Product Price:<br>
  <input type="text" name="productPrice"><br><br>
  <button type="submit" value="Submit">Add Data</button>
</form>
</body>
</html>