<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/phone/updatePhone" method="post">
        <input type="hidden" name="phoneID" value="${QPhone.phoneID}">
        <div class="form-group">
            <label>手机名称：</label>
            <input type="text" name="phoneName" class="form-control" value="${QPhone.phoneName}" required>
        </div>
        <div class="form-group">
            <label>库存：</label>
            <input type="text" name="phoneCounts" class="form-control" value="${QPhone.phoneCounts}" required>
        </div>
        <div class="form-group">
            <label>详情：</label>
            <input type="text" name="detail" class="form-control" value="${QPhone.detail}" required>
        </div>

        <button type="submit" class="btn btn-default">添加</button>
    </form>

</div>