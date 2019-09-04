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

	
<script type="text/javascript">
	function setVal(val){
		document.getElementById("misbn").value=val;
	}
</script>




	</head>
	<body>
		<!-- header-bot -->
		<div class="header-bot">
			<div class="container">
				<div class="col-md-3 header-left">
					<h1><a href="index.html"><img src="images/logo3.jpg"></a></h1>
				</div>
				<div class="col-md-6 header-middle">
					
				</div>
				<div class="col-md-3 header-right footer-bottom">
					<ul>
						<c:if test="${user!=null}">
							<div style="width:130px;height:33px;position:relative;float:left;margin-top:5px;margin-left:10px">
							
								<li style="float: left">
								欢迎：${user.uname}<a href="logout.action">注销</a>
								</li>

							</div>
						
						</c:if>
						<c:if test="${user==null}">
							<li>
								<a href="login.jsp" class="use1" >
								</a>
							</li>
						</c:if>
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
									<li class="active menu__item menu__item--current"><a class="menu__link" href="adminQueryBook.action">图书管理<span class="sr-only">(current)</span></a></li>
									<li class=" menu__item"><a class="menu__link" href="queryBookType.action">分类管理</a></li>
									<li class="dropdown menu__item">
										<a href="queryOrders.action" class="dropdown-toggle menu__link"  role="button" aria-haspopup="true">订单管理</a>
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
										<form action="addBook.action" enctype="multipart/form-data" method="post">	
											<input type="hidden" name="bid" value=""/>
											<div class="form-group">
												<label for="recipient-name" class="control-label">书名</label>
												<input type="text" name="bname" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">作者</label>
												<input type="text" name="bauthor" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">出版社</label>
												<input type="text" name="bpublisher" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">单价</label>
												<input type="text" name="bprice" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">分类</label>
												<select name="btid" class="frm-field required">
												<c:forEach items="${booktype}" var="bt">
													<option  value="${bt.btid}">${bt.btname}</option>
												</c:forEach>
												</select>
												
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">数量</label>
												<input type="text" name="bstock" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">图片</label>
												<input type="file" name="file" lass="p"/>
											</div>
											
											<div class="form-group">
												<label for="message-text" class="control-label">简介</label>
												<textarea class="form-control" name="bcontent" id="message-text"></textarea>
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
									<th>图书编号</th>
									<th>类型</th>
									<th>图片</th>
									<th>库存</th>
									<th>单价</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${books}" var="books">
								<tr>
									<td style="vertical-align: middle !important; al">
										<p>${books.bisbn}</p>
									</td>
									<td style="vertical-align: middle !important;">${books.btname}</td>
									<td style="vertical-align: middle !important;" width="90px" height="120px"><img src="${books.bimage}" /> </td>
									<td style="vertical-align: middle !important;">${books.bstock}</td>
									<td style="vertical-align: middle !important;">${books.bprice}</td>
									<td style="vertical-align: middle !important;">
										<a href="#" data-toggle="modal" data-target="#exampleModalm"
												data-whatever="@mdo" onclick="setVal(${books.bisbn})">库存管理</a>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						<div class="modal fade" id="exampleModalm" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalLabel">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<h4 class="modal-title" id="exampleModalLabel">
															图书类别修改
														</h4>
													</div>
													<div class="modal-body">
														<form action="changeStock.action" method="post">
															<input id="misbn" type="hidden" name="bisbn" value="" />
															<div class="form-group">
																<label for="recipient-name" class="control-label">
																	库存数量
																</label>
																<input type="text" name="bstock" class="form-control">
															</div>
															<div class="modal-footer">
																<button type="submit" id="addormodify"
																	class="btn btn-primary">
																	修改
																</button>
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">
																	关闭
																</button>
															</div>

														</form>
													</div>

												</div>
											</div>
										</div>
						
						<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<h4 class="modal-title" id="exampleModalLabel">图书添加</h4>
									</div>
									<div class="modal-body">
										<form action="addBook.action" enctype="multipart/form-data" method="post">	
											<input type="hidden" id="mbid" name="bid" value=""/>
											<div class="form-group">
												<label for="recipient-name" class="control-label">书名</label>
												<input type="text" name="bname" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">作者</label>
												<input type="text" name="bauthor" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">出版社</label>
												<input type="text" name="bpublisher" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">单价</label>
												<input type="text" name="bprice" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">分类</label>
												<select name="btid" class="frm-field required">
												<c:forEach items="${booktype}" var="bt">
													<option  value="${bt.btid}">${bt.btname}</option>
												</c:forEach>
												</select>
												
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">数量</label>
												<input type="text" name="bstock" class="form-control">
											</div>
											<div class="form-group">
												<label for="message-text" class="control-label">图片</label>
												<input type="file" name="file" lass="p"/>
											</div>
											
											<div class="form-group">
												<label for="message-text" class="control-label">简介</label>
												<textarea class="form-control" name="bcontent" id="message-text"></textarea>
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
						
						
						
						
					</div>
				</div>
			</div>
		</div>
		<!-- //图书管理表格 -->



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
