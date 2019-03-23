<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/1
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>欢迎加入BestOne!</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<script type="text/javascript">
    function check(){
        if($("#name").val()===""){
            alert("昵称不能为空");
            return false;
        }
        if ($("#phone").val()===""){
            alert("电话不能为空");
            return false;
        }
        if ($("#age").val()===""){
            alert("年龄不能为空");
            return false;
        }
        if(($("#pwd").val()===""||($("#pwd_again").val()==="")||($("#pwd").val()!==($("#pwd_again").val())))) {
            alert("密码不正确");
            return false;
        }
        if($("#man").is(":checked")){
            $("#gender").val("男");
        }else if($("#woman").is(":checked")){
            $("#gender").val("女");
        }else{
            alert("请选择性别");
            return false;
        }
        if (!($("#register_check").is(":checked"))) {
            return false;
        }
        return true;
    }
</script>

    <div class="container" style="padding-left: 200px;padding-right:200px;
                padding-top:50px;background-color: #6cf">
        <h1>欢迎加入BestOne!</h1>
        <h2>注册加入我们，找到最好的BestOne!</h2>
        <form action="/login/register" method="post" id="register_form" onsubmit="return check()">
            <div class="form-group">
                <label for="name">昵  称:</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter name">
            </div>
            <div class="form-group">
                <label for="phone">电  话:</label>
                <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter phone">
            </div>
            <div class="form-group">
                <label for="phone">年  龄:</label>
                <input type="text" class="form-control" id="age" name="age" placeholder="Enter age">
            </div>
            <div class="form-group">
                <label for="pwd">密  码:</label>
                <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Enter password">
            </div>
            <div class="form-group">
                <label for="pwd_again">重复密码:</label>
                <input type="password" class="form-control" id="pwd_again" name="pwdagain" placeholder="Enter password again">
            </div>
            <div class="form-check">
                您的性别是：
                <label class="radio-inline"><input type="radio" id="man" >男</label>
                <label class="radio-inline"><input type="radio" id="woman">女</label>
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" id="register_check" >我已经同意用户协议
                </label>
            </div>
            <button  id="submit" class="btn btn-primary">Submit</button>
            <input name="gender" id="gender" type="hidden"/>
        </form>
    </div>
</body>
</html>
