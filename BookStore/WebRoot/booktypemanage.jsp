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


<script type="text/javascript">
	function setVal(val){
		document.getElementById("mbid").value=val;
	}
</script>





</head>
	<body>
		<!-- header-bot -->
		<div class="header-bot">
			<div class="container">
				<div class="col-md-3 header-left">
					<h1>
						<a href="index.html"><img src="images/logo3.jpg"> </a>
					</h1>
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
								<a href="login.jsp" class="use1" ><span>Login</span>
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
									<a class="menu__link" href="adminQueryBook.action">图书管理<span
										class="sr-only">(current)</span> </a>
								</li>
								<li class=" menu__item">
									<a class="menu__link" href="queryBookType.action">分类管理</a>
								</li>
								<li class="dropdown menu__item">
									<a href="queryOrders.action" class="dropdown-toggle menu__link"
										role="button" aria-haspopup="true" aria-expanded="false">订单管理</a>
									<!--<ul class="dropdown-menu multi-column">
											<div class="row">
												<div class="col-sm-7 multi-gd-img">
													<ul class="multi-column-dropdown">
														<li><a href="ordermanage.jsp">&nbsp;&nbsp;待处理订单</a></li>
														<li><a href="ordermanage.jsp">&nbsp;&nbsp;已发货订单</a></li>
													</ul>
												</div>
											</div>
										</ul>  -->
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
		<!-- 图书类型管理表格 -->
		<div class="product-easy">
			<div class="container">
				<div class="sap_tabs">
					<div id="horizontalTab"
						style="display: block; width: 100%; margin: 0px;">
						<button type="button" class="btn btn-warning" data-toggle="modal"
							data-target="#exampleModal" data-whatever="@mdo">
							添加
						</button>
						<br />
						<br />

						<!-- 弹出层 -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="exampleModalLabel">
											图书类别添加
										</h4>
									</div>
									<div class="modal-body">
										<form action="addbooktype.action" method="post">
											<input type="hidden" name="bid" value="" />
											<div class="form-group">
												<label for="recipient-name" class="control-label">
													类别名称
												</label>
												<input type="text" name="btname" class="form-control">
											</div>
											<div class="modal-footer">
												<button type="submit" id="addormodify"
													class="btn btn-primary">
													添加
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
						<table id="typemanage"
							class="table table-striped table-hover table-bordered">
							<thead>
								<tr>
									<th>
										分类名称
									</th>
									<th>
										操作
									</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${bookType}" var="booktype">
									<tr>
										<td>
											${booktype.btname}
										</td>
										
										<td>
											<a href="#" data-toggle="modal" data-target="#exampleModalm"
												data-whatever="@mdo" onclick="setVal(${booktype.btid})">修改</a>
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
														<form action="modifyBookType.action" method="post">
															<input id="mbid" type="hidden" name="btid" value="1222" />
															<div class="form-group">
																<label for="recipient-name" class="control-label">
																	新名称
																</label>
																<input type="text" name="btname" class="form-control">
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
					</div>
				</div>
			</div>
		</div>
		<!-- //图书管理表格 -->

		<!-- 版权 -->
		<div class="footer">
			<div class="container">
				<p class="copy-right">
					Copyright &copy; 2019. IMU All rights reserved.
				</p>
			</div>
		</div>
		<!-- //版权 -->

	</body>
</html>
