<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web</title>

</head>
<body>
	<h1>Home Web</h1>
	<p>Trạng thái Login: ${checkLogin}</p>
	<div>
		<a href="admin">Đến trang admin</a>
	</div>
	<div>
		<a href="api/user">All api user</a>
	</div>
	<div>
		<a href="changepass">Thay đổi mật khẩu</a>
	</div>
	<div>
		<form action='logout' method="post">
			<input type="submit" value="Logout">
		</form>
	</div>
</body>
</html>