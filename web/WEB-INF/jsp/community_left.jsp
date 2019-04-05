<%@ page import="com.bestone.model.UserArticle22" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/1
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<style>
    .div_main{
        text-align: left; /*让div内部文字居中*/
        background-color: #888888;
        border-radius: 10px;
        width: 800px;
        height: auto;
        margin: auto 20px 20px 20px;
        position: absolute;
    }
</style>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="menu">
    <div>
        <h1>
            <b>BestOne 社区</b>
        </h1>
    </div>
    <div style="width: 800px; margin-left: auto; margin-right: auto; margin-bottom: 30px; text-align:right;">
        <a href="/add"><span class="glyphicon glyphicon-arrow-right"></span> 发布社区文章</a>
    </div>
    <div>
        <p>热门文章 ......</p>
    </div>


    <%--这是加载社区文章列表的 div--%>
    <table>
    <tbody>
    <%
        List<UserArticle22> shequArticles=(List<UserArticle22>) session.getAttribute("shequArticles");
        int count=0;
    %>
        <c:forEach items="${shequArticles}" var="article">
            <div class="" style="margin-top: 50px; padding-bottom: auto;">

                <div class="up-down-divider2">
                    <a href="community_details?article22_id=<%=shequArticles.get(count++).getArticle22_id()%>"  text-decoration:none;><h2>${article.getArticle22_title()}</h2></a>
                    <%--<a href="#" style="text-decoration:none;"><h2>${article.getArticle22_title()}</h2></a>--%>
                    <%--<a href="#" style="text-decoration: #34ce57"><img src="../../images/sony.jpeg" alt="" style="width: 200px; height: 200px"></a>--%>
                    <div class="up-down-divider" style="font-size:12px;margin-bottom: 20px">
                        <ul class="list-inline">
                            <li>
                                <a href="#" style="text-decoration:none;margin-bottom: 20px;"><img src="../../images/touxiang.jpg" width="20px" height="20px"></a>
                            </li>
                            <li>
                                <a href="#" class="edui-clearfix" style="text-decoration:none;margin-bottom: 20px;">${article.getUserName()}</a>
                            </li>
                             |
                            <li>
                                <p style="margin-bottom: 20px">${article.getTime()}</p>
                            </li>
                                <%--|--%>
                                <%--<li><span class="glyphicon glyphicon-eye-open"></span> </li>--%>
                                <%--<li><span class="glyphicon glyphicon-thumbs-up"></span> </li>--%>
                        </ul>
                    </div>
                    <div class="up-down-divider">

                        <p>${article.getArticle22_abstract()}</p>
                    </div>
                </div>

            </div>
        </c:forEach>
    </tbody>
    </table>
</div>