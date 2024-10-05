<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="<c:url value='/resources/static/css/login.css' />"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<h1 class="login">Login</h1>
	<form action='home' method="post">
		<label for="username">Name:</label> <input type="text" id="username"
			name="username" required><br> <br> <label
			for="password">Password:</label> <input type="password" id="password"
			name="password" required><br> <br> <input
			type="submit" value="Login">
	</form>
	<p class="error">${error}</p>
	<div class="qmk">
		<a href="reset">Quên mật khẩu ?</a>
	</div>
	<form action='send-email' method="post">
		<input type="hidden" id="email" name="email" value="havantoannn2006@gmail.com" required>
	    <input type="submit" value="Email">
	</form>
		<form action='send-sms' method="post">
		<input type="hidden" id="phone" name="phone" value="0364312551" required>
	    <input type="submit" value="Phone">
	</form>


	<!-- 	put, delete chi can chinh trong jsp controller PUT,DELETE binh thuong -->
	<!-- 	<form action="/updateUser" method="post">
		<input type="hidden" name="_method" value="PUT"> <label
			for="username">Username:</label> <input type="text" id="username"
			name="username"><br>
		<br> <label for="email">Email:</label> <input type="email"
			id="email" name="email"><br>
		<br> <input type="submit" value="Update">
	</form> -->

</body>
</html>