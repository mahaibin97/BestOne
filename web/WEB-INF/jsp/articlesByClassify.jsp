<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page import="com.bestone.model.UserArticlePicture" %>--%>
<%--<%@ page import="java.util.List" %>&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: cc--%>
  <%--Date: 2019/4/2--%>
  <%--Time: 20:14--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Title</title>--%>
    <%--<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <%--<script type="text/javascript">--%>
        <%--$(function(){--%>
            <%--//$.ajaxSetup({ cache:false  });	//关闭缓存--%>
            <%--$("#main_top").empty().load("top");--%>
        <%--});--%>
    <%--</script>--%>
<%--</head>--%>
<%--<body>--%>
    <%--<div id="main_top"></div>--%>
    <%--<p>当前所在标签：${Classify}</p>--%>
    <%--<div class="row" style="margin-bottom: 0px;padding-bottom: 0px;">--%>
            <%--<table class="table table-bordered">--%>
                <%--<thead></thead>--%>
                <%--<tbody>--%>
                <%--<%--%>
                    <%--List<UserArticlePicture> hotArticles=(List<UserArticlePicture>)session.getAttribute("ArticleListClassify");--%>
                    <%--int count=0;--%>
                <%--%>--%>
                <%--<c:forEach var="i" begin="1" end="3">--%>
                    <%--<tr>--%>
                        <%--<c:forEach var="j" begin="1" end="3">--%>
                            <%--<td>--%>
                                <%--<div style="width: 250px;padding-left: 30px">--%>
                                    <%--<a href="commodity?articleId=<%=hotArticles.get(count).getArticle_id()%>">--%>
                                        <%--<div>--%>
                                            <%--<h3><%=hotArticles.get(count).getTitle()%></h3>--%>
                                            <%--<div><img src="${pageContext.request.contextPath}/articlePictureShow?articleId=<%=hotArticles.get(count).getArticle_id()%>&pictureName=<%=hotArticles.get(count).getPicture()%>" width="230px" height="230px"></div>--%>
                                            <%--<div>作者：<span><%=hotArticles.get(count).getUserName()%></span></div>--%>
                                            <%--<div>时间：<span><%=hotArticles.get(count).getTime()%></span></div>--%>
                                            <%--<div>--%>
                                                <%--<a ><img src="../../images/browse.png"><%=hotArticles.get(count).getOverview()%>&nbsp;&nbsp;&nbsp;</a>--%>
                                                <%--<a ><img src="../../images/thumbsUp.png"><%=hotArticles.get(count++).getThumbsUp()%>&nbsp;&nbsp;&nbsp;</a>--%>
                                                <%--<a ><img src="../../images/collect.png"></a>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                            <%--</td>--%>
                        <%--</c:forEach>--%>
                    <%--</tr>--%>
                <%--</c:forEach>--%>
                <%--</tbody>--%>
            <%--</table>--%>
    <%--</div>--%>
<%--</body>--%>
<%--</html>--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.bestone.model.UserArticlePicture" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/4/2
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function(){
            //$.ajaxSetup({ cache:false  });	//关闭缓存
            $("#main_top").empty().load("top");
        });
    </script>
    <script>
        $(window).ready(function () {
            $("#loadMore").click(function () {
                $.ajax({
                    type : "POST",
                    async : false,  //同步请求
                    url : "/addMoreArticlesByClassify",
                    traditional: true,//加上这个属性，后台用 String[] arr 就可以接收到了
                    data : {
                    },
                    dataType:"html",
                    timeout:1000,
                    success:function(dates){
                        //alert(dates);
                        $("#addDIV").before(dates);//要刷新的div
                        // $("#btn").before($("#btn").next());
                    },
                    error: function() {
                        // alert("失败，请稍后再试！");
                    }
                });
            });
        })
    </script>
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
        .div_classify{
            background-color: #888888;
            border-radius: 20px;
            width: 300px;
            height: 50px;
            position: center;
            margin: 20px 20px 30px 30px;
            font-size: 20px;
            align-items: center;
        }
    </style>
</head>
<body>
<div id="main_top"></div>
<div>
    <p class="div_classify">当前所在标签：${Classify}</p>
</div>

<div class="row" style="margin-bottom: 10px;">
    <div class="col-sm-10">
    <table class="table table-bordered">
        <thead></thead>
        <tbody style="width: 900px;height: auto;margin: 0 auto;">
        <%
            List<UserArticlePicture> hotArticles=(List<UserArticlePicture>)session.getAttribute("ArticleListClassify");
            int count=0;
        %>
        <c:forEach var="i" begin="1" end="3">
            <tr>
                <c:forEach var="j" begin="1" end="3">
                    <td>
                        <div style="width: 200px;padding-left: 10px; padding-right: 10px">
                            <a href="commodity?articleId=<%=hotArticles.get(count).getArticle_id()%>">
                                <div>
                                    <h4><%=hotArticles.get(count).getTitle()%></h4>
                                    <div><img src="${pageContext.request.contextPath}/articlePictureShow?articleId=<%=hotArticles.get(count).getArticle_id()%>&pictureName=<%=hotArticles.get(count).getPicture()%>" width="300px" height="200px"></div>
                                    <div>作者：<span><%=hotArticles.get(count).getUserName()%></span></div>
                                    <div>时间：<span><%=hotArticles.get(count).getTime()%></span></div>
                                    <div>
                                        <a ><img src="../../images/browse.png"><%=hotArticles.get(count).getOverview()%>&nbsp;&nbsp;&nbsp;</a>
                                        <a ><img src="../../images/thumbsUp.png"><%=hotArticles.get(count++).getThumbsUp()%>&nbsp;&nbsp;&nbsp;</a>
                                        <a ><img src="../../images/collect.png"></a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
    <div class="col-sm-2"></div>
</div>
<div id="addDIV">
    <button type="button" class="btn" id="loadMore">加载更多</button>
</div>
</body>
</html>
