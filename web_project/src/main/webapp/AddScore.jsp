<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta charset="utf-8" />
    <style type="text/css">
        input{
            width: 70px;
        }
    </style>
    <script type="text/javascript">
        window.onload = function() {
            var add = document.getElementById("add")
            var tb = document.getElementById("tb")
            add.onclick = function() {
                tb.innerHTML += "<tr><td><input type='text'></td><td><input type='text'></td><td><input type='text'></td><td><input type='text'></td><td><input type='text'></td></tr>"
            }
        }
    </script>
</head>
<h1>成绩录入界面</h1>
<button id="submit">提交成绩</button>
<button id="add">添加</button>
<table id="tb">
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>成绩</th>
        <th>课程名</th>
        <th>考试类型</th>
    </tr>
    <tr>
        <td><input type="text"></td>
        <td><input type="text"></td>
        <td><input type="text"></td>
        <td><input type="text"></td>
        <td><input type="text"></td>
    </tr>
</table>

</html>