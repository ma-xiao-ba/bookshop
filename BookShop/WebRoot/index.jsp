<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>主页</title>
		<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript">
addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
	window.scrollTo(0, 1);
}</script>
		<!-- //for-mobile-apps -->
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
			media="all" />
		<!-- pignose css -->
		<link href="css/pignose.layerslider.css" rel="stylesheet"
			type="text/css" media="all" />


		<!-- //pignose css -->
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
		<!-- js -->
		<script type="text/javascript" src="js/jquery-2.1.4.min.js">
</script>
		<!-- //js -->
		<!-- cart -->
		<script src="js/simpleCart.min.js">
</script>
		<!-- cart -->
		<!-- for bootstrap working -->
		<script type="text/javascript" src="js/bootstrap-3.1.1.min.js">
</script>
		<!-- //for bootstrap working -->
		<link href='http://fonts.useso.com/css?family=Montserrat:400,700'
			rel='stylesheet' type='text/css'>
		<link
			href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
			rel='stylesheet' type='text/css'>
		<script src="js/jquery.easing.min.js">
</script>
	</head>
	<body>
		<!-- header-bot -->
		<div class="header-bot">
			<div class="container">
				<div class="col-md-3 header-left">
					<h1>
						<a href="index.html"><img src="images/logo3.jpg">
						</a>
					</h1>
				</div>
				<div class="col-md-6 header-middle">
					<form>
						<div class="search">
							<input type="search" value="查找" onFocus="this.value = '';"
								onBlur="if (this.value == '') {this.value = '查找';}" required="">
						</div>
						<div class="section_room">
							<select id="country" onChange="change_country(this.value)"
								class="frm-field required">
								<option value="null">
									所有分类
								</option>
								<option value="null">
									少儿
								</option>
								<option value="AX">
									IT
								</option>
								<option value="AX">
									教育
								</option>
								<option value="AX">
									经济管理
								</option>
								<option value="AX">
									体育
								</option>
							</select>
						</div>
						<div class="sear-sub">
							<input type="submit" value=" ">
						</div>
						<div class="clearfix"></div>
					</form>
				</div>
				<div class="col-md-3 header-right footer-bottom">
					<ul>
						<div style="width:130px;height:33px;background-color:red;position:relative;float:left;margin-top:5px;margin-left:10px">
						<li style="float: left">
						欢迎：${user.uname}
						</li>
						</div>
						<li>
							<a href="login.jsp" class="use1" ><span>Login</span>
							</a>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //header-bot -->

		<!-- banner -->
		<div class="ban-top">
			<div class="container">
				<div class="top_nav_left">
					<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse menu--shylock"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav menu__list">
								<li class="active menu__item menu__item--current">
									<a class="menu__link" href="index.html">主页 <span
										class="sr-only">(current)</span>
									</a>
								</li>
								<li class="dropdown menu__item">
									<a href="#" class="dropdown-toggle menu__link"
										data-toggle="dropdown" role="button" aria-haspopup="true"
										aria-expanded="false">图书分类<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<div>
											<div class="col-sm-10 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li>
														<a href="bookList.html">所有分类</a>
													</li>
													<li>
														<a href="mens.html">教育</a>
													</li>
													<li>
														<a href="mens.html">计算机</a>
													</li>
													<li>
														<a href="mens.html">经济管理</a>
													</li>
													<li>
														<a href="mens.html">哲学</a>
													</li>
													<li>
														<a href="mens.html">历史</a>
													</li>
													<li>
														<a href="mens.html">诗词</a>
													</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul>
								</li>
								<li class=" menu__item">
									<a class="menu__link" href="contact.html">查看订单</a>
								</li>
							</ul>
						</div>
					</div>
					</nav>
				</div>
				<div class="top_nav_right">
					<div class="cart box_1">
						<a href="cart.html">
							<h3>
								<div class="total">
									<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
									<span class="simpleCart_total"></span> (
									<span id="simpleCart_quantity" class="simpleCart_quantity"></span>
									件)
								</div>
							</h3> </a>
						<p>
							<a href="javascript:;" class="simpleCart_empty">购物车</a>
						</p>

					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //banner-top -->


		<!-- 图片轮播 -->
		<!-- banner -->
		<div class="banner-grid">
			<div id="visual">
				<div class="slide-visual">
					<!-- Slide Image Area (1000 x 424) -->
					<ul class="slide-group">
						<li>
							<img class="img-responsive" src="images/ba1.jpg"
								alt="Dummy Image" />
						</li>
						<li>
							<img class="img-responsive" src="images/ba2.jpg"
								alt="Dummy Image" />
						</li>
						<li>
							<img class="img-responsive" src="images/ba3.jpg"
								alt="Dummy Image" />
						</li>
					</ul>

					<!-- Slide Description Image Area (316 x 328) -->
					<div class="script-wrap">
						<ul class="script-group">
							<li>
								<div class="inner-script">
									<img class="img-responsive" src="images/baa1.jpg"
										alt="Dummy Image" />
								</div>
							</li>
							<li>
								<div class="inner-script">
									<img class="img-responsive" src="images/baa2.jpg"
										alt="Dummy Image" />
								</div>
							</li>
							<li>
								<div class="inner-script">
									<img class="img-responsive" src="images/baa3.jpg"
										alt="Dummy Image" />
								</div>
							</li>
						</ul>
						<div class="slide-controller">
							<a href="#" class="btn-prev"><img src="images/btn_prev.png"
									alt="Prev Slide" />
							</a>
							<a href="#" class="btn-play"><img src="images/btn_play.png"
									alt="Start Slide" />
							</a>
							<a href="#" class="btn-pause"><img src="images/btn_pause.png"
									alt="Pause Slide" />
							</a>
							<a href="#" class="btn-next"><img src="images/btn_next.png"
									alt="Next Slide" />
							</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<script type="text/javascript" src="js/pignose.layerslider.js">
