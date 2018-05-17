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
<title>Lab 4</title>
<style>
li {
	list-style: none;
	line-height: 25px;
}

li>label {
	display: inline-block;
	text-align: right;
	width: 110px;
	font-variant: small-caps;
	font-weight: bold;
}
</style>

</head>

<body>
	<h1>EL and JSTL</h1>
	
	<ul>
		<li>Họ và tên: ${sv1.name}</li>
		<li>Điểm TB: ${sv1.mark}</li>
		<li>Chuyên ngành: ${sv1.major}</li>
		
	</ul>
	<ul>
		<li>Họ và tên: ${sv2.name}</li>
		<li>Điểm TB: ${sv2.mark}</li>
		<li>Chuyên ngành: ${sv2.major}</li>
	</ul>
	<ul>
		<li>Họ và tên: ${sv3.name}</li>
		<li>Điểm TB: ${sv3.mark}</li>
		<li>Chuyên ngành: ${sv3.major}</li>
	</ul>
	
</body>
</html>