<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Student</title>

<style>

.view-container{
    margin-left: 260px;
    margin-top: 100px;
    padding: 20px;
}

.view-card{
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 2px 15px rgba(0,0,0,0.15);
    padding: 30px;
    width: 90%;
    margin: auto;
}

.view-card h2{
    text-align: center;
    color: #1f2d3d;
    margin-bottom: 25px;
    font-size: 40px;
}

.view-card input{
    width: 100%;
    padding: 12px;
    margin-top: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    box-sizing: border-box;
}

.view-card button{
    width: 100%;
    padding: 12px;
    margin-top: 20px;
    border: none;
    border-radius: 5px;
    background: blue;
    color: white;
    font-size: 18px;
    cursor: pointer;
}

.view-card button:hover{
    background: #0047ab;
}

table{
    width: 100%;
    margin-top: 30px;
    border-collapse: collapse;
}

table th{
    background: #0d6efd;
    color: white;
    padding: 12px;
    border: 1px solid #ddd;
}

table td{
    padding: 12px;
    border: 1px solid #ddd;
    text-align: center;
}

</style>

</head>
<body>

<div class="view-container">

    <div class="view-card">

        <h2>View Student</h2>

        <form action="viewStudent" method="post">

            <input type="number"
                   name="id"
                   placeholder="Enter Student ID"
                   required>

            <button type="submit">
                View Student
            </button>

        </form>

        <table>

            <tr>
                <th>ID</th>
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

</div>

</body>
</html>

<%@ include file="footer.jsp" %>