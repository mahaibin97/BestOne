<%@ page import="com.bestone.model.UserArticlePicture" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/2/26
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    $(window).ready(function () {
        $("#loadMore").click(function () {
            $.ajax({
                type : "POST",
                async : false,  //同步请求
                url : "/addMoreArticles",
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
<div class="row" style="margin-bottom: 0px;padding-bottom: 0px;">
    <div class="col-sm-10" >
        <table class="table table-bordered">
            <thead></thead>
            <tbody>
            <%
                List<UserArticlePicture> hotArticles=(List<UserArticlePicture>)session.getAttribute("hotArticles");
                int count=0;
                int count1=0;
            %>
            <c:forEach var="i" begin="1" end="3">
                <tr>
                    <c:forEach var="j" begin="1" end="3">
                        <td>
                            <div style="width: 300px">
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
    <div class="col-sm-2">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>热门瞬间</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="i" begin="1" end="9">
                <tr>
                    <td><a href="commodity?articleId=<%=hotArticles.get(count1).getArticle_id()%>">
                        <%=hotArticles.get(count1++).getTitle()%></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div >

<div id="addDIV">
    <button type="button" class="btn" id="loadMore">加载更多</button>
</div>
