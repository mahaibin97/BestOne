<%@ page import="java.util.List" %>
<%@ page import="com.bestone.model.CommentModel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/29
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    function checkRootComment() {
        if($("rootComment").value===""){
            alert("请发表你的看法哦")
            return false;
        }
        return true;
    }
</script>
<div class="input-group mb-3">
    <c:choose>
        <c:when test="${user!=null}">
            <span class="input-group-text">
                    <img src="${pageContext.request.contextPath}/bmpShow?userId=${user.getPhoneNum()}"  height="100px" width="100px">
                </span>
            </div>
            <form action="addRootComment?articleId=${articleDetails.getArticle_id()}" method="post" onsubmit="return checkRootComment()">
                <input type="text" class="form-control" name="rootComment" id="rootComment">
                <button>发布评论</button>
            </form>
        </c:when>
        <c:otherwise>
            <div class="input-group-prepend">
                <span class="input-group-text">
                    <img src="../../images/headshot.png" >
                </span>
            </div>
            <input type="text" class="form-control" placeholder="请先登录再发表评论哦" >
        </c:otherwise>
    </c:choose>
</div><br><br>



<script type="text/javascript">
    $(document).ready(function () {
        var rootButtonList=document.getElementsByClassName("addRootComment");
        for(i=0;i<rootButtonList.length;i++){
            rootButtonList[i].setAttribute("i",i);
            rootButtonList[i].onclick=function () {
                $(".addRootCommentForm").get(this.getAttribute("i")).style.display = "block";
            }
        }
        var childButtonList=document.getElementsByClassName("addChildComment");
        for(i=0;i<childButtonList.length;i++){
            childButtonList[i].setAttribute("i",i);
            childButtonList[i].onclick=function () {
                $(".addChildCommentForm").get(this.getAttribute("i")).style.display = "block";
            }
        }
    });
</script>
<c:forEach items="${rootComments}" var="roots" >
    <div>
    <table>
        <tr>
            <td rowspan="3">
                <img src="${pageContext.request.contextPath}/bmpShow?userId=${roots.getPhoneNum()}" height="50px" width="50px">
            </td>
            <td>&nbsp;&nbsp;&nbsp;${roots.getUserName()}</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;${roots.getContext()}</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;${roots.getDate()}</td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
            <td>
                <span>
                    <c:choose>
                        <c:when test="${user!=null}">
                            <button type="button" class="btn btn-light addRootComment">回复</button>
                        </c:when>
                        <c:otherwise>
                            <a href="Login">回复</a>
                        </c:otherwise>
                    </c:choose>
                </span>
            </td>
            <td>
                <div class="addRootCommentForm" style="display: none">
                    <form action="addCommentReply?articleId=${articleDetails.getArticle_id()}" method="post">
                        <input type="text" name="rootComment">
                        <input type="hidden" name="article_id" value="${articleDetails.getArticle_id()}">
                        <input type="hidden" name="root_id" value="${roots.getComment_id()}">
                        <input type="hidden" name="reply_id" value="${roots.getPhoneNum()}">
                        <input type="hidden" name="parent" value="${roots.getComment_id()}">
                        <button class="btn btn-light">评论</button>
                    </form>
                </div>
            </td>
        </tr>

        <c:if test="${roots.getChildComments()!=null}">
            <c:forEach items="${roots.getChildComments()}" var="childs" >
                <tr>
                    <td colspan="2"></td>
                    <td rowspan="3">
                        <img src="${pageContext.request.contextPath}/bmpShow?userId=${childs.getPhoneNum()}" height="50px" width="50px">
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;${childs.getUserName()}回复${childs.getReplyName()}</td>
                </tr>

                <tr>
                    <td colspan="2"></td>
                    <td>&nbsp;&nbsp;&nbsp;${childs.getContext()}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                    <td>&nbsp;&nbsp;&nbsp;${childs.getDate()}</td>
                </tr>
                <tr>
                    <td colspan="4"></td>
                    <td>
                        <span>
                            <c:choose>
                                <c:when test="${user!=null}">
                                    <button type="button" class="btn btn-light addChildComment">回复</button>
                                </c:when>
                                <c:otherwise>
                                    <a href="Login">回复</a>
                                </c:otherwise>
                            </c:choose>
                        </span>
                    </td>
                    <td>
                        <div class="addChildCommentForm" style="display: none">
                            <form action="addCommentReply?articleId=${articleDetails.getArticle_id()}" method="post">
                                <input type="text" name="rootComment">
                                <input type="hidden" name="article_id" value="${articleDetails.getArticle_id()}">
                                <input type="hidden" name="root_id" value="${roots.getComment_id()}">
                                <input type="hidden" name="reply_id" value="${childs.getPhoneNum()}">
                                <input type="hidden" name="parent" value="${child.getComment_id()}">
                                <button class="btn btn-light">评论</button>
                            </form>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </c:if>

    </table>
    </div>
</c:forEach>




<%--<%--%>
    <%--List<CommentModel> rootCommments= (List<CommentModel>) request.getSession().getAttribute("rootComments");--%>
    <%--for(CommentModel root:rootCommments){--%>
        <%--if(root.getChildComments()!=null){--%>
            <%--out.println(root.getComment_id()+root.getUserName());--%>
            <%--for(CommentModel child:root.getChildComments()){--%>
                <%--out.println(child);--%>
            <%--}--%>
        <%--}--%>
    <%--}--%>
<%--%>--%>


