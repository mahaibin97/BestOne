<%--
  Created by IntelliJ IDEA.
  User: mahaibin
  Date: 2019-04-02
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>社区文章详情页面</title>
    <style>
        .div_main{
            text-align: left; /*让div内部文字居中*/
            background-color: white;
            border-radius: 10px;
            width: 800px;
            height: auto;
            margin: auto;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }

        .div_title{
            background-color: #888888;
            border-radius: 10px;
            width: 800px;
            height: 120px;
            margin: 50px 20px;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 28px;
        }

        .div_timeAndAuthor{
            background-color: white;
            border-radius: 10px;
            height: 20px;
            margin-top: auto;
            margin-bottom: 40px;
            text-align: center;
            text-decoration-color: #3a87ad;
        }

        .div_abstract{
            background-color: white;
            border-radius: 10px;
            width: 800px;
            height: 50px;
            margin: 20px auto 70px auto;
            text-align: left;
            color: #888888;

        }

        .div_content{
            font-size: 18px;

        }
    </style>
</head>
<body>

<div class="div_main">
    <div class="div_title">
        <h2>${shequDetails.getArticle22_title()}</h2>
    </div>

    <div class="div_timeAndAuthor">
        <span>${shequDetails.getUserName()} </span> |
        <span>${shequDetails.getTime()} </span>
    </div>

    <div class="div_abstract">
        ${shequDetails.getArticle22_abstract()}
    </div>

    <div class="div_content">
        <p>
            ${shequDetails.getArticle22_content()}
        </p>
    </div>
</div>



</body>
</html>
