<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/1
  Time: 19:34
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
    <div id="user_details"></div>
    <script type="text/javascript">
        $(function(){
            //$.ajaxSetup({ cache:false  });	//关闭缓存
            $("#main_top").empty().load("top");
            $("#user_details").empty().load("user_details");
        });
    </script>
</body>
</html>
