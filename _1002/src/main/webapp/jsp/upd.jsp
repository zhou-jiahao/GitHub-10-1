<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/30
  Time: 14:50
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
<form action="/updateStudentInfo" method="post">
    <table border="1px">
        <tr>
            <td colspan="2" align="center"><h2>学员信息</h2></td>
        </tr>
        <input type="hidden" value="${s.sid }" name="sid">
        <tr>
            <td>姓名：</td><td><input type="text" name="sname" value="${s.sname }"/></td>
        </tr>
        <tr>
            <td>性别：</td><td><input type="text" name="sgender" value="${s.sgender }"/></td>
        </tr>
        <tr>
            <td>年龄：</td><td><input type="text" name="sage" value="${s.sage }"/></td>
        </tr>
        <tr>
            <td>家庭地址：</td><td><input type="text" name="saddress" value="${s.saddress }"/></td>
        </tr>
        <tr>
            <td>Email：</td><td><input type="text" name="semail" value="${s.semail }"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="修改"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="重置"/></td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    $("form").submit(function(){
        var name=$("[name='name']").val();
        if(name==""){
            alert("请填写完成的学员信息在修改");
            return false;
        }
        var sex=$("[name='sex']").val();
        if(sex==""){
            alert("请填写完成的学员信息在修改");
            return false;
        }
        var age=$("[name='age']").val();
        if(age==""){
            alert("请填写完成的学员信息在修改");
            return false;
        }
        return true;
    })
    $(function(){
        $("tr").css("background-color","pink");
    })
</script>
</body>
</html>
