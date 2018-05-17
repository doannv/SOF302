<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Manager</title>
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
</head>
<body>
	<h2>STUDENT MANAGER</h2>
	<form action="student.htm" method="post">
		<div>Họ và tên</div>
		<input name="name" />
		<div>Điểm trung bình</div>
		<input name="mark" />
		<div>Chuyên ngành</div>
		<label> <input name="major" type="radio" value="UDPM" /> Ứng
			dụng phần mềm
		</label> <label> <input name="major" type="radio" value="WEB" />
			Thiết kế website
		</label>
		<hr>
		${message}
		<hr>
		<button name="btnInsert">Thêm</button>
		<button name="btnUpdate">Cập nhật</button>
		<button name="btnDelete">Xóa</button>
		<button name="btnReset">Nhập lại</button>
	</form>
	<hr>
	<table border="1" style="width: 100%">
		<tr>
			<th>Họ và tên</th>
			<th>Điểm TB</th>
			<th>Chuyên ngành</th>
			<th></th>
		</tr>
		<tr>
			<td>Nguyễn Văn Đoàn</td>
			<td>8.5</td>
			<td>CNTT</td>
			<td><a href="student.htm?lnkEdit">Sửa</a></td>
		</tr>
	</table>
</body>
</html>