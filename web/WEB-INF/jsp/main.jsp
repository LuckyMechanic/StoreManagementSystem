<%--
  Created by IntelliJ IDEA.
  User: 少卿
  Date: 2020/2/2
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        a {
            text-decoration: none;
            color: black;
            font-size: 18px;
        }
        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 4px;
        }
    </style>

</head>
<body>
<h3>
    <a href="${pageContext.request.contextPath}/phone/allPhone">进入手机页面</a>
</h3>
<h3>
    <a href="${pageContext.request.contextPath}/phone/allPhone">进入配件页面</a>
</h3>
<h3>
    <a href="${pageContext.request.contextPath}/phone/allPhone">进入杂货页面</a>
</h3>
</body>
</html>
