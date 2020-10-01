<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/30
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<table align="center" border="1px">
    <tr>
        <td colspan="7" align="center" height="50px">学院信息列表</td>
    </tr>
    <tr align="center">
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>住址</td>
        <td>Email</td>
    </tr>

    <c:forEach items="${studentInfo}" var="list">
        <tr align="center">
            <td><a href="/updCha?id=${list.sid}">${list.sid }</a></td>
            <td>${list.sname }</td>
            <td>${list.sgender }</td>
            <td>${list.sage }</td>
            <td>${list.saddress }</td>
            <td>${list.semail }</td>
        </tr>
    </c:forEach>
</table>
<c:if test="${ flag==1 }">
    <p align="center">更新成功！</p>
</c:if>
<c:if test="${ flag==0 }">
    <p></p>
</c:if>
<script type="text/javascript">
    $(function(){
        $("tr:odd").css("background-color","pink");
    })
</script>
</body>
</html>
