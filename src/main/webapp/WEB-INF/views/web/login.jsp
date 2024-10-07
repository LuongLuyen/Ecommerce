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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

	<!-- <form action='send-email' method="post">
		<input type="hidden" id="email" name="email"
			value="havantoannn2006@gmail.com" required> <input
			type="submit" value="Email">
	</form>
	<form action='send-sms' method="post">
		<input type="hidden" id="phone" name="phone" value="0364312551"
			required> <input type="submit" value="Phone">
	</form>  -->


	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form action="#">
				<h1>Tạo tài khoản</h1>
				<div class="social-container">
					<a href="#" class="social"><i class="fab fa-facebook-f"></i></a> <a
						href="#" class="social"><i class="fab fa-google-plus-g"></i></a> <a
						href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
				</div>
				<span>hoặc sử dụng email của bạn để đăng ký</span> <input type="text"
					placeholder="Name" /> <input type="email" placeholder="Email" />
				<input type="password" placeholder="Password" />
				<button>Đăng ký</button>
			</form>
		</div>
		<div class="form-container sign-in-container">
			<form action='home' method="post">
				<h1>Đăng nhập</h1>
				<div class="social-container">
					<a href="#" class="social"><i class="fab fa-facebook-f"></i></a> <a
						href="#" class="social"><i class="fab fa-google-plus-g"></i></a> <a
						href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
				</div>
				<span>hoặc sử dụng tài khoản của bạn</span> <input type="text"
					placeholder="Username" id="username" name="username" /> <input
					type="password" placeholder="Password" id="password"
					name="password" /> <a href="#">Quên mật khẩu?</a>
				<button>Đăng nhập</button>
				<p class="error">${error}</p>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Chào mừng trở lại!</h1>
					<p>Để duy trì kết nối với chúng tôi, vui lòng đăng nhập bằng tài khoản cá nhân của bạn</p>
					<button class="ghost" id="signIn">Đăng nhập</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Chào bạn!</h1>
					<p>Nhập thông tin cá nhân của bạn và bắt đầu hành trình với chúng tôi</p>
					<button class="ghost" id="signUp">Đăng ký</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="<c:url value='/resources/static/js/login.js' />"></script>

</body>
</html>