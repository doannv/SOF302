<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lab 3| Bai 1</title>
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
</head>
<body>
	<div align="center">
		<h3>SINH VIÊN POLY</h3>
		<form:form action="student/update.htm" modelAttribute="st">
			<table>
				<tr>
					<td><form:label path="name">Họ và tên: </form:label></td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td><form:label path="mark">Điểm TB: </form:label></td>
					<td><form:input path="mark" /></td>
				</tr>
				<tr>
					<td><form:label path="major">Chuyên ngành: </form:label></td>
					<td><form:select path="major" items='${majors}' /></td>
				</tr>
				<tr>
					<td><form:label path="major">Chuyên ngành: </form:label></td>
					<td><form:radiobuttons path="major" items='${majors1}'
							itemValue="id" itemLabel="name" /></td>
				</tr>
			</table>
			<div>
				<button>Cập nhật</button>
			</div>
		</form:form>
	</div>
</body>
</html>