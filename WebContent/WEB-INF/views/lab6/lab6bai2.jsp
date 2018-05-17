<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lab 6 | bài 2</title>
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: normal;
}
</style>
</head>
<body>
	<div align="center">
		${message}
		<form:form action="lab6bai2.htm" modelAttribute="user">
			<div>
				<label>Tài khoản</label>				
				<form:input path="Username" />
				<form:errors path="Username" />	
			</div>
			<div>
				<label>Mật khẩu</label>
				<form:input path="Password" />
				<form:errors path="Password" />	
			</div>
			<div>
				<label>Họ và Tên</label>
				<form:input path="Fullname" />
				<form:errors path="Fullname" />	
			</div>
			<div>
				<button class="btn btn-default">Insert</button>
			</div>
		</form:form>
	</div>
</body>
</html>