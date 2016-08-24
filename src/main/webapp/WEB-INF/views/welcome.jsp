<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button3 {background-color: #f44336;} /* Red */

</style>
</head>
<body>
<form action="adddata" method="post" >
<table  border="2">

	<tr><td><b>Enter Product Id</b></td><td><input type="text" name="productId"></tr>
	<tr><td><b>Enter Product Name</b></td><td><input type="text" name="productName"></tr>
	<tr><td><b>Enter Product Price</b></td><td><input type="text" name="productPrice"></tr>

	<tr><td><input type="reset" value="Reset"></td>
		<td><input type="submit" value="Insert"></td>
	

</table>
<a href="records">Product records</a>

</form>
<a href="cancel">
  <button class="button button3">LogOut</button>

</a>
</body>
</html>