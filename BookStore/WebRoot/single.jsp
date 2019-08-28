<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
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

<script src="js/jquery.easing.min.js"></script>
<script>
$(function() {
		$(".footerpage").load("footer.html");
	});
</script>
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


<div class="single">
	<div class="container">
		<div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
			<div class="grid images_3_of_2">
				<div class="flexslider">

					<div class="thumb-image"> <img src="${book.bimage}" data-imagezoom="true" class="img-responsive"> </div>

					<div class="clearfix"></div>
				</div>	
			</div>
		</div>
		<div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
					<script type="text/javascript">
						function addcart(){
							var number=document.getElementById("number");
							window.location.href='addCart.action?uname=zhangsan'+'&bid='+${book.bid}+'&cnumber='+number.value;
						}
					</script>
					
					<h3>${book.bname}</h3>
					<p><span class="item_price">${book.bprice}</span></p>
					<div class="description">
						<h5>请填写购买数量</h5>
						<input type="number" value="1" required="" name="number" id="number">
					</div>	
					<br/>
					<div class="occasion-cart">
						<a onclick="addcart()" class="item_add hvr-outline-out button2" >Add to cart</a>
					</div>
									
		</div>
				<div class="clearfix"> </div>

				<div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">图书简介</a></li>
							
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
								<h5>${book.bname}</h5>
								<p>作者：${book.bauthor}
									<span>${book.bcontent}</span></p>
							</div>
							<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile" aria-labelledby="profile-tab">
								<div class="bootstrap-tab-text-grids">
									<div class="bootstrap-tab-text-grid">
										<div class="bootstrap-tab-text-grid-left">
											<img src="images/men3.jpg" alt=" " class="img-responsive">
										</div>
										<div class="bootstrap-tab-text-grid-right">
											<ul>
												<li><a href="#">Admin</a></li>
												<li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>Reply</a></li>
											</ul>
											<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
												suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem 
												vel eum iure reprehenderit.</p>
										</div>
										<div class="clearfix"> </div>
									</div>
									
									<div class="add-review">
										<h4>add a review</h4>
										<form>
											<input type="text" value="Name" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Name';}" required="">
											<input type="email" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}" required="">
											
											<textarea type="text" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
											<input type="submit" value="SEND">
										</form>
									</div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown1" aria-labelledby="dropdown1-tab">
								<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
							</div>
							<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown2" aria-labelledby="dropdown2-tab">
								<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
							</div>
						</div>
					</div>
				</div>
	</div>
</div>
<!-- //single -->



<div class="footerpage"></div>
</body>
</html>