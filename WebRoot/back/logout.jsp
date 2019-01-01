<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<%session.setAttribute("username", null); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="css/style.css" />

<script src="assets/js/ace-extra.min.js"></script>
<script src="js/jquery-1.9.1.min.js"></script>
<script src="assets/layer/layer.js" type="text/javascript">
	
</script>

<title>登录界面</title>
</head>

<body class="login-layout">
	<div class="logintop">
		<span>欢迎后台管理界面平台</span>
	</div>
	<div class="loginbody">
		<div class="login-container">
			<div class="center">
				<h1>
					<i class="icon-leaf green"></i> <span class="orange">校友会</span> <span
						class="white">后台管理系统</span>
				</h1>
				<h4 class="white">Background Management System</h4>
			</div>

			<div class="space-6"></div>

			<div class="position-relative">
				<div id="login-box" class="login-box widget-box no-border visible">
					<div class="widget-body">
						<div class="widget-main">
							<h4 class="header blue lighter bigger">
								<i class="icon-coffee green"></i> 管理员登陆
							</h4>

							<div class="login_icon">
								<img src="images/login.png" />
							</div>

							<form class="">
								<fieldset>
									<label class="block clearfix"> <span
										class="block input-icon input-icon-right"> <input
											type="text" id="username" class="form-control" placeholder="登录名" name="登录名">
												<i class="icon-user"></i></span>
									</label> <label class="block clearfix"> <span
										class="block input-icon input-icon-right"> <input
											type="password" id="password" class="form-control" placeholder="密码"
											name="密码"> <i class="icon-lock"></i></span>
									</label>

									<div class="space"></div>

									<div class="clearfix">

										<button type="button"
											class="width-35 pull-right btn btn-sm btn-primary"
											id="login_btn">
											<i class="icon-key"></i> 登陆
										</button>
									</div>

									<div class="space-4"></div>
								</fieldset>
							</form>

						</div>
						<!-- /widget-main -->

						<div class="toolbar clearfix"></div>
					</div>
					<!-- /widget-body -->
				</div>
				<!-- /login-box -->
			</div>
			<!-- /position-relative -->
		</div>
	</div>
	<div class="loginbm">
		版权所有 2017 <a href="">仲恺农业工程学院</a>
	</div>
	<strong></strong>
</body>
</html>
<script>
	$('#login_btn').on('click', function() {
		var num = 0;
		var str = "";
		$("input[type$='text']").each(function(n) {
			if ($(this).val() == "") {

				layer.alert(str += "" + $(this).attr("name") + "不能为空！\r\n", {
					title : '提示框',
					icon : 0,
				});
				num++;
				return false;
			}
		});
		if (num > 0) {
			return false;
		} else {
			var username=$('#username').val();
			var password=$('#password').val();
			console.debug(username+password);
			$.ajax({
				type : 'post',
				url : 'http://localhost:8080/aamsystem/login/admin',
				dataType : 'json',
				data : {
					'username':username,
					'password':password},
				success : function(data){
					console.debug(data);
					console.debug(data.length );
					if(data != null){
						
						layer.msg('登陆成功！');	
						location.href = "index.jsp";
											
					}else{
						console.debug("到这了");
						layer.msg("用户名或密码错误");
					}
				},
				error : function(){
					layer.msg("用户名或密码错误");
				}
			});
					
		}

	})
</script>