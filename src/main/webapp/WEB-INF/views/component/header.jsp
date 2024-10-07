<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- banner bg main start -->
<div class="banner_bg_main">
	<!-- header top section start -->
	<div class="container">
		<div class="header_section_top">
			<div class="row">
				<div class="col-sm-12">
					<div class="custom_menu">
						<ul>
							<li><a href="#">Bán chạy nhất</a></li>
							<li><a href="#">Ý tưởng quà tặng</a></li>
							<li><a href="#">Mới nhất</a></li>
							<li><a href="#">Ưu đãi hôm nay</a></li>
							<li><a href="#">Dịch vụ khách hàng</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- header top section start -->
	<!-- logo section start -->
	<div class="logo_section">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="logo">
						<a href="home"><img
							src="<c:url value='/resources/static/template/home/images/logo.png'/>"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- logo section end -->
	<!-- header section start -->
	<div class="header_section">
		<div class="container">
			<div class="containt_main">
				<div id="mySidenav" class="sidenav">
					<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
					<a href="home">Trang chủ</a> <a href="fashion">Thời trang</a> <a
						href="electronic">Điện tử</a> <a href="jewellery">Đồ trang sức</a>
				</div>
				<span class="toggle_icon" onclick="openNav()"><img
					src="<c:url value='/resources/static/template/home/images/toggle-icon.png'/>"></span>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Tất cả danh mục</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div>
				</div>
				<div class="main">
					<!-- Another variation with a button -->
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Tìm kiếm">
						<div class="input-group-append">
							<button class="btn btn-secondary" type="button"
								style="background-color: #f26522; border-color: #f26522">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="header_box">
					<div class="lang_box ">
						<a href="#" title="Language" class="nav-link"
							data-toggle="dropdown" aria-expanded="true"> <img
							src="<c:url value='/resources/static/template/home/images/flag-uk.png'/>"
							alt="flag" class="mr-2 " title="United Kingdom"> English <i
							class="fa fa-angle-down ml-2" aria-hidden="true"> </i>
						</a>
						<div class="dropdown-menu ">
							<a href="#" class="dropdown-item"> <img
								src="<c:url value='/resources/static/template/home/images/flag-france.png'/>"
								class="mr-2" alt="flag"> French
							</a>
						</div>
					</div>
					<div class="login_menu">
						<ul>
							<li><a href="payment"> <i class="fa fa-shopping-cart"
									aria-hidden="true"></i> <span class="padding_10">Cart</span></a></li>
							<li><a href="home"> <i class="fa fa-user"
									aria-hidden="true"></i> <span class="padding_10">${checkLogin}</span></a></li>
							<li>
								<form action='logout' method="post">
									<i class="fas fa-sign-out-alt" aria-hidden="true"></i>
									<button class="padding_10"
										style="background-color: red; padding-right: 10px; border-radius: 5px; color:#fff">Thoát</button>
								</form>
							</li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- header section end -->
	<!-- banner section start -->
	<div class="banner_section layout_padding">
		<div class="container">
			<div id="my_slider" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-sm-12">
								<h1 class="banner_taital">
									Bắt đầu <br>Mua sắm yêu thích của bạn
								</h1>
								<div class="buynow_bt">
									<a href="#">Mua ngay</a>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="row">
							<div class="col-sm-12">
								<h1 class="banner_taital">
									Bắt đầu <br>Mua sắm yêu thích của bạn
								</h1>
								<div class="buynow_bt">
									<a href="#">Mua ngay</a>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="row">
							<div class="col-sm-12">
								<h1 class="banner_taital">
									Bắt đầu <br>Mua sắm yêu thích của bạn
								</h1>
								<div class="buynow_bt">
									<a href="#">Mua ngay</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#my_slider" role="button"
					data-slide="prev"> <i class="fa fa-angle-left"></i>
				</a> <a class="carousel-control-next" href="#my_slider" role="button"
					data-slide="next"> <i class="fa fa-angle-right"></i>
				</a>
			</div>
		</div>
	</div>
	<!-- banner section end -->
</div>
<!-- banner bg main end -->