<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="utf-8">
	<title>�ҵĵ�¼����</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="form row">
		<div class="form-horizontal col-md-offset-3" id="login_form">
			<h1>�ŵ����ϵͳ</h1>
			<h3 class="form-title">�û���¼</h3>
			<div class="col-md-9">
				<div class="form-group">
					<i class="fa fa-user fa-lg"></i>
					�û����� <input class="form-control required" type="text" placeholder="�������û���" id="username" name="username" autofocus="autofocus" maxlength="20"/>
				</div>
				<div class="form-group">
					<i class="fa fa-lock fa-lg"></i>
					���룺  <input class="form-control required" type="password" placeholder="����������" id="password" name="password" maxlength="8"/>
				</div>
				<div class="form-group">
					<label class="checkbox">
						<input type="checkbox" name="remember" value="1"/>��ס��
					</label>
				</div>
				<div class="form-group col-md-offset-9">
<%--					<button type="submit" class="btn btn-success pull-right" name="submit">��¼</button>--%>
	            <a class="btn btn-success pull-right" href="${pageContext.request.contextPath}/phone/all">��¼</a>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>


