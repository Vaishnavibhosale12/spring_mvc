<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>

<style>

.contact-container{
    width: 420px;
    background: #fff;
    padding: 25px;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.2);

    margin-top: 40px;
    margin-left: auto;
    margin-right: 380px;
}

.contact-container h2{
    text-align:center;
    margin-bottom:20px;
    color:#333;
}

.form-group{
    margin-bottom:15px;
}

.form-group label{
    display:block;
    margin-bottom:6px;
    font-weight:bold;
    color:#444;
}

.form-group input,
.form-group textarea{
    width:100%;
    padding:10px;
    border:1px solid #ced4da;
    border-radius:8px;
    font-size:14px;
    box-sizing:border-box;
}

.form-group textarea{
    height:120px;
    resize:none;
}

.btn-submit{
    width:100%;
    padding:12px;
    border:none;
    border-radius:8px;
    background:#0d6efd;
    color:white;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
}

.btn-submit:hover{
    background:#0b5ed7;
}

</style>
</head>

<body>

<div class="contact-container">

    <h2>Contact Us</h2>

    <form action="contact" method="post">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" placeholder="Enter Name" required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter Email" required>
        </div>

        <div class="form-group">
            <label>Subject</label>
            <input type="text" name="subject" placeholder="Enter Subject" required>
        </div>

        <div class="form-group">
            <label>Message</label>
            <textarea name="message" placeholder="Enter Message" required></textarea>
        </div>

        <button type="submit" class="btn-submit">
            Send Message
        </button>

    </form>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>