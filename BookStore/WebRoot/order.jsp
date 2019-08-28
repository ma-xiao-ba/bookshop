<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>管理员端</title>
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
}

</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- pignose css -->
<link href="css/pignose.layerslider.css" rel="stylesheet"
	type="text/css" media="all" />


<!-- //pignose css -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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

<script src="js/jquery.easing.min.js">
	
</script>





<script type="text/javascript" src="js/Popt.js">
	
</script>
<script type="text/javascript" src="js/city.json.js">
	
</script>
<script type="text/javascript" src="js/citySet.js">
	
</script>

<style type="text/css">
._citys {
	width: 450px;
	display: inline-block;
	border: 2px solid #eee;
	padding: 5px;
	position: relative;
}

._citys span {
	color: #05920a;
	height: 15px;
	width: 15px;
	line-height: 15px;
	text-align: center;
	border-radius: 3px;
	position: absolute;
	right: 10px;
	top: 10px;
	border: 1px solid #05920a;
	cursor: pointer;
}

._citys0 {
	width: 95%;
	height: 34px;
	line-height: 34px;
	display: inline-block;
	border-bottom: 2px solid #05920a;
	padding: 0px 5px;
	font-size: 14px;
	font-weight: bold;
	margin-left: 6px;
}

._citys0 li {
	display: inline-block;
	line-height: 34px;
	font-size: 15px;
	color: #888;
	width: 80px;
	text-align: center;
	cursor: pointer;
}

._citys1 {
	width: 100%;
	display: inline-block;
	padding: 10px 0;
}

._citys1 a {
	width: 83px;
	height: 35px;
	display: inline-block;
	background-color: #f5f5f5;
	color: #666;
	margin-left: 6px;
	margin-top: 3px;
	line-height: 35px;
	text-align: center;
	cursor: pointer;
	font-size: 12px;
	border-radius: 5px;
	overflow: hidden;
}

._citys1 a:hover {
	color: #fff;
	background-color: #05920a;
}

.AreaS {
	background-color: #05920a !important;
	color: #fff !important;
}
</style>









</head>
<body>
	<!--header-bot -->
	<div class="header-bot">
		<div class="container">
			<div class="col-md-3 header-left">
				<h1>
					<a href="index.html"><img src="images/logo3.jpg"></a>
				</h1>
			</div>
			<div class="col-md-6 header-middle">
				<form action="queryBooksByName.action">
					<div class="search">
						<input name="bname" type="search" value="查找"
							onFocus="this.value = '';"
							onBlur="if (this.value == '') {this.value = '查找';}" required="">
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
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse menu--shylock"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav menu__list">
								<li class="active menu__item menu__item--current"><a
									class="menu__link" href="first.jsp">主页 <span
										class="sr-only">(current)</span></a></li>
								<li class="dropdown menu__item"><a href="#"
									class="dropdown-toggle menu__link" data-toggle="dropdown"
									role="button" aria-haspopup="true" aria-expanded="false">图书分类<span
										class="caret"></span></a>
									<ul class="dropdown-menu">
										<div>
											<div class="col-sm-10 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a href="queryBooksByType.action?btname=.">所有分类</a></li>

													<c:forEach items="${queryBookType}" var="bt">
														<li><a
															href="queryBooksByType.action?btname=${bt.btname}">${bt.btname}</a></li>
													</c:forEach>
													<li><a href="">其他</a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<li class=" menu__item"><a class="menu__link"
									href="queryOrder.action?uname=zhangsan">查看订单</a></li>
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
								<span class="simpleCart_total"></span> (<span
									id="simpleCart_quantity" class="simpleCart_quantity"></span> 件)
							</div>
						</h3>
					</a>
					<p>
						<a href="queryShoppingCarts.action" class="simpleCart_empty">购物车</a>
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
					<li><img class="img-responsive" src="images/show/ba1.jpg"
						alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="images/show/ba2.jpg"
						alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="images/show/ba3.jpg"
						alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="images/show/ba4.jpg"
						alt="Dummy Image" /></li>
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

	<br />
	<div class="product-easy">
		<div class="container">
			<div class="sap_tabs">
				<div id="horizontalTab"
					style="display: block; width: 100%; margin: 0px;">
					<table id="ordermanage" class="timetable_sub">
						<thead>
							<tr>
								<th>订单编号</th>
								<th>下单时间</th>
								<th>地址</th>
								<th>备注信息</th>
								<th>状态</th>
								<th>详情</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${orders}" var="ods">
								<form action="modifyOrder.action" method="post">
									<tr>
										<td>${ods.oisbn}</td>
										<td>${ods.odate}</td>
										<td>${ods.oaddr}</td>
										<td>${ods.omark}</td>
										<td>
											<div>
												<c:if test="${ods.ostate==0}">
													未发货
												</c:if>
												<c:if test="${ods.ostate==1}">
													已发货
												</c:if>
												<c:if test="${ods.ostate==2}">
													已收货
												</c:if>
											</div>
										</td>
										<td><a href="queryOrderByIsbn.action?oisbn=${ods.oisbn}">详情</a>
										</td>
										<td>
											<div>
												<c:if test="${ods.ostate==0}">
													<a href="javascript:return false;" class="btn btn-warning"
														style="background-color: #C0C0C0">未发货</a>
												</c:if>
												<c:if test="${ods.ostate==1}">
													<a
														href="changeState.action?ostate=2&oid=${ods.oid}&uname=zhangsan"
														class="btn btn-warning">确认收货</a>
												</c:if>
												<c:if test="${ods.ostate==2}">
													<a href="javascript:return false;" class="btn btn-warning"
														style="background-color: #C0C0C0">已收货</a>
												</c:if>

											</div>
										</td>

									</tr>
								</form>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- //图书管理表格 -->







	<!-- 版权 -->
	<div class="footer">
		<div class="container">
			<p class="copy-right">Copyright &copy; 2019. IMU All rights
				reserved.</p>
		</div>
	</div>
	<!-- //版权 -->

</body>
</html>
