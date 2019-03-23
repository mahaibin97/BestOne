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
                <li><a href="/article/toArticle"><span class="glyphicon glyphicon-pencil"></span> 发布</a></li>
                <li><a href="/main"><span class="glyphicon glyphicon-home"></span> 首页</a></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        热门分类
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">个人主页</a></li>
                        <li class="divider"></li>
                        <li><a href="#">电脑办公</a></li>
                        <li class="divider"></li>
                        <li><a href="#">家居家具</a></li>
                        <li class="divider"></li>
                        <li><a href="#">男装女装</a></li>
                        <li class="divider"></li>
                        <li><a href="#">个护化妆</a></li>
                        <li class="divider"></li>
                        <li><a href="#">鞋靴箱包</a></li>
                        <li class="divider"></li>
                        <li><a href="#">户外运动</a></li>
                        <li class="divider"></li>
                        <li><a href="#">零食饮品</a></li>
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
                            </c:when>
                            <c:otherwise>
                                <li><a href="Login"><span class="glyphicon glyphicon-user"></span> 个人主页</a></li>
                            </c:otherwise>
                        </c:choose>
                        <li class="divider"></li>
                        <li><a href="user_settings"><span class="glyphicon glyphicon-cog"></span> 设置</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 登出</a></li>
                    </ul>
                </li>
                <c:choose>
                    <c:when test="${user!=null}">
                        <li><a><span class="glyphicon glyphicon-log-in"> ${user.getUserName()}      </span></a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> 注册/登录</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>
