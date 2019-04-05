<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <%--<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>--%>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../css/style_login.css">
</head>

<body>
<div class="container">
    <div class="form-horizontal col-md-offset-3">
        <div style="margin:0 auto;width:250px;height:30px;border:30px">
            <h1 class="form-title">BestOne</h1>
        </div>

        <form action="/login/login" method="post" class="form row">


            <div class="col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg"> </i>
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入手机号">
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"> </i>
                    <input type="password" class="form-control" id="pwd" name="pwd" placeholder="请输入密码">
                </div>
                <div class="form-check">
                    <label class="form-check-label">
                        <input type="checkbox" name="remember" value="1"/>记住我
                    </label>
                    <a type="button" class="btn btn btn-info" style="color: black" href="/login/toregister">注 册 </a>
                    <a type="button" class="btn btn btn-info" style="color: black" href="/login/toChangePassword">忘记密码</a>
                </div>
                <div class="form-group col-md-offset-9">
                    <button id="login_submit" type="submit" class="btn btn-success pull-right">登录</button>
                </div>
            </div>
            <%--</div>--%>
        </form>
    </div>
</div>
</body>
</html>
