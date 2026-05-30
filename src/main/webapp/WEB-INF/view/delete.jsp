<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Student</title>

<style>

body{
    font-family: Arial;
    background:#f2f2f2;
}

.container{
    width:400px;
    margin:auto;
    margin-top:100px;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
    color:red;
}

input{
    width:100%;
    padding:10px;
    margin-top:15px;
}

button{
    width:100%;
    padding:10px;
    margin-top:15px;
    background:red;
    color:white;
    border:none;
    font-size:18px;
}

.msg{
    text-align:center;
    color:green;
}

</style>

</head>
<body>

<div class="container">

<h2>Delete Student</h2>

<form action="deleteStudent" method="post">

    <input type="text" 
    name="id" 
    placeholder="Enter Student Id">

    <button type="submit">
        Delete Student
    </button>

</form>

<h3 class="msg">${msg}</h3>

</div>

</body>
</html>