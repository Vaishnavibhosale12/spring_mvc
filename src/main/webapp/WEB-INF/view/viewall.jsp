<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Students</title>

<style>

body{
    font-family:Arial;
    background:#f2f2f2;
}

.container{
    width:90%;
    margin:auto;
    margin-top:50px;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
    color:blue;
}

table{
    width:100%;
    border-collapse:collapse;
    margin-top:20px;
}

table,th,td{
    border:1px solid black;
}

th,td{
    padding:12px;
    text-align:center;
}

th{
    background:blue;
    color:white;
}

.edit{
    background:green;
    color:white;
    padding:6px 12px;
    text-decoration:none;
    border-radius:5px;
}

.delete{
    background:red;
    color:white;
    padding:6px 12px;
    text-decoration:none;
    border-radius:5px;
}

</style>

</head>
<body>

<div class="container">

<h2>All Students</h2>

<table>

<tr>
    <th>Id</th>
    <th>Name</th>
    <th>City</th>
    <th>Course</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>

<c:forEach var="s" items="${list}">

<tr>

    <td>${s.id}</td>
    <td>${s.name}</td>
    <td>${s.city}</td>
    <td>${s.course}</td>

    <td>
        <a class="edit"
        href="edit?id=${s.id}">
        Edit
        </a>
    </td>

    <td>
        <a class="delete"
        href="deleteById?id=${s.id}">
        Delete
        </a>
    </td>

</tr>

</c:forEach>

</table>

</div>

</body>
</html>