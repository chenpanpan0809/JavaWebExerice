<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://hovertree.com/texiao/hoverclock/jquery.hoverclock.2.1.0.css" />
<script src="http://hovertree.com/ziyuan/jquery/jquery-1.11.3.min.js"></script>
<style>
body {
margin: 0px;
padding: 0px;
}
div {
padding: 0px;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>HoverClock - HoverTree</title><base target="_blank" />
<style type="text/css">


</style>

</head>
<body>

<div id="hoverclock" class="hoverclock" style="width: 248px;height: 248px;background-color:blue;border-color: transparent;display: block;top: 500px;left: 500px;">

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
});
</script>
</div>
</body>
</html>