<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

#roll {
	height: 120px;
	width: 748px;
	background: black;
	margin: 200px auto;
	position: relative;
}

#roll ul {
	position: absolute;
	left: 0;
	top: 0;
}

#roll ul li {
	width: 187px;
	height: 120px;
	list-style: none;
	float: left;
}
</style>

<script type="text/javascript">
	window.onload = function() {
		var oDiv = document.getElementById('roll');
		var oUl = oDiv.getElementsByTagName('ul');
		/* var oLi = oUl.getElementsByTagName('li'); */
		alert(oUl.length);
		/* setInterval(function() {
			alert(oLi);
		}, 2000); */
	};
</script>

</head>
<body>
	<div id="roll">
		<ul>
			<li><img alt="0(1)" src="imgs/0 (1).jpg" /></li>
			<li><img alt="0(2)" src="imgs/0 (2).jpg" /></li>
			<li><img alt="0(3)" src="imgs/0 (3).jpg" /></li>
			<li><img alt="0(4)" src="imgs/0 (4).jpg" /></li>
		</ul>
	</div>
</body>
</html>