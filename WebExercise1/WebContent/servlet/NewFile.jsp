<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/try.css" type="text/css">
</head>
<body>
<div id="pagecontain">
<h2>登陆(Login)</h2>
<form action="<%= request.getContextPath() %>/servlet/DbLogin" method="post" >
<input name="username" type="text" placeholder="用户名(Username):" >
<br/>
<input name="password" type="password" placeholder="密码(Password):">
<br/>
<button type="submit"><h3 class="button" style=" margin-top:0;border: 0px;">提 &nbsp; &nbsp;交(Submit)</h3></button>
</form>

</div>
</body>
</html>