<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/dream.css" type="text/css">

</head>
<body>
<div id="box">
		<div id="header">
			<img alt="" src="../image/fengye.jpg" style="float: left;">
			<h2 id="title" style="font-family:cursive;text-shadow:6px 2px 2px #333;color:deeppink">欢迎来到我的首页</h2>
			<img alt="" src="../image/02.jpg" style="float: right;">
		</div>
		<div id="blank"></div>
		<div id="navi">
			<ul style="margin-top: 0;">
				<!-- <li id="lis"><a href="../servlet/NewFile.html">点击登陆</a></li> -->
				<a href="../HTML/JianLi.html"><li id="lise">个人简介</li></a>
				<a href=""><li> 个人兴趣</li></a>
				<a href=""><li>大学生活</li></a>
				<a href=""><li>职业规划</li></a>
				<a href=""><li>经历和感受</li></a>
				<a href=""><li>我的朋友圈</li></a>
				<%
				Set all =(Set)this.getServletContext().getAttribute("online");
				%>
				<li>当前访问人数:
				 <%= all.size()%>
				</li>
			</ul>
		</div>
		<div id="contain">
		<div id="leftcontain">
		<div class="fourdiv">
		<img alt="温馨的幸福" src="../image/25r58PICQzC.jpg" title="温馨的幸福">
		</div>
		<div class="fourdiv">
		<img alt="" src="../image/picture.jpg" title="成长的足迹">
		</div>
		<div class="fourdiv">
		<img alt="" src="../image/57b58PICCvY.jpg" title="朋友圈">
		</div>
		<div class="fourdiv">
		<img alt="" src="../image/4632997_120329109340_2.jpg" title="母校风光">
		</div>
		
		</div>
		<div id=midcontain></div>
		<div id="rightcontain"></div>
		</div>
		<div id="bottomborder"></div>
	</div>
	
</body>
</html>