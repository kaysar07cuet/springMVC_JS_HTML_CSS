<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link id="skin" rel="stylesheet" type="text/css" href="css/css2.css"/>

<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
window.onload=function(){
	var calendar = document.getElementById('calendar');
	var month = calendar.getElementsByTagName('li');
	var todo = document.getElementById('todolist');
	var divtodo = calendar.getElementsByTagName('div')[0];
	var todolist = ['1月是你的谎言',2,3,4,5,6,7,8,9,10,11,12];
	for(var i=0;i<month.length;i++){
		
		month[i].index=i;
		month[i].onmouseover = function(){
			for(var j=0;j<month.length;j++){
				month[j].className='';
			}
			
			this.className='active';
			divtodo.innerHTML = todolist[this.index]; 
		}
	}
	
};
/* $(function(){
	$("#skinButton").click(function(){
		alert('lalala');
		var chosenE = document.getElementById('skin');
		chosenE.href = 'css/css1.css';
	});
	
}) */
	
</script>
</head>
<body>
	<a href="emp">show employees</a>
	<div id="div1" onmouseover="toGreen()" onmouseout="toRed()"></div>
	<input id="skinButton" type="button" value="changeSkin"/> 
	
	
	
	<div id="calendar">
		<ul>
			<li>1月</li>
			<li>2月</li>
			<li>3月</li>
			<li>4月</li>
			<li>5月</li>
			<li>6月</li>
			<li>7月</li>
			<li>8月</li>
			<li>9月</li>
			<li>10月</li>
			<li>11月</li>
			<li>12月</li>
		</ul>
		<div id="todolist" >todo</div>
	</div>
</body>
</html>