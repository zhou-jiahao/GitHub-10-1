<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/30
  Time: 15:15
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
<table border="1px" width="500px">
    <tr>
        <td colspan="7">人员列表</td>
    </tr>
    <tr style="text-align: center">
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>等级</td>
        <td>部门</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${list}" var="list">
        <tr style="text-align: center" name="${ list.id }">
            <td>${list.id }</td>
            <td>${list.name }</td>
            <td>${list.sex }</td>
            <td>${list.age }</td>
            <td>${list.rank }</td>
            <td>${list.department }</td>
            <td><a href="javascript:void(0)" id="${list.id }" class="del" style="text-decoration: none">删除</a></td>
        </tr>
    </c:forEach>
</table>
<br />
<a href="/add">添加人员</a>
<script type="text/javascript">


    $(".del").click(function(){
        var flag=confirm("确定要删除吗？");
        if(flag){
            var id=$(this).attr("id");
            $.get("/deletePerson","id="+id,function(data){
                if(data=="true"){
                    $("[name='"+id+"']").remove();
                    window.reload();
                }
            })
        }
    })


    $(function() {

        $("tr:odd").css("background-color", "#00E000");
        $("tr:even").css("background-color", "#66FFFF");
    })

</script>

</body>
</html>
