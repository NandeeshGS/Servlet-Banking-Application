<%@page import="dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Select Account Type</title>
	<style>
	    body{
	    background-color: lightblue;
	    }
	
		h1 {
			text-align: center;
			color: brown;
		}
		
		form {
		    
			margin: 0 auto;
			width: 170px;
			height:100px;
			text-align: center;
			
		}
		
		input[type="radio"] {
			margin-right: 10px;
		}
		
		button[type="reset"],
		button[type="submit"] {
			padding: 10px;
			background-color: green;
			color: white;
			border: none;
			border-radius: 5px;
			margin-right: 10px;
			cursor: pointer;
			transition: transform.2s;
		}
		
		button[type="reset"]:hover,
		button[type="submit"]:hover {
			background-color: darkgreen;
			transform:scale(1.2);
		}
		
	</style>
</head>
<body>
<%Customer customer =(Customer)session.getAttribute("customer");
if(customer==null)
{
	response.getWriter().print("<h1>Session expired login again</h1>");
	request.getRequestDispatcher("Login.html").include(request, response);
}
else{
%>

<h1>Hello <%=customer.getName() %> </h1>
<h1>Select Type of Account</h1>
	<form action="createbankaccount">
		<input type="radio" name="banktype" value="saving" id="saving" required="required">
		<label for="saving"><b>Saving</b></label>
		
		<input type="radio" name="banktype" value="current" id="current">
		<label for="current"><b>Current</b></label><br><br>
		
		<button type="reset">Cancel</button>
		<button type="submit">Submit</button>
	</form>
	<%} %>
</body>
</html>