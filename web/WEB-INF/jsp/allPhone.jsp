<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>库存展示</title>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>手机列表---------显示所有数据</small>
                    </h1>
                </div>
            </div>

        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/phone/toAddPhone">新增</a>
            </div>
            <div class="col-md-4 column">
           <%-- 查询数据--%>
                <form action="" method="" style="float: right">
                    <input type="text" name="queryPhoneName" class="form-control" placeholder="请输入要查询的数据">
                    <input type="submit" value="查询">
                </form>
            </div>
        </div>
        </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>手机编号</th>
                        <th>手机名称</th>
                        <th>库存</th>
                        <th>详情</th>
                        <th>操作</th>
                    </tr>
                </thead>
<%--                从数据库中查询数据，从list中遍历--%>
                <tbody>
                    <c:forEach var="phone" items="${list}">
                        <tr>
                            <td>${phone.phoneID}</td>
                            <td>${phone.phoneName}</td>
                            <td>${phone.phoneCounts}</td>
                            <td>${phone.detail}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/phone/toUpdate?id=${phone.phoneID}">修改</a>
                                &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/phone/deletePhone/${phone.phoneID}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    </div>

</body>
</html>
