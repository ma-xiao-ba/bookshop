<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>登录</title>
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
		<script src="js/jquery.easing.min.js">
</script>



	</head>
	<body>
		<div class="modal-dialog">
			<div class="modal-content modal-info">
				<div class="modal-body modal-spa">
					<div class="login">
						<div class="login">
							<div class="login-right">
								<h3>
									登录
								</h3>
								<form action="login.action" method="post">
									<div class="sign-in">
										<h4>
											用户名 :
										</h4>
										<input type="text" name="uname" value="账号" onFocus="this.value = '';"
											onBlur="if (this.value == '') {this.value = '用户名';}"
											required="">
									</div>
									<div class="sign-in">
										<h4>
											密码 :
										</h4>
										<input type="password" name="upwd" value="Password"
											onFocus="this.value = '';"
											onBlur="if (this.value == '') {this.value = 'Password';}"
											required="">
									</div>

									<div class="sign-in">
										<input type="radio" name="urole" value="1"/>
										<label for="brand">
											<span></span>管理员
										</label>
										<input type="radio" name="urole" value="0"/>
										<label for="brand" checked="checked">
											<span></span>普通用户
										</label>
										<a href="register.jsp" style="font-size: 16px;">立即注册</a>
									</div>
									<br />
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
	</body>
</html>