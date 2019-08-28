<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
		 rel='stylesheet' type='text/css'>
		<script src="js/jquery.easing.min.js"></script>

		<script type="text/javascript" src="js/Popt.js"></script>
		<script type="text/javascript" src="js/city.json.js"></script>
		<script type="text/javascript" src="js/citySet.js"></script>

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
		<!-- header-bot -->
		<div class="header-bot">
			<div class="container">
				<div class="col-md-3 header-left">
					<h1><a href="index.html"><img src="images/logo3.jpg"></a></h1>
				</div>
				<div class="col-md-6 header-middle">
					<form>
						<div class="search">
							<input type="search" value="查找" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '查找';}"
							 required="">
						</div>
						<div class="section_room">
							<select id="country" onChange="change_country(this.value)" class="frm-field required">
								<option value="null">所有分类</option>
								<option value="null">少儿</option>
								<option value="AX">IT</option>
								<option value="AX">教育</option>
								<option value="AX">经济管理</option>
								<option value="AX">体育</option>
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
						<li><a href="#" class="use1" data-toggle="modal" data-target="#myModal4"><span>Login</span></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //header-bot -->

		<!-- 标题栏 -->
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
									<li class="active menu__item menu__item--current"><a class="menu__link" href="bookmanage.html">图书管理<span class="sr-only">(current)</span></a></li>
									<li class=" menu__item"><a class="menu__link" href="booktypemanage.html">分类管理</a></li>
									<li class="dropdown menu__item">
										<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true"
										 aria-expanded="false">订单管理<span class="caret"></span></a>
										<ul class="dropdown-menu multi-column">
											<div class="row">
												<div class="col-sm-7 multi-gd-img">
													<ul class="multi-column-dropdown">
														<li><a href="#">&nbsp;&nbsp;待处理订单</a></li>
														<li><a href="#">&nbsp;&nbsp;已发货订单</a></li>
													</ul>
												</div>
											</div>
										</ul>
									</li>
								</ul>

							</div>

						</div>
					</nav>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //标题栏 -->


		<br />
		<!-- 图书管理表格 -->
		<div class="product-easy">
			<div class="container">
				<div class="sap_tabs">
					<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						
						<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">添加</button>
						<br /><br />
						
						<!-- 弹出层 -->
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<h4 class="modal-title" id="exampleModalLabel">图书添加</h4>
									</div>
									<div class="modal-body">
										<form action="addbook.action" enctype="multipart/form-data" method="post">	
											<input type="hidden" name="bid" value=""/>
											<div class="form-group">
												<label for="recipient-name" class="control-label">书名</label>
												<input type="text" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">作者</label>
												<input type="text" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">出版社</label>
												<input type="text" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">分类</label>
												<select class="frm-field required">
													<option value="null">所有分类</option>
													<option value="null">少儿</option>
													<option value="AX">IT</option>
													<option value="AX">教育</option>
													<option value="AX">经济管理</option>
													<option value="AX">体育</option>
												</select>
												
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">数量</label>
												<input type="text" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">图片</label>
												<input type="file" name="file" lass="p"/>ss
											</div>
											
											<div class="form-group">
												<label for="message-text" class="control-label">简介</label>
												<textarea class="form-control" id="message-text"></textarea>
											</div>
											
											<div class="modal-footer">
												<button type="submit" id="addormodify" class="btn btn-primary">添加</button>
												<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
											</div>
											
										</form>
									</div>
									
								</div>
							</div>
						</div>
						<table id="bookmanage" class="table table-striped table-hover table-bordered">
							<thead>
								<tr>
									<th>编号</th>
									<th>类型</th>
									<th>图片</th>
									<th>库存</th>
									<th>销量</th>
									<th>修改</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="vertical-align: middle !important; al">
										<p>1258922632852245</p>
									</td>
									<td style="vertical-align: middle !important;">IT</td>
									<td style="vertical-align: middle !important;"><img src="images/book/book_01.gif" /> </td>
									<td style="vertical-align: middle !important;">13</td>
									<td style="vertical-align: middle !important;">50</td>
									<td style="vertical-align: middle !important;">
										<button class="btn btn-default">修改</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- //图书管理表格 -->


		<table id="typemanage" style="display: none;" class="timetable_sub">
			<thead>
				<tr>
					<th>分类名称</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>色情</td>
					<td><button type="button">修改</button></td>
				</tr>
			</tbody>
		</table>

		<table id="ordermanage" style="display: none;" class="timetable_sub">
			<thead>
				<tr>
					<th>操作</th>
					<th>订单编号</th>
					<th>下单时间</th>
					<th>总价格</th>
					<th>书名</th>
					<th>图片</th>
					<th>单价</th>
					<th>数量</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>色情</td>
					<td>色情</td>
					<td>色情</td>
					<td>色情</td>
					<td>色情</td>
					<td><img src="images/book/book_01.gif"/> </td>
					<td><span>￥</span>500</td>
					<td><button type="button">修改</button></td>
				</tr>
			</tbody>
		</table>


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
											<input type="text" value="用户名" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '用户名';}"
											 required="">
										</div>
										<div class="sign-up">
											<h4>密码 :</h4>
											<input type="password" value="Password" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Password';}"
											 required="">

										</div>
										<div class="sign-up">
											<h4>Re-type Password :</h4>
											<input type="password" value="Password" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Password';}"
											 required="">

										</div>
										<div class="sign-up">
											<input type="submit" value="注册">
										</div>

									</form>
								</div>
								<div class="login-right">
									<h3>登录</h3>
									<form>
										<div class="sign-in">
											<h4>用户名 :</h4>
											<input type="text" value="账号" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '用户名';}"
											 required="">
										</div>
										<div class="sign-in">
											<h4>密码 :</h4>
											<input type="password" value="Password" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Password';}"
											 required="">
											<a href="#">忘记密码?</a>
										</div>
										<div class="single-bottom">
											<input type="checkbox" id="brand" value="">
											<label for="brand"><span></span>记住我.</label>
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
		<!-- //登录 -->


	</body>
</html>
