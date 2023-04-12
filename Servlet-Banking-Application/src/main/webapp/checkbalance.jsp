<%@page import="dto.Customer"%>
<%@page import="dto.BankAccount"%>
<%@page import="dao.BankDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Balance</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: lightblue;
    }
    h1 {
        text-align: center;
        margin-top: 50px;
    }
    p {
        font-size: 1.2em;
        text-align: center;
    }
    button {
        display: block;
        margin: 0 auto;
        margin-top: 50px;
        padding: 10px 20px;
        background-color: grey;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition:transform.2s;
    }
    
    button:hover{
    transform:scale(1.2);
    background-color: green;
    }
</style>
</head>
<body>
<%
long acno= (Long) session.getAttribute("acno");
BankDao bankDao=new BankDao();

BankAccount account=bankDao.find(acno);
%>

<h1>
Hello<% if(account.getCustomer().getGender().equals("male")) {%>Mr. <%}else{%>Ms. <%} %><%=account.getCustomer().getName() %>
</h1>
<p><h1>Your <%=account.getType() %> account balance is <%=account.getAmount() %></h1></p>
<a href="AccountHome.jsp"><button>Back</button></a>
</body>
</html>