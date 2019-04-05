<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/1
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript">
    function checkGender(){
        if(${user.getGender().equals('男')}){
            if($("#updateMan1").is(":checked")){
                $("#updateGender").val("男");
            }else{
                $("#updateGender").val("女");
            }
        }else{
            if($("#updateMan2").is(":checked")){
                $("#updateGender").val("男");
            }else{
                $("#updateGender").val("女");
            }
        }
        return true;
    }
</script>
<div id="container" style="width:1000px;align-content: center; margin:0px auto;">

    <div id="header" style="background-color:#C0C0C0;">
        <h1 style="margin-bottom:0;"></h1>
    </div>

    <div id="menu" style="background-color:#FFFFFF;height:1000px;width:700px;float:left;">

        <div style="background-color:#FFFFFF;height:400px;width:500px;">

            <form class="form-horizontal" role="form" action="/updateUser" method="post" onsubmit="checkGender()" enctype="multipart/form-data">

                <div class="form-group">
                    <img src="${pageContext.request.contextPath}/bmpShow?userId=${user.getPhoneNum()}" height="100px" width="100px">
                </div>
                <div class="form-group">
                    <label class="sr-only" for="inputfile">更换图片</label>
                    <input type="file" id="inputfile" value="更换图片" name="handShot">
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-10">
                        <input class="form-control" type="text" name="userName" value=${user.getUserName()}>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-10">
                        <input class="form-control"  type="password"  name="pwd" value=${user.getPasswd()}>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-10">
                        <input class="form-control"  type="text" name="age" value=${user.getAge()}>
                    </div>
                </div>

                <div class="form-check">
                    性别：
                    <c:choose>
                        <c:when test="${user.getGender().equals('男')}">
                            <label class="radio-inline"><input type="radio"  checked="checked" id="updateMan1" name="gen">男</label>
                            <label class="radio-inline"><input type="radio" id="updateWoman1" name="gen">女</label>
                        </c:when>
                        <c:otherwise>
                            <label class="radio-inline"><input type="radio"  id="updateMan2" name="gen">男</label>
                            <label class="radio-inline"><input type="radio" id="updateWoman2" checked="checked" name="gen">女</label>
                        </c:otherwise>
                    </c:choose>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">居住地</label>
                    <div class="col-sm-10">
                        <input class="form-control"  type="text" name="userAddress"  value=${user.getUserAddress()}>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">工作</label>
                    <div class="col-sm-10">
                        <input class="form-control"  type="text" name="job" value=${user.getJob()}>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">签名</label>
                    <div class="col-sm-10">
                        <input class="form-control"type="text" name="sign" value=${user.getSign()}>
                    </div>
                </div>
                <div class="container">
                    <br>
                    <br>
                    <button class="btn btn-info btn-lg">更新设置</button>
                </div>
                <input name="gender" id="updateGender" type="hidden"/>
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