<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://hovertree.com/texiao/hoverclock/jquery.hoverclock.2.1.0.css" />
<script src="http://hovertree.com/ziyuan/jquery/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" href="../CSS/dream.css" type="text/css">
<style>
.door {
	position: relative;
	width: 960px;
	height: 300px;
	overflow: hidden;
	border: 2px solid #silver;
	background: silver;
	background-image: url(../image/2614676_143855081_2.jpg)
}

.door-left  {
	position: relative;
	float: left;
	width: 50%;
	height: 100%;
	background: #faa;
	box-sizing: border-box;
	transition: all .5s ease;
	
	background-image: url(../image/co120Q1163054-0.jpg)
}
.door-right {
	position: relative;
	float: left;
	width: 50%;
	height: 100%;
	background: #faa;
	box-sizing: border-box;
	transition: all .5s ease;
	
	background-image: url(../image/14-16031Q115492Y.jpg)
}

.door-left {
	border-right: 2px solid #000;
	-webkit-transform-origin: 0 0;
	color: white
}

.door-left:before, .door-right:before {
	content: '';
	position: absolute;
	width: 10px;
	height: 10px;
	top: 50%;
	margin-top: -5px;
	border-radius: 50%;
	background: #000;
}

.door-left:before {
	right: 5px;
}

.door-right:before {
	left: 5px;
}

.door-right {
	border-left: 2px solid #000;
	-webkit-transform-origin: 100% 0;
}

.door:hover .door-left {
	-webkit-transform: rotateY(-90deg);
	transition: transform 3s Linear
}

.door:hover .door-right {
	-webkit-transform: rotateY(90deg);
	transition: transform 3s Linear
}
</style>
</head>
<body>
	<div id="box">
		<div id="header">
			<img alt="" src="../image/fengye.jpg" style="float: left;">
			<h2 id="title"
				style="font-family: cursive; text-shadow: 6px 2px 2px #333; color: deeppink">欢迎来到我的首页</h2>
			<img alt="" src="../image/02.jpg" style="float: right;">
		</div>
		<div id="blank"></div>
		<div id="navi">
			<ul style="margin-top: 0;">
				<!-- <li id="lis"><a href="../servlet/NewFile.html">点击登陆</a></li> -->
				<a href="../HTML/JianLi.html"><li id="lise">个人简介</li></a>
				<a href=""><li>个人兴趣</li></a>
				<a href=""><li>大学生活</li></a>
				<a href=""><li>职业规划</li></a>
				<a href=""><li>经历和感受</li></a>
				<a href=""><li>我的朋友圈</li></a>
				<%
					Set all = (Set) this.getServletContext().getAttribute("online");
				%>
				<li>当前访问人数: <%=all.size()%>
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
			<div id="rightcontain">
			
			<div id="hoverclock" class="hoverclock" style="width: 248px;height: 248px;background-color: yellow;border-color: transparent;display: block;top: 0px;left: 0px;float: left;">

<script src="http://hovertree.com/texiao/hoverclock/jquery.hoverclock.2.1.0.js"></script>
<script>
$("#hoverclock").hoverclock({
"h_width":248,
"h_height":248,
//"h_hourNumSize": "80",
// "h_hourNumRadii": "200",
// "h_hourNumShow": false,
// "h_minuteNumShow":false,
"h_hourNumColor": "deeppink",
"h_backColor": "yellow",
// "h_borderColor": "gold",
//"h_frontColor":"red",
 "h_linkText": "HoverClock" 
   /* $(".hoverclocklink HoverClock").$("HoverClock").hide();  */
});
</script>
</div>
		
			
			</div>
		</div>
		<div id="bottomborder">

			<div class="door">
				<div class="door-left"><h3 style="text-align: center;margin-top:130px;color: red;">开门大吉</h3></div>
				<div class="door-right"><h3 style="text-align: center;margin-top:130px;color:red;
    margin-top: 130px;
    margin-left: 120px;
" >开门大吉</h3></div>
			</div>

		</div>
	</div>

</body>
</html>