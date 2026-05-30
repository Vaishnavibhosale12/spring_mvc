<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>

<style>

body{
    font-family: Arial;
    background: #f2f2f2;
}

.container{
    width: 400px;
    margin: 50px auto;
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px gray;
}

h2{
    text-align: center;
}

input{
    width: 100%;
    padding: 10px;
    margin-top: 10px;
}

button{
    width: 100%;
    padding: 10px;
    margin-top: 15px;
    background: blue;
    color: white;
    border: none;
}

.msg{
    color: green;
    text-align: center;
}

</style>

</head>
<body>

<div class="container">

<h2>Update Student</h2>

<form action="updateStudent" method="post">

    <input type="number" name="id" placeholder="Enter Id">

    <input type="text" name="name" placeholder="Enter Name">

    <input type="text" name="city" placeholder="Enter City">

    <input type="text" name="course" placeholder="Enter Course">

    <button type="submit">Update Student</button>

</form>

<h3 class="msg">${msg}</h3>

</div>

</body>
</html>