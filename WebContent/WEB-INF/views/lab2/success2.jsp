<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lab2</title>
</head>
<body>
<h2>Thông tin sinh viên poly</h2>
<ul>
	<li>Họ và tên: ${modelstudent.name}</li>
	<li>Điểm TB: ${modelstudent.mark}</li>
	<li>Chuyên ngành: ${modelstudent.major}</li>
</ul>
</body>
</html>