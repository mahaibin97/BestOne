<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/1
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="container" style="width:1000px;align-content: center; margin:0px auto;">

    <div id="header" style="background-color:#C0C0C0;">
        <h1 style="margin-bottom:0;"></h1>
    </div>

    <div id="menu" style="background-color:#FFFFFF;height:1000px;width:700px;float:left;">

        <div style="background-color:#FFFFFF;height:400px;width:500px;">

            <div style="background-color:#FFFFFF;height:150px;width:500px;text-align:left;">
                <!--<b>头像：</b>-->
                <!--<img src="../images/touxiang.jpg" height="150px" width="200px"> >>>更换头像-->
                <form class="form-inline" role="form">
                    <div class="form-group">
                        <img src="../../images/touxiang.jpg" height="100px" width="200px">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="inputfile">更换图片</label>
                        <input type="file" id="inputfile">
                    </div>
                    <!--<button type="submit" class="btn btn-default">提交</button>-->
                </form>
            </div>

            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10">
                        <input class="form-control" type="text"  value="HeroKK...">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-10">
                        <input class="form-control"  type="text"  value="*******">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-10">
                        <input class="form-control"  type="text"  value="菠萝蜜">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">居住地</label>
                    <div class="col-sm-10">
                        <input class="form-control"  type="text"  value="江苏 南京">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">签名</label>
                    <div class="col-sm-10">
                        <input class="form-control"type="text"  value="在平坦的路面上曲折前行">
                    </div>
                </div>
                <div class="form-group" >
                    <label class="col-sm-2 control-label">手机号</label>
                    <div class="col-sm-10">
                        <input class="form-control"  type="text"  value="15712341234">
                    </div>
                </div>
                <div class="container">
                    <br>
                    <br>
                    <button type="button" class="btn btn-info btn-lg">更新设置</button>
                </div>

            </form>

        </div>

    </div>

    <div id="content" style="background-color:#EEEEEE;height:750px;width:300px;float:left;align-items: center">
        <br>
        <p align="center"> 偏好设置 </p>
        <br>
        <ul>
            <div class="btn-group">
                <button type="button" class="btn btn-default"> 图片水印 </button>
            </div>
            <div class="btn-group">
                <button type="button" class="btn btn-default"> 黑名单 </button>
            </div>
            <div class="btn-group">
                <button type="button" class="btn btn-default"> 注销账号 </button>
            </div>
        </ul>
    </div>
</div>