<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#testJson").click(function() {
			var url = this.href;
			var args = {};
			$.post(url, args, function(data) {
				for (var i = 0; i < data.length; i++) {
					var id = data[i].id;
					var name = data[i].name;
					alert(id + ": " + name);
				}
			});
			return false;
		});
		$(function() {
			$(".delete").click(function() {
				var href = $(this).attr("href");
				$("#form").attr("action", href).submit();
				return false;
			});
		})
	})
</script>

<style type="text/css">

	#div1{width:200px; height:100px; background:#ccc; border:1px solid #999; display:none;}
</style>
</head>
<body>
<form>
	<input type="checkbox" onmouseover="div1.style.display='block';" 
			onmouseout="document.getElementById('div1').style.display='none';"/>
	<div id="div1">
		for your security...
	</div>

</form>

	
	<form id="form" action="" method="POST">
		<input type="hidden" name="_method" value="DELETE">
	</form>

	<c:if test="${empty employees}">
		没有信息
	</c:if>

	<c:if test="${!empty employees }">
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Age</th>
				<th>Department</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${employees }" var="emp">
				<tr>
					<th>${emp.id}</th>
					<th>${emp.name}</th>
					<th>${emp.gender==0?'female':'male'}</th>
					<th>${emp.age}</th>
					<th>${emp.department.name}</th>
					<th><a href="edit/${emp.id }">edit</a></th>
					<th><a class="delete" href="delete/${emp.id}">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<br>
	<a href="input">add Employee</a>


	<br>
	<a href="testJson" id="testJson">testJson</a>
	<br>

	<form action="testFileUpload" method="post"	enctype="multipart/form-data">
		File:<input type="file" name="file" /> 
		<br>
		Desc:<input type="text"	name="desc" />
		<br>
		<input type="submit" value="Submit" />
	</form>

	<br>

	<form action="${pageContext.request.contextPath}/testConversionService"
		method="post">
		<!-- GG-12-0-2 -->
		Employee: <input type="text" name="employee"> <br> <input
			type="submit" value="Submit">
	</form>

</body>
</html>