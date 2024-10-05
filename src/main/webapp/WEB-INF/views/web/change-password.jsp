<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChangePassword</title>

</head>
<body>
	<h1>ChangePassword</h1>
	<p>Trạng thái Login: ${checkLogin}</p>
	<div>
		<a href="home">Đến trang home</a>
	</div>
	<div>
		<form action='logout' method="post">
			<input type="submit" value="Logout">
		</form>
	</div>
</body>
</html>