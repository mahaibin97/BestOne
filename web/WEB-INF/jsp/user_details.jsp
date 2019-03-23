<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/1
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="container" style="width:1000px;align-content: center; margin:0px auto;">

    <!--<div id="header" style="background-color:#C0C0C0;">-->
    <!--<h1 style="margin-bottom:0;"></h1>-->
    <!--</div>-->

    <div id="menu" style="background-color:#FFFFFF;height:1000px;width:700px;float:left;">

        <div style="background-color:#FFFFFF;height:300px;width:600px;">

            <div style="background-color:#FFFFFF;height:100px;width:600px;text-align:left;">
                <!--<b>头像</b>-->
                <img src="../../images/touxiang.jpg" height="100px" width="200px"><a href="settings.html"><button type="button" class="btn btn-info btn-xs">编辑个人资料</button></a>
            </div>

            <div style="background-color:#C0C0C0;height:200px;width:600px;text-align:left;">
                <br>昵称:${user.getUserName()}<br><br>
                居住地:${user.getUserAddress()}<br><br>
                行业:${user.getJob()}<br><br>
                签名:${user.getSign()}<br>
            </div>

        </div>

        <div style="background-color:#E0E0E0;height:500px;width: 600px;">
            <br>
            <div class="btn-toolbar" role="toolbar">
                <div class="btn-group">
                    <button type="button" class="btn btn-default"> 动态 </button>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-default"> 社区 </button>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-default"> 按钮 </button>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-default"> 赞 </button>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-default"> 评论 </button>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-default"> 收藏 </button>
                </div>
            </div>
        </div>
    </div>

    <div id="content" style="background-color:#EEEEEE;height:800px;width:300px;float:left;align-items: center">
        <br>
        <p align="center"> 个人成就信息 </p>
        <br>
        <ul>
            <div class="btn-group">
                <button type="button" class="btn btn-default"> 关注 290 </button>
            </div>
            <div class="btn-group">
                <button type="button" class="btn btn-default"> 粉丝 182 </button>
            </div>
        </ul>
    </div>
</div>
