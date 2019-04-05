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

    <title>分享好物</title>
    <script>
        function afterText1(id) {
            var arr = new Array("电脑","平板","手机","外设","配件","个人护理","衣服","鞋履","生活工具","运动","玩乐","美食","书店","电影","社交","音乐与视频","效率","工具","教育","商务","摄影录像","游戏","薅羊毛","黑科技","APP技巧");
            var elmID = document.getElementById(id).innerText;
            group=["field1","field2","field3","field4","field5"];
            for (var i=0;i<group.length;i++) {
                if(group[i] === $("#div2").find('div[id^="myTabContent"]').find('div[id^="dianzi"]').children().attr("id")){
                    $("#div1").find('p[id^="addElement"]').html("#"+elmID+" ");
                    for(var i=0;i<arr.length;i++){
                        if (arr[i]=== elmID){
                            document.getElementById("labelID").value = i+1;
                            break;
                        }
                    }
                    break;
                }
                else {
                    alert("无匹配元素...");
                }
            }

        }
        function afterText2(id) {
            var arr = new Array("电脑","平板","手机","外设","配件","个人护理","衣服","鞋履","生活工具","运动","玩乐","美食","书店","电影","社交","音乐与视频","效率","工具","教育","商务","摄影录像","游戏","薅羊毛","黑科技","APP技巧");
            var elmID = document.getElementById(id).innerText;
            group=["field6","field7","field8","field9","field10"];
            for (var i=0;i<group.length;i++) {
                if(group[i] === $("#div2").find('div[id^="myTabContent"]').find('div[id^="jujia"]').children().attr("id")){
                    $("#div1").find('p[id^="addElement"]').html("#"+elmID+" ");
                    for(var i=0;i<arr.length;i++){
                        if (arr[i]=== elmID){
                            document.getElementById("labelID").value = i+1;
                            break;
                        }
                    }
                    break;
                }
                else {alert("无匹配元素...");}
            }
        }

        function afterText3(id) {
            var arr = new Array("电脑","平板","手机","外设","配件","个人护理","衣服","鞋履","生活工具","运动","玩乐","美食","书店","电影","社交","音乐与视频","效率","工具","教育","商务","摄影录像","游戏","薅羊毛","黑科技","APP技巧");
            var elmID = document.getElementById(id).innerText;
            group=["field11","field12","field13","field14"];
            for (var i=0;i<group.length;i++) {
                if(group[i] === $("#div2").find('div[id^="myTabContent"]').find('div[id^="shenghuo"]').children().attr("id")){
                    $("#div1").find('p[id^="addElement"]').html("#"+elmID+" ");
                    for(var i=0;i<arr.length;i++){
                        if (arr[i]=== elmID){
                            document.getElementById("labelID").value = i+1;
                            break;
                        }
                    }
                    break;
                }
                else {alert("无匹配元素...");}
            }
        }

        function afterText4(id) {
            var arr = new Array("电脑","平板","手机","外设","配件","个人护理","衣服","鞋履","生活工具","运动","玩乐","美食","书店","电影","社交","音乐与视频","效率","工具","教育","商务","摄影录像","游戏","薅羊毛","黑科技","APP技巧");
            var elmID = document.getElementById(id).innerText;
            group=["field15","field16","field17","field18","field19","field20","field21","field22"];
            for (var i=0;i<group.length;i++)
            {
                if(group[i] === $("#div2").find('div[id^="myTabContent"]').find('div[id^="app"]').children().attr("id")){
                    $("#div1").find('p[id^="addElement"]').html("#"+elmID+" ");
                    for(var i=0;i<arr.length;i++){
                        if (arr[i]=== elmID){
                            document.getElementById("labelID").value = i+1;
                            break;
                        }
                    }
                    break;
                }
                else {alert("无匹配元素...");}
            }
        }

        function afterText5(id) {
            var arr = new Array("电脑","平板","手机","外设","配件","个人护理","衣服","鞋履","生活工具","运动","玩乐","美食","书店","电影","社交","音乐与视频","效率","工具","教育","商务","摄影录像","游戏","薅羊毛","黑科技","APP技巧");
            var elmID = document.getElementById(id).innerText;
            group=["field23","field24","field25"];
            for (var i=0;i<group.length;i++) {
                if(group[i] === $("#div2").find('div[id^="myTabContent"]').find('div[id^="wanyi"]').children().attr("id")){
                    $("#div1").find('p[id^="addElement"]').html("#"+elmID+" ");
                    for(var i=0;i<arr.length;i++){
                        if (arr[i]=== elmID){
                            document.getElementById("labelID").value = i+1;
                            break;
                        }
                    }
                    break;
                }
                else {alert("无匹配元素...");}
            }
        }

        function afterText6(id) {
            var arr = new Array("电脑","平板","手机","外设","配件","个人护理","衣服","鞋履","生活工具","运动","玩乐","美食","书店","电影","社交","音乐与视频","效率","工具","教育","商务","摄影录像","游戏","薅羊毛","黑科技","APP技巧");
            var elmID = document.getElementById(id).innerText;
            group=["field26"];
            for (var i=0;i<group.length;i++) {
                if(group[i] === $("#div2").find('div[id^="myTabContent"]').find('div[id^="qita"]').children().attr("id")){
                    $("#div1").find('p[id^="addElement"]').html("#"+elmID+" ");
                    for(var i=0;i<arr.length;i++){
                        if (arr[i]=== elmID){
                            document.getElementById("labelID").value = i+1;
                            break;
                        }
                    }
                    break;
                }
                else {alert("无匹配元素...");}
            }
        }
    </script>
