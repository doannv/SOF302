<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
}
</style>

<title>Lab 8 | bài 1</title>

</head>
<body>
<div align="left">
	${message}
	<form:form action="validate.htm" modelAttribute="student">
		<div>Họ và tên</div>
		<form:input path="name" />
		<form:errors path="name" />
		<div>Điểm</div>
		<form:input path="mark" />
		<form:errors path="mark" />

		<div>Chuyên ngành</div>
		<form:radiobutton path="major" value="APP" label="Ứng dụng phần mềm" />
		<form:radiobutton path="major" value="WEB" label="Thiết kế trang web" />
		<form:errors path="major" />
		<div>
			<button>Validate</button>
		</div>
	</form:form>
</div>
</body>
</html>