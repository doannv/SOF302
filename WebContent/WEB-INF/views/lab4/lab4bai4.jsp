<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
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
<title>Lab 4 | bài 4</title>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	line-height: 25px;
	border: 1px solid black;
	padding: 5px;
}

th {
	background-color: gray;
}
</style>
</head>
<body>
	<h1>EL and JSTL</h1>
	<table>
		<tr>
			<th>Tên SP</th>
			<th>Giá cũ</th>
			<th>Giảm giá</th>
			<th>Giá mới</th>
		</tr>
		<c:forEach var="p" items="${prods}">
			<tr>
				<td>${p.name}</td>
				<td><f:formatNumber value="${p.unitPrice}" /> VNĐ</td>
				<td><f:formatNumber value="${p.discount}" type="percent"/></td>
				<td><f:formatNumber value="${p.newPrice} " /> VNĐ</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>