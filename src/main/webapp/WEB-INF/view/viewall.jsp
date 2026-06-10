<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Students</title>

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

table{
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table th{
    background: #0d6efd;
    color: white;
    padding: 12px;
    border: 1px solid #ddd;
    text-align: center;
}

table td{
    padding: 12px;
    border: 1px solid #ddd;
    text-align: center;
}

.edit{
    background: green;
    color: white;
    padding: 8px 15px;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
}

.edit:hover{
    background: #0a8a0a;
}

.delete{
    background: red;
    color: white;
    padding: 8px 15px;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
}

.delete:hover{
    background: darkred;
}

</style>

</head>
<body>

<div class="view-container">

    <div class="view-card">

        <h2>All Students</h2>

        <table>

            <tr>
                <th>ID</th>
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

</div>

</body>
</html>

<%@ include file="footer.jsp" %>