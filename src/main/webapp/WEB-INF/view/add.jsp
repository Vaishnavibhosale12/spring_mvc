<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

<style>

body{
    font-family: Arial;
    background:#f2f2f2;
}

/* Rocker container sobat conflict hou naye mhanun nav badalla */
.student-form{
    width:500px;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0 4px 15px rgba(0,0,0,0.15);

    margin-top:120px;
    margin-left:500px;
}

h2{
    text-align:center;
    margin-bottom:20px;
}

input{
    width:95%;
    padding:10px;
    margin:10px 0;
}

button{

    width:30%;
    padding:10px;
    background:green;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:darkgreen;
}

</style>

</head>

<body>

<div class="student-form">

    <h2>Add Student</h2>

    <form action="saveStudent" method="post">

        <input type="number" name="id" placeholder="Enter ID"><br><br>

        <input type="text" name="name" placeholder="Enter Name"><br><br>

        <input type="text" name="city" placeholder="Enter City"><br><br>

        <input type="text" name="course" placeholder="Enter Course"><br><br>

        <button type="submit">
            Save Student
        </button>

    </form>

    <h3 style="color:green;">
        ${msg}
    </h3>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>