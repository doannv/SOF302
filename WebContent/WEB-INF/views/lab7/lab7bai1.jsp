<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js">
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lab 7 | bài 1</title>
<base href="${pageContext.servletContext.contextPath}/">
<link href="css/layout.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<header>
		<h1>Shopping Mall</h1>
		</header>
		<nav> 
		<jsp:include page="lab7menu.jsp"></jsp:include> 
		</nav>
		<article> <jsp:include page="${param.view}" /> </article>
		<aside>CONTROL PANEL</aside>
		<footer>FOOTER</footer>
	</div>
</body>
</html>