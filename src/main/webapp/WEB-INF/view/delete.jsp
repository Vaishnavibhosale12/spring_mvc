<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Student</title>

<style>

.delete-container{
    margin-left: 260px;   /* sidebar space */
    margin-top: 100px;    /* header space */
    padding: 20px;
}

.delete-card{
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 2px 15px rgba(0,0,0,0.15);
    padding: 30px;
    width: 90%;
    margin: auto;
}

.delete-card h2{
    text-align: center;
    color: #1f2d3d;
    margin-bottom: 25px;
    font-size: 40px;
}

.delete-card input{
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

.delete-card button{
    width: 20%;
    padding: 12px;
    margin-top: 20px;
    margin-left: 370px;
    border: none;
    border-radius: 5px;
    background: red;
    color: white;
    font-size: 18px;
    cursor: pointer;
}

.delete-card button:hover{
    background: darkred;
}

.msg{
    text-align: center;
    color: green;
    margin-top: 20px;
}

</style>

</head>
<body>

<div class="delete-container">

    <div class="delete-card">

        <h2>Delete Student</h2>

        <form action="deleteStudent" method="post">

            <input type="text"
                   name="id"
                   placeholder="Enter Student ID"
                   required>

            <button type="submit">
                Delete Student
            </button>

        </form>

        <h3 class="msg">${msg}</h3>

    </div>

</div>

</body>
</html>

<%@ include file="footer.jsp" %>