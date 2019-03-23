<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/20
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>


    <div class="container" style="background-image: url('../../images/login_bgx.gif')">
        <h2>BestOne!</h2>
        <div><img src="../../images/logo.png"></div>
        <form action="/login/login" method="post">
            <div class="form-group">
                <label for="phone">手机账号:</label>
                <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入手机号">
            </div>
            <div class="form-group">
                <label for="pwd">密码:</label>
                <input type="password" class="form-control" id="pwd" name="pwd"placeholder="请输入密码">
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox"> Remember me
                </label>
                <a type="button" class="btn btn-secondary" href="/login/toregister">注册</a>
                <a type="button" class="btn btn-secondary" href="/login/toChangePassword">忘记密码</a>
            </div>
            <button id="login_submit" type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
