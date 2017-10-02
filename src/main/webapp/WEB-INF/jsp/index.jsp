<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<meta charset="UTF-8">
	<title>奇创科技协会</title>
	
</head>
<h1 align="center">${message}</h1>
	<body background="./image/background.jpg" >
	<ul style="position:absolute; top:250px; left:400px;">
		
		<form  action="/qcit/login.html" method="POST">
账户: 
		<input type="text" name="username">
		</br>
密码:
		<input type="password" name="password">
		</br>
		
		<input type="radio" name="authority" value="1" checked="checked"> 学生
		<input type="radio" name="authority" value="2"> 管理员
		
		</br>
		<input type="reset" value="重置"> 
		<input type="button" onclick="register.html" value="注册"> 
		<input type="submit" value="登录"> 
		</form>	
	
	</ul>
	
	</body>
</html>
