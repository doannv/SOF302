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
<title>Send Mail</title>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
<div align="center">
	<font color="red">${message}</font>
	<form action="send.htm" method="post">		
			<input name="from" placeholder="Email người gửi">		
			<input name="to" placeholder="Email gười nhận">		
			<input name="subject" placeholder="Tiêu đề">		
			<textarea name="body" placeholder="Nội dung" rows="5" cols="50"></textarea>		
		<button class="btn btn-primary">Send</button>
	</form>
</div>
</body>
</html>