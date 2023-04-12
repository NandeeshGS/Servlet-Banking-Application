<%@page import="dto.Customer"%>
<%@page import="dto.BankTransaction"%>
<%@page import="java.util.List"%>
<%@page import="dto.BankAccount"%>
<%@page import="dao.BankDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View Transaction</title>
  <style>
  body{
  background-color: lightblue;
  margin-left: 30px;
  }
    table {
      border-collapse: collapse;
      margin-top: 20px;
    }
    th, td {
      padding: 10px;
      text-align: center;
    }
    th {
      background-color: white;
    }
    tr:nth-child(even) {
      background-color: white;
    }
    tr:hover {
      background-color: white;
    }
    button {
      margin-top: 20px;
      padding: 10px;
      background-color: grey;
      color: black;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition:transform.2s;
    }
    button:hover {
      background-color: green;
      transform:scale(1.2);
    }
  </style>

<%Customer customer=(Customer)session.getAttribute("customer");
if(customer==null)
{
	response.getWriter().print("<h1>Session expired login again</h1>");
	request.getRequestDispatcher("Login.html").include(request, response);
}
else{
%>

<%
long acno= (Long) session.getAttribute("acno");
BankDao bankDao=new BankDao();
BankAccount account=bankDao.find(acno);
List<BankTransaction> list=account.getTransactions();
%>

<h1>Account number:<%=acno %></h1><br>
<h1>Account Type:<%=account.getType() %></h1><br>

<table border="1">
<tr>
<th>Transcation_id</th>
<th>Deposit</th>
<th>Withdraw</th>
<th>Balance</th>
<th>Time</th>
</tr>
<%for(BankTransaction transaction:list) {%>
<tr>
<th><%=transaction.getId() %></th>
<th><%=transaction.getDeposit() %></th>
<th><%=transaction.getWithdraw() %></th>
<th><%=transaction.getBalance() %></th>
<th><%=transaction.getDatetime() %></th>
</tr>
<%} %>
</table>
<br>
<br>
<a href="AccountHome.jsp"><button>Back</button></a>
<%} %>
</body>
</html>