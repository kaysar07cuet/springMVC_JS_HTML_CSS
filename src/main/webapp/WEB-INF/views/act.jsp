<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

div {
	width: 200px;
	height: 20px;
	background: red;
	left: 0px;
}

#target {
	width: 1px;
	height: 500px;
	background: black;
	position: absolute;
	left: 500px;
	top: 0;
}
</style>
<script>
	window.onload = function() {
		var oDivs = document.getElementsByTagName('div');
		for (var i = 0; i < oDivs.length; i++) {
			oDivs[i].speed = 0;
			oDivs[i].timer = null;
			oDivs[i].onmouseover = function() {
				move(this, 500, 'width');
			}

			oDivs[i].onmouseout = function() {
				move(this, 200, 'width');
			}
		}
	}
	function getAttr(obj, attr) {
		if (obj.currentStyle) {
			return obj.currentStyle[attr];
		}

		return getComputedStyle(obj, null)[attr];
	}
	function move(obj, iTarget, attr) {

		clearInterval(obj.timer);
		obj.timer = setInterval(function() {
			var cur = parseInt(getAttr(obj, attr));
			obj.speed = (iTarget - cur) / 6;
			obj.speed = obj.speed > 0 ? Math.ceil(obj.speed) : Math
					.floor(obj.speed);
			if (cur == iTarget) {
				clearInterval(obj.timer);
			} else {
				obj.style[attr] = cur + obj.speed + 'px';
			}
		}, 30);
	}
</script>

</head>
<body>
	<div id="test">1</div>
	<div id="test1">2</div>
	<div id="test2">3</div>
	<div id="test3">4</div>
	<div id="target">5</div>
</body>
</html>