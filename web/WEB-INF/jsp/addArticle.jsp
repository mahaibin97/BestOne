<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/27
  Time: 3:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div id="addArticle_top"></div>
    <div id="addArticle_details"></div>
    <script type="text/javascript">
        $(function(){
            //$.ajaxSetup({ cache:false  });	//关闭缓存
            $("#addArticle_top").empty().load("top");
            $("#addArticle_details").empty().load("toAddArticle");
        });
    </script>
</body>
</html>
