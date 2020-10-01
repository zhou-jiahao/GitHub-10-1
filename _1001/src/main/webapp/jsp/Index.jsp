<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/30
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<div>
    <table border="1px">
        <tr style="background-color: grey">
            <td>预定编号</td>
            <td>会议室</td>
            <td>预订人</td>
            <td>日期</td>
        </tr>
        <c:forEach items="${list}" var="list">
            <tr>
                <td>${list.id}</td>
                <td>${list.meetingName}</td>
                <td>${list.advanceName}</td>
                <td><fmt:formatDate value="${list.meetingOrder}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
            </tr>
        </c:forEach>
    </table>
    <a href="/insertMeeting">预定会议室</a>
</div>
<script type="text/javascript">
    $(function () {
        $("tr:gt(0):odd").css("background-color","orange");
    })
</script>
</body>
</html>
