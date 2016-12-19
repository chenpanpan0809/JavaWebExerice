<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if (null != request.getAttribute("userid")) {
	%>

	<h3 style="text-align: center;">
		欢迎<%=request.getAttribute("userid")%>用户光临本系统

	</h3>
	
	<div>
		<ul class="box">
			<li>个人信息1</li>
			<li>个人信息2</li>
			<li>个人信息3</li>
			<li>个人信息4</li>

		</ul>
	</div>


	<a href="loginOut.jsp">点击注销</a>
	<%
		} else {
	%>
	<h3>
		请先登陆该系统 点击<a href="login.jsp">login</a>
	</h3>
	<%
		}
	%>

</body>
</html>