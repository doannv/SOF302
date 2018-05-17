<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.form-group {
	margin: 10px;
}
</style>
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
<title>Lab 5 | bài 2</title>
</head>
<body>
	<h2>NỘP ĐƠN XIN VIỆC</h2>
	${message}
	<form action="upload.htm" method="POST" enctype="multipart/form-data" >
		<div class="form-group">
			<div>Họ và tên ứng viên</div>
			<input type="text" name="fullname">
		</div>
		<div class="form-group">
			<div>Hình ảnh</div>
			<input type="file" name="photo">
		</div>
		<div class="form-group">
			<div>Hồ sơ xin việc</div>
			<input type="file" name="cv">
		</div>
		<div class="form-group">
			<button>Nộp</button>
		</div>
	</form>
</body>
</html>