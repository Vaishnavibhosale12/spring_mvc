<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>

<style>

.main-container{
    width: 450px;
    background: white;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.2);

    margin-top: 90px;
    margin-left: auto;
    margin-right: 400px;
}

.main-container h2{
    text-align:center;
    margin-bottom:25px;
    color:#333;
}

.main-container a{
    display:block;
    padding:14px;
    margin:12px 0;
    text-decoration:none;
    color:white;
    border-radius:10px;
    font-size:16px;
    font-weight:bold;
    text-align:center;
}

.add{
    background:#28a745;
}

.update{
    background:#28a745;
    
}

.delete{
    background:#28a745;
}

.view{
    background:#28a745;
}

.viewall{
    background:#28a745;
}

</style>
</head>

<body>

<div class="main-container">

    <h2>Student Management System</h2>

    <a href="add" class="add">Add Student</a>

    <a href="edit" class="update">Update Student</a>

    <a href="delete" class="delete">Delete Student</a>

    <a href="view" class="view">View Particular Student</a>

    <a href="viewall" class="viewall">View All Students</a>

</div>

</body>
</html>

<%@ include file="footer.jsp" %>