<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2019/4/1
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <table>
        <c:forEach items="${List}" var="list">
            <tr>
                <td><a href="commodity?articleId=${list.getArticle_id()}">${list.getTitle()}</a></td>
                <td>${list.getUserName()}</td>
            </tr>
        </c:forEach>
    </table>
</div>

