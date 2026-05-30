<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Student</title>

<style>

body{
    font-family: Arial;
    background:#f2f2f2;
}

.container{
    width:500px;
    margin:auto;
    margin-top:80px;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
    color:blue;
}

input{
    width:100%;
    padding:10px;
    margin-top:10px;
}

button{
    width:100%;
    padding:10px;
    margin-top:15px;
    background:blue;
    color:white;
    border:none;
    font-size:18px;
}

table{
    width:100%;
    margin-top:20px;
    border-collapse:collapse;
}

table,th,td{
    border:1px solid black;
    padding:10px;
    text-align:center;
}

</style>

</head>
<body>

<div class="container">

<h2>View Student</h2>

<form action="viewStudent" method="post">

    <input type="text"
    name="id"
    placeholder="Enter Student Id">

    <button type="submit">
        View Student
    </button>

</form>

<table>

<tr>
    <th>Id</th>
    <th>Name</th>
    <th>City</th>
    <th>Course</th>
</tr>

<tr>
    <td>${s.id}</td>
    <td>${s.name}</td>
    <td>${s.city}</td>
    <td>${s.course}</td>
</tr>

</table>

</div>

</body>
</html>