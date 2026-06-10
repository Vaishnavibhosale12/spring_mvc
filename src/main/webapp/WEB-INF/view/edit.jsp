<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>

<style>

.update-container{
    margin-left: 260px;
    margin-top: 80px;
    padding: 20px;
}

.update-card{
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 2px 15px rgba(0,0,0,0.15);
    padding: 30px;
    width: 90%;
    margin: auto;
}

.update-card h2{
    text-align: center;
    color: #1f2d3d;
    margin-bottom: 25px;
    font-size: 40px;
}

.update-card input{
    width: 100%;
    padding: 12px;
    margin-top: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    box-sizing: border-box;
}

.update-card button{
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

.update-card button:hover{
    background: #0047ab;
}

.msg{
    text-align: center;
    color: green;
    margin-top: 20px;
}

</style>

</head>
<body>

<div class="update-container">

    <div class="update-card">

        <h2>Update Student</h2>

        <form action="updateStudent" method="post">

            <input type="number"
                   name="id"
                   placeholder="Enter Student ID"
                   required>

            <input type="text"
                   name="name"
                   placeholder="Enter Student Name"
                   required>

            <input type="text"
                   name="city"
                   placeholder="Enter City"
                   required>

            <input type="text"
                   name="course"
                   placeholder="Enter Course"
                   required>

            <button type="submit">
                Update Student
            </button>

        </form>

        <h3 class="msg">${msg}</h3>

    </div>

</div>

</body>
</html>

<%@ include file="footer.jsp" %>