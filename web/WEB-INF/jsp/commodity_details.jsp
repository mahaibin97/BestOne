<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/2/26
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h2>${articleDetails.getTitle()}</h2>
<div>
    <img src="${pageContext.request.contextPath}/articlePictureShow?articleId=${articleDetails.getArticle_id()}&pictureName=${articleDetails.getPicture()}" width="600px" height="400px">
</div>
<div>
    <span>作者：${articleDetails.getUserName()} </span><hr>
    <nav class="breadcrumb">
        标签：
        <a class="breadcrumb-item" href="#">${articleDetails.getLabelName()}</a>
    </nav>
</div>
<hr>
<div >
    <p class="lead">${articleDetails.getArticle_text()}</p>
</div>
<%--<h5>瞬间：${articleDetails.getArticle_text()}</h5>--%>


