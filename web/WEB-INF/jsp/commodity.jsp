<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/1
  Time: 19:19
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
    <style>
        .div_main{
            /*text-align: left; !*让div内部文字居中*!*/
            background-color: white;
            border-radius: 10px;
            width: 800px;
            height: auto;
            margin: 20px auto 20px auto;
            /*position: absolute;*/
        }
    </style>
</head>
<body>
<!-- 顶部 -->
<div id="main_top"></div>
<div id="commodity_details" class="div_main"></div>
<div id="commodity_overViewThumbsUpCollect" class="div_main"></div>
<div id="commodity_comment" class="div_main"></div>
<script type="text/javascript">
    $(function(){
        //$.ajaxSetup({ cache:false  });	//关闭缓存
        $("#main_top").empty().load("top");
        $("#commodity_details").empty().load("commodity_details");
        $("#commodity_overViewThumbsUpCollect").empty().load("commodity_overViewThumbsUpCollect");
        $("#commodity_comment").empty().load("commodity_comment");
    });
</script>

</body>
</html>