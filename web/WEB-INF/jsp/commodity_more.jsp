<%@ page import="com.bestone.model.UserArticlePicture" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<UserArticlePicture> hotArticles=(List<UserArticlePicture>)request.getAttribute("List");
    int count=0;
%>
<div class="row" style="margin-top: 0px;padding-top: 0px;margin-bottom: 0px;padding-bottom: 0px;">
    <div class="col-sm-10">
        <table class="table table-bordered">
            <thead></thead>
            <tbody>
            <c:forEach var="i" begin="1" end="3">
                <tr>
                    <c:forEach var="j" begin="1" end="3">
                        <td>
                            <div style="width: 300px;">
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
    <div class="col-sm-2"></div>
</div>


