<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.bestone.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<html>
<head>
    <title>社区文章编辑</title>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- 配置文件 -->
    <script type="text/javascript" src="../../ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="../../ueditor/ueditor.all.min.js"></script>
    <!-- 语言包文件(建议手动加载语言包，避免在ie下，因为加载语言失败导致编辑器加载失败) -->
    <script type="text/javascript" src="../../ueditor/lang/zh-cn/zh-cn.js"></script>

</head>
<body>
<div class="form-group" style=" width: 800px; margin-left: auto; margin-right: auto; margin-bottom: 50px;margin-top: 30px">
    <td>
        <a href="/main" style="text-decoration:none;"><span class="label label-primary" style="margin-top: 20px;margin-bottom: 30px;font-size: 20px">BestOne</span></a>
        <tr>  社区文章</tr>
    </td>
</div>
<form name="upfile" action="/publish" method="post" style=" width: 800px; margin-left: auto; margin-right: auto; ">
    <%--<div class="form-group" style=" width: 800px; margin-left: auto; margin-right: auto; margin-bottom: 50px;margin-top: 30px">--%>
        <%--<td>--%>
            <%--<span class="label label-primary" style="margin-top: 20px;margin-bottom: 30px;font-size: 20px">BestOne</span>--%>
            <%--<tr>  社区文章</tr>--%>
        <%--</td>--%>
    <%--</div>--%>

    <div class="form-group">
        <textarea id="title" name="article22_title" class="form-control" rows="1" tabindex="1" maxlength="30" style="resize: none; overflow: hidden; height: 40px;" placeholder="请输入你的标题...(30字以内)"></textarea>
    </div>

    <div class="form-group">
        <textarea id="abstract" name="article22_abstract" class="form-control" rows="4" tabindex="4" maxlength="200" style="resize: none; overflow: hidden; height: 100px;margin-bottom: 30px;" placeholder="请输入你的文章摘要...(200字以内)"></textarea>
    </div>

    <!-- 加载编辑器的容器 -->
    <script id="container" name="article22_content" type="text/plain">
            请在这里写你的社区文章...
    </script>

    <%-- submit article --%>
    <div class="form-group">
        <input type="submit" value="发布">
    </div>
</form>

<!-- 实例化编辑器 -->
<script type="text/javascript">
    //此处的 'container'是加载编辑器容器定义的 id
    var ue = UE.getEditor('container', {
        toolbars: [
            [
                // 'undo', //撤销
                'bold', //加粗
                'indent', //首行缩进
                'italic', //斜体
                // 'underline', //下划线
                'blockquote', //引用
                'horizontal', //分隔线
                // 'removeformat', //清除格式
                'insertcode', //代码语言
                'fontfamily', //字体
                'fontsize', //字号
                'paragraph', //段落格式
                'simpleupload', //单图上传
                'insertimage', //多图上传
                'link', //超链接
                'emotion', //表情
                'spechars', //特殊字符
                'map', //Baidu地图
                'justifyleft', //居左对齐
                'justifycenter', //居中对齐
                'justifyright', //居右对齐
                'forecolor', //字体颜色
                'backcolor', //背景色
                'insertorderedlist', //有序列表
                'insertunorderedlist', //无序列表
            ]
        ],
        initialFrameHeight:600, //height
        initialFrameWidth:800, //width
        maximumWords:10000,   //允许的最大字符数
    });

    var lang = ue.getOpt('lang'); //默认返回：zh-cn

</script>


</body>
</html>

