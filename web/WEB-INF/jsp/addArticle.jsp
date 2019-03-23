<%--
  Created by IntelliJ IDEA.
  User: mahaibin
  Date: 2019-03-23
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <title>Title</title>
</head>
<body>

<form action="/article/addArticle" method="post" id="register_form" onsubmit="return check()">
    <div class="form-group">
        <label for="title">标题</label>
        <input type="text" class="form-control" id="title" name="title" placeholder="Enter name">
    </div>
    <div class="form-group">
        <label for="article_text">内容</label>
        <input type="text" class="form-control" id="article_text" name="article_text" placeholder="Enter name">
    </div>

    <button  id="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>
