<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/22
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<script type="text/javascript">
    function check(){
        if ($("#phone").val()===""){
            alert("电话不能为空");
            return false;
        }
        if(($("#pwd").val()===""||($("#pwd_again").val()==="")||($("#pwd").val()!==($("#pwd_again").val())))) {
            alert("密码不正确");
            return false;
        }
        return true;
    }
</script>
<div class="container" style="padding-left: 200px;padding-right:200px;
            padding-top:50px;background-color: #6cf">
    <h1>亲，下次不要忘记了</h1>
    <form action="/login/changepassword" method="post" id="register_form" onsubmit="return check()">
        <div class="form-group">
            <label for="phone">电  话:</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter phone">
        </div>
        <div class="form-group">
            <label for="pwd">输入新的密码:</label>
            <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Enter password">
        </div>
        <div class="form-group">
            <label for="pwd_again">重复新的密码:</label>
            <input type="password" class="form-control" id="pwd_again" name="pwdagain" placeholder="Enter password again">
        </div>
        <button  id="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
