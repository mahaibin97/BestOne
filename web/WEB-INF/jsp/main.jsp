<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/2/26
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <base target="MyFrame" />
    <title>BestOne</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <!-- 顶部 -->
    <div id="main_top"></div>
    <!-- 主体 -->
    <div class="container" style="margin-top:50px">
        <div class="row">
            <div id="main_left"></div>
            <div id="main_right"></div>
        </div>
    </div>
    <!-- 底部 -->
    <div id="main_bottom"></div>
    <script type="text/javascript">
        $(function(){
            //$.ajaxSetup({ cache:false  });	//关闭缓存
            $("#main_top").empty().load("top");
            $("#main_left").empty().load("left");
            $("#main_right").empty().load("right");
            $("#main_bottom").empty().load("bottom");
        });
    </script>
</body>
</html>