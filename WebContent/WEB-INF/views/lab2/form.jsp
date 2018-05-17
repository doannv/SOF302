<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Lab1 | bai 2</title>
</head>
<body>
	<div align="center">
		<h2>Sinh viên poly</h2>
		<form action="lab2/save.htm" method="post">
			<div>Họ và tên</div>
			<input name="name" />
			<div>Điểm trung bình</div>
			<input name="mark" />
			<div>Chuyên ngành</div>
			<label> <input name="major" type="radio" value="UDPM" /> Ứng
				dụng phần mềm
			</label> <label> <input name="major" type="radio" value="WEB" />
				Thiết kế website
			</label><hr>
			<button class="btn btn-primary">Lưu</button>
		</form>
	</div>
</body>
</html>