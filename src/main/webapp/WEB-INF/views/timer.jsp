<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	function trans(n) {
		if (n < 10)
			return '0' + n;
		else
			return '' + n;
	}

	function tick() {
		var oDate = null;
		var hour = null;
		var minute = null;
		var second = null;
		var aImg = document.getElementsByTagName("img");
		oDate = new Date();
		hour = trans(oDate.getHours());
		minute = trans(oDate.getMinutes());
		second = trans(oDate.getSeconds());
		var str = hour + minute + second;
		for (var i = 0; i < aImg.length; i++) {
			aImg[i].src = 'imgs/' + str.charAt(i) + ".png";
		}
	}
	window.onload = function() {
		setInterval(tick, 1000);
		tick();

		var box = document.getElementById("box");
		var div1 = document.getElementById("div1");
		box.onmouseover = function() {
			clearTimeout(timer);
			div1.style.display = 'block';
		}
		var timer = null;
		box.onmouseout = function() {
			timer = setTimeout(function() {
				div1.style.display = 'none';
			}, 1000);
		}
		div1.onmouseover = function() {
			clearTimeout(timer);
		}
		div1.onmouseout = function() {
			timer = setTimeout(function() {
				div1.style.display = 'none';
			}, 1000);
		}
	}
</script>
<style>


#div2 {
	background: green;
	color: red;
}
/* #lside {
	background: green;
}
#rside{
	background: black;
} */


#div3 {
	background: gray;
}
</style>
</head>
<body style="color: balck; font-size: 50px;">
	<img src="imgs/0.png">
	<img src="imgs/0.png"> :
	<img src="imgs/0.png">
	<img src="imgs/0.png"> :
	<img src="imgs/0.png">
	<img src="imgs/0.png">


	<input id="box" type="checkbox" />
	<div id="div1" style="background: white; color: black; display: none;">for
		your security...</div>
	<div id="div2">
		<div id="lside"></div>
		<div id="rside"></div>
	</div>
	<div id="div3"></div>
</body>
</html>