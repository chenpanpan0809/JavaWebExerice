<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/login.css" type="text/css">
<script type="text/javascript">
function pass(){
	alert("用户名chenpanpan 密码12345");
}

</script>
</head>
<body style="background-color: yellow;">
<div>

<img alt="" src="">

</div>


	<div class="divCss">

		<form action="<%=request.getContextPath() %>/servlet/EnterRequest" method="post" class="loginCss">
			
			<table border="0" id="borderCss">
				<tr>
					<td><span class="formCss">用户名:</span></td>
					<td><input class="formCss" name="username" type="text">
					</td>
				</tr>

				<tr>
					<td><span class="formCss">密&nbsp;&nbsp;&nbsp;码:</span></td>
					<td><input class="formCss" name="password" type="password">
					</td>
				</tr>
				<tr></tr>
				<tr></tr>
				<tr>
					<td></td>
					<td ><input name="submit" type="submit" value="登陆">&nbsp;&nbsp;&nbsp;
					<input name="reset" type="reset"></td>
					
				</tr>
				<tr >
				<td colspan="2"><input name="button"type="button" style="  margin-left: 50px;"
				 onclick="pass()" value="点击获取密码"></td>
				</tr>
			</table>
		</form>
	</div>
	
<%-- 	<%
		String name = request.getParameter("username");
		String password = request.getParameter("password");
		if ("chenpanpan".equals(name) && "12345".equals(password)) {

			response.setHeader("refresh", "2;URL=welcom.jsp");
			session.setAttribute("userid", name);
	%>
	<h3>用户登陆成功，2秒后跳到个人页面</h3>
	<h3>
		如果没有跳转成功，请点击<a href="welcom.jsp">这里</a>
	</h3>
	<%
		} else {
			if (name == null && password == null) {
	%>
	<h2 class="loginCss">请输入用户名和密码</h2>
	<%
		}

			else {
	%>
	<script type="text/javascript">
	alert(" 用户名或者密码错误");
	</script>
	<%
	}
	%>
	<% 
}
 %> --%>

</body>
</html>