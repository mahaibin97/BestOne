<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/2/26
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <!--<a class="navbar-brand" href="#">BestOne 必玩</a>-->
            <img src="../../images/logo.png" align="center">
        </div>
        <div>
            <ul class="nav navbar-nav navbar-right">

                <c:choose>
                    <c:when test="${user!=null}">
                        <li><a href="toArticle"><span class="glyphicon glyphicon-pencil"></span> 发布</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="Login"><span class="glyphicon glyphicon-pencil"></span> 发布</a></li>
                    </c:otherwise>
                </c:choose>

                <li><a href="/main"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        热门分类
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/toArticlesByClassify?classifyId=1&name=电子产品">电子产品</a></li>
                        <li class="divider"></li>
                        <li><a href="/toArticlesByClassify?classifyId=2&name=青年家居">青年居家</a></li>
                        <li class="divider"></li>
                        <li><a href="/toArticlesByClassify?classifyId=3&name=生活方式">生活方式</a></li>
                        <li class="divider"></li>
                        <li><a href="/toArticlesByClassify?classifyId=4&name=软件应用">软件应用</a></li>
                        <li class="divider"></li>
                        <li><a href="/toArticlesByClassify?classifyId=5&name=新玩意儿">新玩意儿</a></li>
                        <li class="divider"></li>
                        <li><a href="/toArticlesByClassify?classifyId=6&name=其他">其他</a></li>
                    </ul>
                </li>

                <li><a href="community"><span class="glyphicon glyphicon-th-large"></span> 社区</a></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user"></span>
                        个人
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <c:choose>
                            <c:when test="${user!=null}">
                                <li><a href="user"><span class="glyphicon glyphicon-user"></span> 个人主页</a></li>
                                <li class="divider"></li>
                                <li><a href="user_settings"><span class="glyphicon glyphicon-cog"></span> 修改信息</a></li>
                                <li class="divider"></li>
                                <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> 登出</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="Login"><span class="glyphicon glyphicon-user"></span> 个人主页</a></li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </li>
                <c:choose>
                    <c:when test="${user!=null}">
                        <li><a>${user.getUserName()}       </span></a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>
