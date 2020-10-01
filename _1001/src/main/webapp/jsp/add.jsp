<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/9/30
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<form action="/addMeeting" method="post">
    <table border="1px">
        <tr style="background-color: grey">
            <td colspan="2" align="center">会议室预定</td>
        </tr>
        <tr>
            <td>会议室：</td>
            <td>
                <select name="meetingName">
                    <option value="一号会议室">一号会议室</option>
                    <option value="二号会议室">二号会议室</option>
                    <option value="三号会议室">三号会议室</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>申请人：</td>
            <td><input type="text" name="advanceName"></td>
        </tr>
        <tr>
            <td>预定日期：</td>
            <td><input type="text" name="meetingOrder">日期格式yyyy-mm-dd</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="申请">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    $("form").submit(function () {
        var meetingOrder=$("[name='meetingOrder']").val();
        var reg=/^\d{4}-\d{2}-\d{2}$/;
        if(reg.test(meetingOrder)==false){
            alert("日期格式不正确！");
            return false;
        }
        return true;
    })
</script>
</body>
</html>
