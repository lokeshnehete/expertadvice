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
<table  border="2">
      <thead>
      <tr>
	      <th>ProductId</th>
	      <th>productName</th>
	      <th>productPrice</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${products}" var="pd">
      <tr>
	      <th><c:out value="${pd.productId}"/></th>
	      <th><c:out value="${pd.productName}"/></th>
	      <th><c:out value="${pd.productPrice}"/></th>
      <td>  
	      <a href="edit/${pd.productId}"><button type="button" class="button">Edit</button></a><br>  
	      <a href="delete/${pd.productId}"><button type="button" class="button">Delete</button></a><br>  
      </td>  
      </tr>
      </c:forEach>
      </tbody>
</table>

</body>
</html>