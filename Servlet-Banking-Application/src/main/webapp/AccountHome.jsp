<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Account Home</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: grey;
      margin-left: 30px;
    }
    button {
      background-color: green;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
      margin-bottom: 10px;
      transition: transform.2s;
    }
    button:hover {
      background-color: blue;
      transform:scale(1.1);
    }
  </style>
</head>
<body>
  <a href="deposit.html"><button>Deposit</button></a><br><br>
  <a href="withdraw.html"><button>Withdraw</button></a><br><br>
  <a href="checkbalance.jsp"><button>Check Balance</button></a><br><br>
  <a href="viewtransaction.jsp"><button>View Transaction</button></a><br><br>
  <a href="logout"><button>Logout</button></a><br><br>
</body>
</html>