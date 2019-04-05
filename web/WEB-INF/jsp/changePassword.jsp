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
    <link rel="stylesheet" href="../../css/style_login.css">
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
<div class="container" style="padding-left: 200px;padding-right:200px;padding-top:50px;align-items: center;">
    <h2>修改密码</h2>
    <form action="/login/changepassword" method="post" id="register_form" onsubmit="return check()" style="background: rgba(255,255,255,0.29)">
        <div class="form-group">
            <label for="phone">电  话:</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入您的手机号">
        </div>
        <div class="form-group">
            <label for="pwd">新密码:</label>
            <input type="password" class="form-control" id="pwd" name="pwd" placeholder="请输入新的密码">
        </div>
        <div class="form-group">
            <label for="pwd_again">重复新密码:</label>
            <input type="password" class="form-control" id="pwd_again" name="pwdagain" placeholder="请再次输入新的密码">
        </div>
        <button  id="submit" class="btn btn-primary">提交</button>
    </form>
</div>
</body>
</html>
