<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

.container{
    width:400px;
    margin:50px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
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
    width:100%;
    padding:10px;
    background:green;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

</style>

</head>

<body>

<div class="container">

    <h2>Add Student</h2>

    <form action="saveStudent" method="post">

        <input type="number" name="id" placeholder="Enter ID">

        <input type="text" name="name" placeholder="Enter Name">

        <input type="text" name="city" placeholder="Enter City">

        <input type="text" name="course" placeholder="Enter Course">

        <button type="submit">
            Save Student
        </button>

    </form>
<h3 style="color:green;">
    ${msg}
</h3>
</div>

</body>
</html>