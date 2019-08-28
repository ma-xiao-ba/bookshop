<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>购物车</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pignose css -->
<link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />


<!-- //pignose css -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart -->
	<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
<script src="js/jquery.easing.min.js"></script>
</head>
<body>

<!--header-bot -->
<div class="header-bot">
	<div class="container">
		<div class="col-md-3 header-left">
			<h1><a href="index.html"><img src="images/logo3.jpg"></a></h1>
		</div>
		<div class="col-md-6 header-middle">
			<form action="queryBooksByName.action">
				<div class="search">
					<input name="bname" type="search" value="查找" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '查找';}"
					 required="">
				</div>
				
				<div class="sear-sub">
					<input type="submit" value=" ">
				</div>
				<div class="clearfix"></div>
			</form>
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
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						 aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav menu__list">
							<li class="active menu__item menu__item--current"><a class="menu__link" href="first.jsp">主页 <span class="sr-only">(current)</span></a></li>
							<li class="dropdown menu__item">
								<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">图书分类<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<div>
										<div class="col-sm-10 multi-gd-img">
											<ul class="multi-column-dropdown">
												<li><a href="queryBooksByType.action?btname=.">所有分类</a></li>
												
												<c:forEach items="${queryBookType}" var="bt">
													<li><a href="queryBooksByType.action?btname=${bt.btname}">${bt.btname}</a></li>
												</c:forEach>
												<li><a href="">其他</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							<li class=" menu__item"><a class="menu__link" href="queryOrder.action?uname=zhangsan">查看订单</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="top_nav_right">
			<div class="cart box_1">
				<a href="queryShoppingCarts.action">
					<h3>
						<div class="total">
							<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
							<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> 件)</div>
					</h3>
				</a>
				<p><a href="queryShoppingCarts.action" class="simpleCart_empty">购物车</a></p>

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
				<li><img class="img-responsive" src="images/show/ba1.jpg" alt="Dummy Image" /></li>
				<li><img class="img-responsive" src="images/show/ba2.jpg" alt="Dummy Image" /></li>
				<li><img class="img-responsive" src="images/show/ba3.jpg" alt="Dummy Image" /></li>
				<li><img class="img-responsive" src="images/show/ba4.jpg" alt="Dummy Image" /></li>
			</ul>

			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<script type="text/javascript" src="js/pignose.layerslider.js"></script>
	<script type="text/javascript">
		//<![CDATA[
		$(window).load(function() {
			$('#visual').pignoseLayerSlider({
				play: '.btn-play',
				pause: '.btn-pause',
				next: '.btn-next',
				prev: '.btn-prev'
			});
		});
		//]]>
	</script>

</div>
<!-- //banner -->


<!-- 购物车 -->
<div class="checkout">
	<div class="container">
		<h3></h3>
		<div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">	
		<form id="FORM" action="getCartId.action">
		<table class="timetable_sub">
			<thead>
				<tr>
					<th>选择</th>
					<th>图书</th>
					<th>数量</th>
					<th>书名</th>
					<th>价格</th>
					<th>&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;</th>
				</tr>
			</thead>
			<c:forEach items="${shoppingCarts}" var="shoppingCarts">
				<tr class="rem1">
					<td>
						<div class="ckbox">
							<input class="cid123" name="F_IsMenu" type="checkbox" value="${shoppingCarts.cid}">
						</div>
					</td>
					<td class="invert-image"><img src="${shoppingCarts.bimage}" alt=" " class="img-responsive" /></td>
					<td class="invert">
						<div class="quantity">
							<div class="quantity-select">
								<div class="entry value-minus">&nbsp;</div>
								<div class="entry value" ><span class="number">${shoppingCarts.cnumber}</span></div>
								<div class="entry value-plus active">&nbsp;</div>
							</div>
						</div>
					</td>
						<td class="invert">${shoppingCarts.bname}</td>
						<td class="invert">${shoppingCarts.bprice }</td>
						<td class="invert">
							<div class="rem">
								<div class="close1"> </div>
							</div>
						</td>
				</tr>
			</c:forEach>
				<!--quantity-->
					<script>
						$('.close1').on('click', function() {
							$(this).parent().parent().parent().remove();
							var id=$(this).parent().parent().parent().find('.cid123');
							alert(id[0].value);
							$.get("removeShoppingCart.action?cid="+id[0].value,function(){
							});
						});
						$('.value-plus').on('click', function() {
							var divUpd = $(this).parent().find('.value'),
								newVal = parseInt(divUpd.text(), 10) + 1;
							divUpd.text(newVal);
							var id=$(this).parent().parent().parent().parent().find('.cid123');
							$.get("updateShoppingCarts.action?cid="+id[0].value+"&number="+newVal,function(){
							});
						});

						$('.value-minus').on('click', function() {
							var divUpd = $(this).parent().find('.value'),
								newVal = parseInt(divUpd.text(), 10) - 1;
							if (newVal >= 1) {
								divUpd.text(newVal);
								var id=$(this).parent().parent().parent().parent().find('.cid123');
								$.get("updateShoppingCarts.action?cid="+id[0].value+"&number="+newVal,function(){
								});
							}
						});
					</script>
				<!--quantity-->
			</table>
		</form>
		</div>
		<div class="checkout-left">	
				<div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
					<script>
						function sub(){
							$("#FORM").submit();						
						}
					</script>
					<a onclick="sub()"><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>去结算</a>
				</div>
			
			</div>
	</div>
</div>	
<!-- //购物车 -->



<!-- 版权 -->
<div class="footer">
	<div class="container">
		<p class="copy-right">Copyright &copy; 2019. IMU All rights reserved.</p>
	</div>
</div>
<!-- //版权 -->


<!-- 登录 -->
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
							<div class="login-grids">
								<div class="login">
									<div class="login-bottom">
										<h3>注册</h3>
										<form>
											<div class="sign-up">
												<h4>用户名:</h4>
												<input type="text" value="用户名" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '用户名';}" required="">	
											</div>
											<div class="sign-up">
												<h4>密码 :</h4>
												<input type="password" value="Password" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="sign-up">
												<h4>Re-type Password :</h4>
												<input type="password" value="Password" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="sign-up">
												<input type="submit" value="注册" >
											</div>
											
										</form>
									</div>
									<div class="login-right">
										<h3>登录</h3>
										<form>
											<div class="sign-in">
												<h4>用户名 :</h4>
												<input type="text" value="账号" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '用户名';}" required="">	
											</div>
											<div class="sign-in">
												<h4>密码 :</h4>
												<input type="password" value="Password" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Password';}" required="">
												<a href="#">忘记密码?</a>
											</div>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>记住我.</label>
											</div>
											<div class="sign-in">
												<input type="submit" value="登录" >
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
<!-- //登录 -->
</body>
</html>
