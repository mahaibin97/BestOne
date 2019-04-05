<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/1
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    $(document).ready(function () {
        toUserDetailsList("1");
        $("#userDetailsArticle").click(function () {
            $(".detailList").css("color","#6cf");
            $("#userDetailsArticle").css("color","black");

            toUserDetailsList("1");
        });
        $("#userDetailsComment").click(function () {
            $(".detailList").css("color","#6cf");
            $("#userDetailsComment").css("color","black");
            toUserDetailsList("3");
        });

        $("#userDetailsCollection").click(function () {
            $(".detailList").css("color","#6cf");
            $("#userDetailsCollection").css("color","black");
            toUserDetailsList("4");
        });
        function toUserDetailsList(condition) {
            $.ajax({
                type:"POST",
                url:"/ShowUserDetailsList",
                dataType:"html",
                async:false,//同步请求
                traditional:true,
                data:{
                    "condition":condition
                },
                timeout:1000,
                success:function (dates) {
                    $("#UserDetailsList").html(dates);
                },
                error:function () {
                    alert("请稍后再试~");
                }
            });
        }
    });
</script>
<div id="container" style="width:1000px;align-content: center; margin:0px auto;">
    <div id="menu" style="background-color:#FFFFFF;height:1000px;width:700px;">
        <div style="background-color:#FFFFFF;height:300px;width:600px;">
            <div style="background-color:#FFFFFF;height:100px;width:600px;text-align:left;">
                <table>
                    <tr>
                        <td rowspan="3">
                            <img src="${pageContext.request.contextPath}/bmpShow?userId=${user.getPhoneNum()}" height="100px" width="100px">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a type="button" href="user_settings" class="btn btn-info btn-xs">编辑个人资料</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" class="btn btn-default"> 关注 12 </button>
                            <button type="button" class="btn btn-default"> 粉丝 0 </button>
                        </td>
                    </tr>
                </table>
            </div>

            <div style="background-color:#C0C0C0;height:200px;width:600px;text-align:left;">
                <br>昵称:${user.getUserName()}<br><br>
                居住地:${user.getUserAddress()}<br><br>
                行业:${user.getJob()}<br><br>
                签名:${user.getSign()}<br>
            </div>
            <div>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="detailList" id="userDetailsArticle">瞬间</a></li>
                    <li class="breadcrumb-item"><a class="detailList" id="userDetailsCommunity">社区</a></li>
                    <li class="breadcrumb-item"><a class="detailList" id="userDetailsComment">评论</a></li>
                    <li class="breadcrumb-item"><a class="detailList" id="userDetailsCollection">收藏</a></li>
                </ol>
            </div>
            <div id="UserDetailsList" style="margin: 10px"></div>
        </div>
    </div>

</div>