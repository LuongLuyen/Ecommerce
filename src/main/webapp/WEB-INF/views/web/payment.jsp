<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<link href="<c:url value='/resources/static/css/payment.css' />"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<section class="h-100 h-custom" style="background-color: #eee;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col">
					<div class="card">
						<div class="card-body p-4">

							<div class="row">

								<div class="col-lg-7">
									<h5 class="mb-3">
										<a href="home" class="text-body"><i
											class="fas fa-long-arrow-alt-left me-2"></i>Tiếp tục mua sắm</a>
									</h5>
									<hr>

									<div
										class="d-flex justify-content-between align-items-center mb-4">
										<div>
											<p class="mb-1">Giỏ hàng</p>
											<p class="mb-0">Bạn có 4 mặt hàng trong giỏ hàng của mình</p>
										</div>
										<div>
											<p class="mb-0">
												<span class="text-muted">Sắp xếp theo:</span> <a href="#!"
													class="text-body">Giá <i
													class="fas fa-angle-down mt-1"></i></a>
											</p>
										</div>
									</div>

									<div class="card mb-3">
										<div class="card-body">
											<div class="d-flex justify-content-between">
												<div class="d-flex flex-row align-items-center">
													<div>
														<img
															src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img1.webp"
															class="img-fluid rounded-3" alt="Shopping item"
															style="width: 65px;">
													</div>
													<div class="ms-3">
														<h5>Iphone 11 pro</h5>
														<p class="small mb-0">256GB, Xanh hải quân</p>
													</div>
												</div>
												<div class="d-flex flex-row align-items-center">
													<div style="width: 50px;">
														<h5 class="fw-normal mb-0">2</h5>
													</div>
													<div style="width: 80px;">
														<h5 class="mb-0">$900</h5>
													</div>
													<a href="#!" style="color: #cecece;"><i
														class="fas fa-trash-alt"></i></a>
												</div>
											</div>
										</div>
									</div>

									<div class="card mb-3">
										<div class="card-body">
											<div class="d-flex justify-content-between">
												<div class="d-flex flex-row align-items-center">
													<div>
														<img
															src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img2.webp"
															class="img-fluid rounded-3" alt="Shopping item"
															style="width: 65px;">
													</div>
													<div class="ms-3">
														<h5>Samsung galaxy Note 10</h5>
														<p class="small mb-0">256GB, Xanh hải quân</p>
													</div>
												</div>
												<div class="d-flex flex-row align-items-center">
													<div style="width: 50px;">
														<h5 class="fw-normal mb-0">2</h5>
													</div>
													<div style="width: 80px;">
														<h5 class="mb-0">$900</h5>
													</div>
													<a href="#!" style="color: #cecece;"><i
														class="fas fa-trash-alt"></i></a>
												</div>
											</div>
										</div>
									</div>

									<div class="card mb-3">
										<div class="card-body">
											<div class="d-flex justify-content-between">
												<div class="d-flex flex-row align-items-center">
													<div>
														<img
															src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img3.webp"
															class="img-fluid rounded-3" alt="Shopping item"
															style="width: 65px;">
													</div>
													<div class="ms-3">
														<h5>Canon EOS M50</h5>
														<p class="small mb-0">Onyx Black</p>
													</div>
												</div>
												<div class="d-flex flex-row align-items-center">
													<div style="width: 50px;">
														<h5 class="fw-normal mb-0">1</h5>
													</div>
													<div style="width: 80px;">
														<h5 class="mb-0">$1199</h5>
													</div>
													<a href="#!" style="color: #cecece;"><i
														class="fas fa-trash-alt"></i></a>
												</div>
											</div>
										</div>
									</div>

									<div class="card mb-3 mb-lg-0">
										<div class="card-body">
											<div class="d-flex justify-content-between">
												<div class="d-flex flex-row align-items-center">
													<div>
														<img
															src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img4.webp"
															class="img-fluid rounded-3" alt="Shopping item"
															style="width: 65px;">
													</div>
													<div class="ms-3">
														<h5>MacBook Pro</h5>
														<p class="small mb-0">1TB, Graphite</p>
													</div>
												</div>
												<div class="d-flex flex-row align-items-center">
													<div style="width: 50px;">
														<h5 class="fw-normal mb-0">1</h5>
													</div>
													<div style="width: 80px;">
														<h5 class="mb-0">$1799</h5>
													</div>
													<a href="#!" style="color: #cecece;"><i
														class="fas fa-trash-alt"></i></a>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div class="col-lg-5">

									<div class="card bg-primary text-white rounded-3">
										<div class="card-body">
											<div
												class="d-flex justify-content-between align-items-center mb-4">
												<h5 class="mb-0">Chi tiết thẻ</h5>
												<img
													src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-6.webp"
													class="img-fluid rounded-3" style="width: 45px;"
													alt="Avatar">
											</div>

											<p class="small mb-2">Loại thẻ</p>
											<a href="#!" type="submit" class="text-white"><i
												class="fab fa-cc-mastercard fa-2x me-2"></i></a> <a href="#!"
												type="submit" class="text-white"><i
												class="fab fa-cc-visa fa-2x me-2"></i></a> <a href="#!"
												type="submit" class="text-white"><i
												class="fab fa-cc-amex fa-2x me-2"></i></a> <a href="#!"
												type="submit" class="text-white"><i
												class="fab fa-cc-paypal fa-2x"></i></a>

											<form class="mt-4">
												<div data-mdb-input-init
													class="form-outline form-white mb-4">
													<input type="text" id="typeName"
														class="form-control form-control-lg" siez="17"
														placeholder="Lương Luyện" /> <label
														class="form-label" for="typeName">Tên chủ thẻ</label>
												</div>

												<div data-mdb-input-init
													class="form-outline form-white mb-4">
													<input type="text" id="typeText"
														class="form-control form-control-lg" siez="17"
														placeholder="1234 5678 9012 3457" minlength="19"
														maxlength="19" /> <label class="form-label"
														for="typeText">Số thẻ</label>
												</div>

												<div class="row mb-4">
													<div class="col-md-6">
														<div data-mdb-input-init class="form-outline form-white">
															<input type="text" id="typeExp"
																class="form-control form-control-lg"
																placeholder="MM/YYYY" size="7" id="exp" minlength="7"
																maxlength="7" /> <label class="form-label"
																for="typeExp">Hết hạn</label>
														</div>
													</div>
													<div class="col-md-6">
														<div data-mdb-input-init class="form-outline form-white">
															<input type="password" id="typeText"
																class="form-control form-control-lg"
																placeholder="&#9679;&#9679;&#9679;" size="1"
																minlength="3" maxlength="3" /> <label
																class="form-label" for="typeText">Mã PIN</label>
														</div>
													</div>
												</div>

											</form>

											<hr class="my-4">

											<div class="d-flex justify-content-between">
												<p class="mb-2">Tổng</p>
												<p class="mb-2">$ 4798.00</p>
											</div>

											<div class="d-flex justify-content-between">
												<p class="mb-2">Vận chuyển</p>
												<p class="mb-2">$ 20.00</p>
											</div>

											<div class="d-flex justify-content-between mb-4">
												<p class="mb-2">Tổng cộng(Bao gồm thuế)</p>
												<p class="mb-2">$ 4818.00</p>
											</div>

											<button type="button" data-mdb-button-init
												data-mdb-ripple-init class="btn btn-info btn-block btn-lg">
												<div class="d-flex justify-content-between">
													<span>$ 4818.00</span><span> Thanh toán <i
														class="fas fa-long-arrow-alt-right ms-2"></i></span>
												</div>
											</button>

										</div>
									</div>

								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>