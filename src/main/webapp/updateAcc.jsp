<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .navbar a {
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }


    </style>
</head>
<body>

<div class="container mt-3">
    <form id="createUpdateForm" method="post" action="controller">
        <div class="form-group">
            <label for="account_id">AccountID:</label>
            <input type="text" class="form-control" id="account_id" name="account_id" required>
        </div>
        <div class="form-group">
            <label for="full_name">FullName:</label>
            <input type="text" class="form-control" id="full_name" name="full_name" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="text" class="form-control" id="phone" name="phone" required>
        </div>
        <div class="form-group">
            <label for="status">Status:</label>
            <input type="text" class="form-control" id="status" name="status">
        </div>
        <button type="submit" class="btn btn-primary" name="action" value="Update">Update</button>
        <button type="button" class="btn btn-success" onclick="goBack()">Quay lại</button>
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </form>
</div>

</body>
</html>
