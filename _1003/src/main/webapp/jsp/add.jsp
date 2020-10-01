<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/30
  Time: 15:23
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

<form action="/insertPerson" method="post">
    <table width="400px">
        <tr >
            <td colspan="2"><a style="color: red;text-align: center;margin-left:160px">添加人员</a></td>
        </tr>
        <tr>
            <td style="text-align: center">姓名：</td>
            <td><input type="text" name="name"><a style="color: red">*</a></td>
        </tr>
        <tr>
            <td style="text-align: center">性别：</td>
            <td><select name="sex">
                <option value="0">请选择</option>
                <option value="男">男</option>
                <option value="女">女</option>
            </select>
                <a style="color: red">*</a></td>
        </tr>
        <tr>
            <td style="text-align: center">年龄：</td>
            <td><input type="text" name="age"><a style="color: red">*</a></td>
        </tr>
        <tr>
            <td style="text-align: center">等级：</td>
            <td><select name="rank">
                <option value="0">请选择</option>
                <option value="1级">1级</option>
                <option value="2级">2级</option>
                <option value="3级">3级</option>
                <option value="4级">4级</option>
                <option value="5级">5级</option>
            </select>
                <a style="color: red">*</a></td>
        </tr>
        <tr>
            <td style="text-align: center">部门：</td>
            <td><select name="department">
                <option value="0">请选择</option>
                <option value="支持部">支持部</option>
                <option value="工程质量部">工程质量部</option>
                <option value="开发部">开发部</option>
            </select>
                <a style="color: red">*</a></td>
        </tr>
        <tr>
            <td colspan="2"><input style="margin-left:160px" type="submit"  value="提交"></td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    $(function() {
        $("tr:odd").css("background-color", "#00E000");
        $("tr:even").css("background-color", "#66FFFF");
    })

    $("form").submit(function(){
        var name=$("[name='name']").val();
        if(name==""){
            alert("姓名不能为空!!!")
            return false;
        }
        var sex=$("[name='sex']").val();
        if(sex=="0"){
            alert("请选择您的性别！")
            return false;
        }
        var age=$("[name='age']").val();
        if(age==""){
            alert("年龄不能为空!!!")
            return false;
        }
        var dengji=$("[name='dengji']").val();
        if(dengji=="0"){
            alert("请选择您的等级！")
            return false;
        }
        var bumen=$("[name='bumen']").val();
        if(bumen=="0"){
            alert("请选择您所在的部门！")
            return false;
        }

        return true;
    })
</script>
</body>
</html>
