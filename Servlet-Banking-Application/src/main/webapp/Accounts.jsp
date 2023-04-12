<%@page import="dto.BankAccount"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Account</title>
<style type="text/css">
   body{
    background-color: lightblue;
   }
  h1 {
      text-align: center;
      margin-top: 30px;
      color: brown;
  }

  a {
        display: block;
        margin-top: 20px;
        text-align: center;
    }
button{
        padding: 10px;
        border-radius: 5px;
        border: none;
        margin-right: 10px;
        cursor: pointer;
        transition:transform.2s:
}

 button:hover{
   background-color: green;
   transform:scale(1.4);
 }
</style>
</head>
<body>
<%List<BankAccount> list=(List<BankAccount>)request.getAttribute("list");
if(list.isEmpty())
{
%>
<h1>No Active Accounts Found</h1>
<%}else{ %>
<h1>Select Bank Account</h1>
<%for(BankAccount account:list){ %>
<a href="setaccount?acno=<%=account.getAcno()%>"><button><%=account.getAcno()%></button></a><br><br>
<% }%>
<%} %>
</body>
</html>