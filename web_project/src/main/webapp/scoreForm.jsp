<%@ page import="com.hnevc.service.Service" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        table {
            margin: auto;
            text-align: center;
            border: 1px solid black;
        }

        div {
            text-align: center;
        }

        td {
            padding: 30px;
            border:solid #ccc 1px;
        }
    </style>
    <%
        Service service = new Service();
        List<List<String>> score = service.findScore();
        pageContext.setAttribute("list", score);
    %>
</head>
<body>
<div>
    <h1>成绩查询界面</h1>
    <a href="AddScore.jsp">成绩录入</a>
    <table border="1">
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>课程名</td>
            <td>类型</td>
            <td>成绩</td>
        </tr>
        <c:forEach items="${list}" var="l">
            <tr>
                <td>${l.get(0)}</td>
                <td>${l.get(1)}</td>
                <td>${l.get(2)}</td>
                <td>${l.get(3)}</td>
                <td>${l.get(4)}</td>
                <td>${l.get(5)}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
