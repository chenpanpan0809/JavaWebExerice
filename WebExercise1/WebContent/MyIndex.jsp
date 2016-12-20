<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎来到我的首页</title>
<link rel="stylesheet" href="CSS/dream.css" type="text/css">
<script type="text/javascript">
function loadBlogCalendar(n) {
    $.ajax({
       
        data: {
            blogApp: currentBlogApp,
            dateStr: n
        },
        type: "get",
        dataType: "text",
        success: function(n) {
            n && ($("#blog-calendar").html(n),
            $("#blog-calendar").show())
        }
    })
}
function loadBlogDefaultCalendar() {
    if ($("#blog-calendar").length) {
        var t = "", i = $("#cb_post_title_url").attr("href"), n;
        (n = /\/archive\/(\d{4}\/\d{2}\/\d{2})\//g.exec(i)) ? t = n[1] : (n = /\/archive\/(\d{4}\/\d{2}\/\d{2})\./g.exec(i)) ? t = n[1] : (n = /\/archive\/(\d{4}\/\d{2})./g.exec(i)) && (t = n[1]);
        loadBlogCalendar(t)
    }
}

</script>
</head>
<body>

	<div id="box">
		<div id="header">
			<img alt="" src="image/fengye.jpg" style="float: left;">
			<h2 id="title">欢迎来到我的首页</h2>
			<img alt="" src="image/02.jpg" style="float: right;">
		</div>
		<div id="blank"></div>
		<div id="navi">
			<ul style="margin-top: 0;">
				<li id="lis"><a href="servlet/NewFile.jsp">点击登陆</a></li>
				<a href="servlet/Index" name="username1"><li>个人简介</li></a>
				<a href="servlet/Index" name="username1"><li>个人兴趣</li></a>
				<a href="servlet/Index" name="username1"><li>大学生活</li></a>
				<a href="servlet/Index" name="username1"><li>职业规划</li></a>
				<a href="servlet/Index" name="username1"><li>经历和感受</li></a>
				<a href="servlet/Index" name="username1"><li>我的朋友圈</li></a>
			</ul>
		</div>
		<div id="contain">
			<div id="leftcontain">
				<div class="fourdiv">
					<img alt="温馨的幸福" src="image/25r58PICQzC.jpg" title="温馨的幸福">
				</div>
				<div class="fourdiv">
					<img alt="" src="image/picture.jpg" title="成长的足迹">
				</div>
				<div class="fourdiv">
					<img alt="" src="image/57b58PICCvY.jpg" title="朋友圈">
				</div>
				<div class="fourdiv">
					<img alt="" src="image/4632997_120329109340_2.jpg" title="母校风光">
				</div>

			</div>
			<div id=midcontain></div>
			<div id="rightcontain">
				<div id="blog-calendar" style="">
					<table id="blogCalendar" class="Cal" cellspacing="0"
						cellpadding="0" title="Calendar">
						<tbody>
							<tr>
								<td colspan="7"><table class="CalTitle" cellspacing="0">
										<tbody>
											<tr>
												<td class="CalNextPrev"><a href="javascript:void(0);"
													onclick="loadBlogCalendar('2016/11/01');return false;">&lt;</a></td>
												<td align="center"
													style="border-left-width: 10px; padding-left: 50px; padding-right: 50px; border-right-width: 0px; width: 130px;">2016年12月</td>
												<td class="CalNextPrev" align="right"><a
													href="javascript:void(0);"
													onclick="loadBlogCalendar('2017/01/01');return false;">&gt;</a></td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<th class="CalDayHeader" align="center" abbr="日" scope="col">日</th>
								<th class="CalDayHeader" align="center" abbr="一" scope="col">一</th>
								<th class="CalDayHeader" align="center" abbr="二" scope="col">二</th>
								<th class="CalDayHeader" align="center" abbr="三" scope="col">三</th>
								<th class="CalDayHeader" align="center" abbr="四" scope="col">四</th>
								<th class="CalDayHeader" align="center" abbr="五" scope="col">五</th>
								<th class="CalDayHeader" align="center" abbr="六" scope="col">六</th>
							</tr>
							<tr>
								<td class="CalOtherMonthDay" align="center">27</td>
								<td class="CalOtherMonthDay" align="center">28</td>
								<td class="CalOtherMonthDay" align="center">29</td>
								<td class="CalOtherMonthDay" align="center">30</td>
								<td align="center">1</td>
								<td align="center">2</td>
								<td class="CalWeekendDay" align="center">3</td>
							</tr>
							<tr>
								<td class="CalWeekendDay" align="center">4</td>
								<td align="center">5</td>
								<td align="center">6</td>
								<td align="center">7</td>
								<td align="center">8</td>
								<td align="center">9</td>
								<td class="CalWeekendDay" align="center">10</td>
							</tr>
							<tr>
								<td class="CalWeekendDay" align="center">11</td>
								<td align="center">12</td>
								<td align="center">13</td>
								<td align="center">14</td>
								<td align="center">15</td>
								<td align="center">16</td>
								<td class="CalWeekendDay" align="center">17</td>
							</tr>
							<tr>
								<td class="CalWeekendDay" align="center">18</td>
								<td align="center">19</td>
								<td class="CalTodayDay" align="center">20</td>
								<td align="center">21</td>
								<td align="center">22</td>
								<td align="center">23</td>
								<td class="CalWeekendDay" align="center">24</td>
							</tr>
							<tr>
								<td class="CalWeekendDay" align="center">25</td>
								<td align="center">26</td>
								<td align="center">27</td>
								<td align="center">28</td>
								<td align="center">29</td>
								<td align="center">30</td>
								<td class="CalWeekendDay" align="center">31</td>
							</tr>
							<tr>
								<td class="CalOtherMonthDay" align="center">1</td>
								<td class="CalOtherMonthDay" align="center">2</td>
								<td class="CalOtherMonthDay" align="center">3</td>
								<td class="CalOtherMonthDay" align="center">4</td>
								<td class="CalOtherMonthDay" align="center">5</td>
								<td class="CalOtherMonthDay" align="center">6</td>
								<td class="CalOtherMonthDay" align="center">7</td>
							</tr>
						</tbody>
					</table>
				</div>
				
        
        </div>
		<div id="bottomborder"></div>
	</div>

</body>
</html>