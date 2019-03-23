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

</script>
<div class="col-sm-10">
    <table class="table table-bordered">
        <thead>
        </thead>
        <tbody>
        <c:forEach var="i" begin="1" end="3">
            <tr>
                <c:forEach var="j" begin="1" end="3">
                    <td>
                        <div>
                            <a href="commodity">
                                <div>
                                    <h3>假标题</h3>
                                    <div><img src="../../images/phone1.png"></div>
                                    <div>作者：<span>fhdaihfdi</span></div>
                                    <div>时间：<span>2019-2-26</span></div>
                                    <div>
                                        <a ><img src="../../images/browse.png">666&nbsp;&nbsp;&nbsp;</a>
                                        <a ><img src="../../images/thumbsUp.png">666&nbsp;&nbsp;&nbsp;</a>
                                        <a ><img src="../../images/collect.png"></a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
</div>