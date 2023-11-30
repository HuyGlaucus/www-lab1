<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View Log</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    table {
      width: 80%;
      border-collapse: collapse;
    }

    th, td {
      border: 1px solid black;
      padding: 8px;
      text-align: center;
    }
  </style>
</head>
<body>
<h1>View Log</h1>
<table border="1">
  <tr>
    <th>Account ID</th>
    <th>Login Time</th>
    <th>Logout Time</th>
  </tr>
  <c:forEach var="log" items="${logList}">
    <tr>
      <td>${log.accountId}</td>
      <td>${log.loginTime}</td>
      <td>${log.logoutTime}</td>
    </tr>
  </c:forEach>
</table>
<button type="button" class="btn btn-success" onclick="goBack()">Quay lại</button>
<script>
  function goBack() {
    window.history.back();
  }
</script>
</body>
</html>
