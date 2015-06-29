<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#container {
	width: 800px;
	margin:10px auto;
}

#head {
	background: green;
	height: 200px;
}

#lside {
	background: blue;
	width: 600px;
	float: left;
	height: 200px;
}

.div1 {
	background: gray;
	width: 260px;
	height: 60px;
	float: left;
	margin: 5px;
	padding: 10px;
	border: 5px solid green;
}


#rside {
	background: yellow;
	width: 180px;
	float: right;
	height: 200px;
}

#footer {
	background: gray;
	height: 50px;
	clear: both;
}
p{
	text-indent: 30px;
	text-decoration:line-through;
	letter-spacing:20px;
}

</style>
</head>
<body>
	<div id="container">
		<div id="head"></div>
		<div id="content">
			<div id="lside">
				<div class="div1">
					<p>
					从第六课就开始有点糊涂了，不怎么懂了，
					田字布局这么弄啊 上一节布置的作业下一
					节课不讲一下的吗，不指点下的吗？？？
					</p>
				</div>
				<div class="div1">从第六课就开始有点糊涂了，不怎么懂了，
					田字布局这么弄啊 上一节布置的作业下一
					节课不讲一下的吗，不指点下的吗？？？</div>
				<div class="div1">从第六课就开始有点糊涂了，不怎么懂了，
					田字布局这么弄啊 上一节布置的作业下一
					节课不讲一下的吗，不指点下的吗？？？</div>
				<div class="div1">从第六课就开始有点糊涂了，不怎么懂了，
					田字布局这么弄啊 上一节布置的作业下一
					节课不讲一下的吗，不指点下的吗？？？</div>
			</div>
			<div id="rside"></div>
		</div>
		<div id="footer"></div>
	</div>
	
</body>
</html>