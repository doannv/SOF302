<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Lab 3</title>
<style>
div {
	display: inline-block;
	text-align: center;
	margin: auto;
	padding: 10px;
	border: 2px dotted blue;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div align="center">
		<h1>EL and JSTL</h1>
		<div>
			<img src="${pt1}"> <br> <strong>${name1}</strong> <em>${salary*level1}</em>
		</div>
		<div>
			<img src="${pt2}"> <br> <strong>${name2}</strong> <em>${salary*level2}</em>
		</div>
		<div>
			<img src="${pt3}"> <br> <strong>${name3}</strong> <em>${salary*level3}</em>
		</div>
	</div>
</body>
</html>