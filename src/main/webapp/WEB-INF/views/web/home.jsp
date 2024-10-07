<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="UTF-8">
<title>Home</title> -->
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Shop</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- head -->
<%@ include file="/WEB-INF/views/component/head.jsp"%>
<!-- head -->

</head>
<body>

	<%--  	<h1>Home Web</h1>
	<p>Trạng thái Login: ${checkLogin}</p>
	<div>
		<a href="admin">Đến trang admin</a>
	</div>
	<div>
		<a href="change-password">Thay đổi mật khẩu</a>
	</div>
	<div>
		<form action='logout' method="post">
			<input type="submit" value="Logout">
		</form>
	</div>  --%>

	<!-- header -->
	<%@ include file="/WEB-INF/views/component/header.jsp"%>
	<!-- header -->

	<!-- fashion -->
	<%@ include file="/WEB-INF/views/component/fashion.jsp"%>
	<!-- fashion -->

	<!-- electronic -->
	<%@ include file="/WEB-INF/views/component/electronic.jsp"%>
	<!-- electronic -->

	<!-- jewellery -->
	<%@ include file="/WEB-INF/views/component/jewellery.jsp"%>
	<!-- jewellery -->

	<!-- footer -->
	<%@ include file="/WEB-INF/views/component/footer.jsp"%>
	<!-- footer -->

	<!-- subjs -->
	<%@ include file="/WEB-INF/views/component/subjs.jsp"%>
	<!-- subjs -->

</body>
</body>
</html>