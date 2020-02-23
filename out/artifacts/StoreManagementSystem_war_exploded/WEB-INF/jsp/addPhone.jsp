<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增数据</title>
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
                    <small>新增数据</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/phone/addPhone" method="post">
            <div class="form-group">
                <label>手机名称：</label>
                <input type="text" name="phoneName" class="form-control" required>
            </div>
            <div class="form-group">
                <label>库存：</label>
                <input type="text" name="phoneCounts" class="form-control" required>
            </div>
            <div class="form-group">
                <label>详情：</label>
                <input type="text" name="detail" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-default">提交</button>
    </form>

<%--        手机名称：<input type="text" name="phoneName"><br><br><br>--%>
<%--        手机数量：<input type="text" name="phoneCounts"><br><br><br>--%>
<%--        手机详情：<input type="text" name="detail"><br><br><br>--%>
<%--        <input type="submit" value="添加">--%>


</div>
</body>
</html>