</script>
			<script type="text/javascript">
//<![CDATA[
$(window).load(function() {
	$('#visual').pignoseLayerSlider( {
		play : '.btn-play',
		pause : '.btn-pause',
		next : '.btn-next',
		prev : '.btn-prev'
	});
});
//]]>
</script>

		</div>
		<!-- //banner -->
		<!-- product-nav -->

		<div class="product-easy">
			<div class="container">

				<script src="js/easyResponsiveTabs.js" type="text/javascript">
</script>
				<script type="text/javascript">
$(document).ready(function() {
	$('#horizontalTab').easyResponsiveTabs( {
		type : 'default', //Types: default, vertical, accordion           
		width : 'auto', //auto or any width like 600px
		fit : true
	// 100% fit in a container
			});
});
</script>
				<div class="sap_tabs">
					<div id="horizontalTab"
						style="display: block; width: 100%; margin: 0px;">
						<ul class="resp-tabs-list">
							<li class="resp-tab-item" aria-controls="tab_item-0" role="tab">
								<span>最新图书</span>
							</li>
							<li class="resp-tab-item" aria-controls="tab_item-1" role="tab">
								<span>最热图书</span>
							</li>
						</ul>

						<div class="resp-tabs-container">
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
								<div class="col-md-3 product-men">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/a1.png" alt="" class="pro-image-front">
											<img src="images/a1.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">Hot</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Air Tshirt Black</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$45.99</span>
												<del>
													$69.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/a8.png" alt="" class="pro-image-front">
											<img src="images/a8.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">Hot</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Next Blue Blazer</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$99.99</span>
												<del>
													$109.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/a3.png" alt="" class="pro-image-front">
											<img src="images/a3.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">Hot</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Air Tshirt Black </a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$119.99</span>
												<del>
													$120.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/a4.png" alt="" class="pro-image-front">
											<img src="images/a4.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">Hot</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Maroon Puma Tshirt</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$79.99</span>
												<del>
													$120.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men yes-marg">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/a5.png" alt="" class="pro-image-front">
											<img src="images/a5.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">Hot</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Multicoloured TShirts</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$129.99</span>
												<del>
													$150.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men yes-marg">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/a6.png" alt="" class="pro-image-front">
											<img src="images/a6.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">Hot</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Air Tshirt Black </a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$129.99</span>
												<del>
													$150.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men yes-marg">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/a7.png" alt="" class="pro-image-front">
											<img src="images/a7.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">Hot</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Dresses</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$129.99</span>
												<del>
													$150.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
								<div class="col-md-3 product-men">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/w1.png" alt="" class="pro-image-front">
											<img src="images/w1.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Wedges</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$45.99</span>
												<del>
													$69.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/w2.png" alt="" class="pro-image-front">
											<img src="images/w2.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Sandals</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$45.99</span>
												<del>
													$69.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/mw1.png" alt="" class="pro-image-front">
											<img src="images/mw1.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Casual Shoes</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$45.99</span>
												<del>
													$69.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/mw3.png" alt="" class="pro-image-front">
											<img src="images/mw3.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Sport Shoes</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$45.99</span>
												<del>
													$69.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men yes-marg">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/ep2.png" alt="" class="pro-image-front">
											<img src="images/ep2.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Watches</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$45.99</span>
												<del>
													$69.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2">Add
												to cart</a>
										</div>
									</div>
								</div>
								<div class="col-md-3 product-men yes-marg">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item">
											<img src="images/ep3.png" alt="" class="pro-image-front">
											<img src="images/ep3.png" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick
														View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>

										</div>
										<div class="item-info-product ">
											<h4>
												<a href="single.html">Watches</a>
											</h4>
											<div class="info-product-price">
												<span class="item_price">$45.99</span>
												<del>
													$69.71
												</del>
											</div>
											<a href="#"
												class="item_add single-item hvr-outline-out button2"></a>
										</div>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //product-nav -->

		<!-- footer -->
		<div class="footer">
			<div class="container">
				<p class="copy-right">
					Copyright &copy; 2019. IMU All rights reserved.
				</p>
			</div>
		</div>
		<!-- //footer -->


		<!-- login -->
		<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-info">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body modal-spa">
						<div class="login-grids">
							<div class="login">
								<div class="login-bottom">
									<h3>
										注册
									</h3>
									<form>
										<div class="sign-up">
											<h4>
												用户名:
											</h4>
											<input type="text" value="用户名" onFocus="this.value = '';"
												onBlur="if (this.value == '') {this.value = '用户名';}"
												required="">
										</div>
										<div class="sign-up">
											<h4>
												密码 :
											</h4>
											<input type="password" value="Password"
												onFocus="this.value = '';"
												onBlur="if (this.value == '') {this.value = 'Password';}"
												required="">

										</div>
										<div class="sign-up">
											<h4>
												Re-type Password :
											</h4>
											<input type="password" value="Password"
												onFocus="this.value = '';"
												onBlur="if (this.value == '') {this.value = 'Password';}"
												required="">

										</div>
										<div class="sign-up">
											<input type="submit" value="注册">
										</div>

									</form>
								</div>
								<div class="login-right">
									<h3>
										登录
									</h3>
									<form>
										<div class="sign-in">
											<h4>
												用户名 :
											</h4>
											<input type="text" value="账号" onFocus="this.value = '';"
												onBlur="if (this.value == '') {this.value = '用户名';}"
												required="">
										</div>
										<div class="sign-in">
											<h4>
												密码 :
											</h4>
											<input type="password" value="Password"
												onFocus="this.value = '';"
												onBlur="if (this.value == '') {this.value = 'Password';}"
												required="">
											<a href="#">忘记密码?</a>
										</div>
										<div class="single-bottom">
											<input type="checkbox" id="brand" value="">
											<label for="brand">
												<span></span>记住我.
											</label>
										</div>
										<div class="sign-in">
											<input type="submit" value="登录">
										</div>
									</form>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //login -->


	</body>
</html>