</head>
<body>

    <%--add new shequ article in this button--%>
    <div style="width: 800px; margin-left: auto; margin-right: auto; margin-bottom: 30px; text-align:right;">
        <a href="/add"><span class="glyphicon glyphicon-arrow-right"></span> 发布社区文章</a>
    </div>

    <form action="/article/addArticle" method="post" id="register_form" enctype="multipart/form-data">
        <div class="form-group" style="width: 800px; margin-left: auto; margin-right: auto; ">
            <label for="title">瞬间标题</label>
            <input type="text" class="form-control" id="title" name="title" maxlength="40" placeholder="写标题...(20字以内)">
        </div>
        <%--<div class="form-group">--%>
        <%--<label for="article_text">瞬间内容</label>--%>
        <%--<input type="text" class="form-control" id="article_text" name="article_text" placeholder="Enter name">--%>
        <%--</div>--%>
        <div class="form-group" style="width: 800px; margin-left: auto; margin-right: auto; ">
            <%--@declare id="name"--%>
            <label for="name">瞬间内容</label>
            <textarea class="form-control" rows="10" id="article_text" name="article_text" maxlength="400" placeholder="请发布你要分享的产品...(200字以内)"></textarea>
        </div>
        <div class="form-group" style="width: 800px; margin-left: auto; margin-right: auto; ">
            <label class="sr-only" for="inputfile">选择图片</label>
            <input type="file" id="inputfile" value="选择图片" name="articlePicture">
        </div>
        <div>
            <div id="div1" style="width: 800px; margin-left: auto; margin-right: auto; ">
                <!-- 在此处添加新标签 -->
                <p id="addElement">已添加：</p>
                <!--分类：<button onclick="afterText1()">手机</button>-->
            </div>

            <div id="div2" style="width: 800px; margin-left: auto; margin-right: auto; ">
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active">
                        <a href="#dianzi" data-toggle="tab">
                            电子产品
                        </a>
                    </li>
                    <li>
                        <a href="#jujia" data-toggle="tab">
                            青年居家
                        </a>
                    </li>
                    <li>
                        <a href="#shenghuo" data-toggle="tab">
                            生活方式
                        </a>
                    </li>
                    <li>
                        <a href="#app" data-toggle="tab">
                            软件应用
                        </a>
                    </li>
                    <li>
                        <a href="#wanyi" data-toggle="tab">
                            新玩意
                        </a>
                    </li>
                    <li>
                        <a href="#qita" data-toggle="tab">
                            其他
                        </a>
                    </li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div id="dianzi" class="tab-pane fade in active" >
                        <button id="field1" type="button" class="label label-success" onclick="afterText1(id)">电脑</button>
                        <button id="field2" type="button" class="label label-success" onclick="afterText1(id)">平板</button>
                        <button id="field3" type="button" class="label label-success" onclick="afterText1(id)">手机</button>
                        <button id="field4" type="button" class="label label-success" onclick="afterText1(id)">外设</button>
                        <button id="field5" type="button" class="label label-success" onclick="afterText1(id)">配件</button>
                    </div>
                    <div id="jujia" class="tab-pane fade">
                        <button id="field6" type="button" class="label label-success" onclick="afterText2(id)">个人护理</button>
                        <button id="field7" type="button" class="label label-success" onclick="afterText2(id)">衣服</button>
                        <button id="field8" type="button" class="label label-success" onclick="afterText2(id)">鞋履</button>
                        <button id="field9" type="button" class="label label-success" onclick="afterText2(id)">生活工具</button>
                        <button id="field10" type="button" class="label label-success" onclick="afterText2(id)">运动</button>
                    </div>
                    <div id="shenghuo" class="tab-pane fade">
                        <button id="field11" type="button" class="label label-success" onclick="afterText3(id)">玩乐</button>
                        <button id="field12" type="button" class="label label-success" onclick="afterText3(id)">美食</button>
                        <button id="field13" type="button" class="label label-success" onclick="afterText3(id)">书店</button>
                        <button id="field14" type="button" class="label label-success" onclick="afterText3(id)">电影</button>
                    </div>
                    <div id="app" class="tab-pane fade" >
                        <button id="field15" type="button" class="label label-success" onclick="afterText4(id)">社交</button>
                        <button id="field16" type="button" class="label label-success" onclick="afterText4(id)">音乐与视频</button>
                        <button id="field17" type="button" class="label label-success" onclick="afterText4(id)">效率</button>
                        <button id="field18" type="button" class="label label-success" onclick="afterText4(id)">工具</button>
                        <button id="field19" type="button" class="label label-success" onclick="afterText4(id)">教育</button>
                        <button id="field20" type="button" class="label label-success" onclick="afterText4(id)">商务</button>
                        <button id="field21" type="button" class="label label-success" onclick="afterText4(id)">摄影录像</button>
                        <button id="field22" type="button" class="label label-success" onclick="afterText4(id)">游戏</button>
                    </div>
                    <div id="wanyi" class="tab-pane fade" >
                        <button id="field23" type="button" class="label label-success" onclick="afterText5(id)">薅羊毛</button>
                        <button id="field24" type="button" class="label label-success" onclick="afterText5(id)">黑科技</button>
                        <button id="field25" type="button" class="label label-success" onclick="afterText5(id)">APP技巧</button>
                    </div>
                    <div id="qita" class="tab-pane fade" >
                        <button id="field26" type="button" class="label label-success" onclick="afterText6(id)">其他</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group" style="width: 800px; margin-left: auto; margin-right: auto; ">
            <%--<label for="title">瞬间标签</label>--%>
            <input type="hidden" class="form-control" id="labelID" name="labelID" maxlength="20" placeholder="标签...(10字以内) ">
        </div>
        <div style="width: 800px; margin-left: auto; margin-right: auto; ">
            <button  class="btn btn-info">发布</button>
        </div>
    </form>
</body>
</html>
