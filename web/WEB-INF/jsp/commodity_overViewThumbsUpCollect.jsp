<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/3/29
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div >
    <a>
        <span class="glyphicon glyphicon-eye-open"></span>
    </a><span>${articleDetails.getOverview()}&nbsp;&nbsp;&nbsp;</span>

    <a href="addArticleThumbsUp?articleId=${articleDetails.getArticle_id()}">
        <span class="glyphicon glyphicon-thumbs-up"></span>
    </a><span>${articleDetails.getThumbsUp()}&nbsp;&nbsp;</span>

    <c:choose>
        <c:when test="${user!=null && userCollectionArticle.getCollected()==true}">
            <a>
                <span class="glyphicon glyphicon-heart">&nbsp;&nbsp;</span>
            </a>
        </c:when>
        <c:when test="${user!=null}">
            <a href="collectArticle">
                <span class="glyphicon glyphicon-heart-empty">&nbsp;&nbsp;</span>
            </a>
        </c:when>
        <c:otherwise>
            <a href="Login">
                <span class="glyphicon glyphicon-heart-empty">&nbsp;&nbsp;</span>
            </a>
        </c:otherwise>
    </c:choose>
</div>
<hr>