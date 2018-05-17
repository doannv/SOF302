<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
<title>Index | Lab 7</title>

</head>
<body>
	<a href="lab7index.htm"><s:message code="global.lab7menu.lab7index" /></a>|
	<a href="lab7about.htm"><s:message code="global.lab7menu.lab7about" /></a>
	|
	<a href="#" data-lang="en">English</a> |
	<a href="#" data-lang="vi">Tiếng Việt</a>
	<script>
		$(function() {
			$("a[data-lang]").click(function() {
				var lang = $(this).attr("data-lang");
				$.get("lab7about.htm?language=" + lang, function() {
					location.reload();
				});
				return false;
			});
		});
	</script>
</body>
</html>