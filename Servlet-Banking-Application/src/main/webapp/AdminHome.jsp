<%@page import="java.util.List"%>
<%@page import="dao.BankDao"%>
<%@page import="dto.BankAccount"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin</title>
  <style>
  
    table {
    border: 1px solid;
      border-collapse: collapse;
      width: auto;
      
    }
    th, td {
    border:1px solid;
      text-align: left;
      padding: 8px;
      
    }
    th {
      background-color: grey;
    }
    tr:nth-child(even) {
      background-color: ;
    }
    button {
      background-color: #4CAF50;
      color: white;
      padding: 8px 16px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    a button {
      text-decoration: none;
    }
  </style>
</head>
<body>
  <% List<BankAccount> list=(List<BankAccount>)request.getAttribute("list"); %>
  <table>
    <tr>
      <th>Account Number</th>
      <th>Account Type</th>
      <th>Customer Name</th>
      <th>Customer Id</th>
      <th>Status</th>
      <th>Change Status</th>
    </tr>
    <%for(BankAccount account:list){ %>
    <tr>
      <td><%=account.getAcno() %></td>
      <td><%=account.getType() %></td>
      <td><%=account.getCustomer().getName() %></td>
      <td><%=account.getCustomer().getCust_id() %></td>
      <td><%=account.isStatus() %></td>
      <td><a href="changestatus?acno=<%=account.getAcno()%>"><button>Change</button></a></td>
    </tr>
    <%} %>
  </table>
  <br><br>
  <a href="Home.html"><button>Logout</button></a>
</body>
</html>