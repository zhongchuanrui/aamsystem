<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>仲恺农业工程学院校友会</title>
		<link href="css/defaultstyle.css" type="text/css" rel="stylesheet" />
		<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/distpicker.data.js"></script>
		<script type="text/javascript" src="js/distpicker.js"></script>

		<script type="text/javascript">
			$(document).ready(function() {
				var alumnusname;
				init();
				$("#logincheck").click(function() {
					if(alumnusname != 'null') {
						window.location.href = "user.jsp";
					} else {
						window.location.href = "login.html";
					}

				});

				
				$('#distpicker').distpicker({
					autoSelect: false
				});
				$('#distpicker1').distpicker({
					autoSelect: false
				});
								
				
				$("#searchinfo").click(function() {
					alert($("#province").val()+$("#city").val()+$("#district").val());
				});

			});

			function init() {
				alumnusname = '<%=session.getAttribute("alumnusname")%>';
				if(alumnusname != 'null') {
					$("#logincheck").html("欢迎 " + alumnusname + " 校友");

				} else {
					$("#logincheck").html("登录&nbsp;|&nbsp;注册");
				}
								
			}
		</script>
	</head>

	<body>
		<div class="top">
			<p id="logincheck">登录&nbsp;|&nbsp;注册</p>
		</div>
		<div class="headCenter" id="headCenter">
			<div class="headMenu" id="headMenu">
			</div>
			<div class="index_top_out">
				<div class="index_top">
					<div class="index_nav">
						<ul>
							<li>
								<a href="userindex.jsp">首页</a>
							</li>
							<li>
								<a href="news.jsp">新闻中心</a>
							</li>
							<li>
								<a href="association.jsp">校友会概况</a>
							</li>
							<li>
								<a href="activitys.jsp">活动公告</a>
							</li>
							<li>
								<a href="donation.jsp">校友捐赠</a>
							</li>
							<li>
								<a href="service.jsp">校友服务</a>
							</li>
							<li class="cur">
								<a href="user.jsp">校友个人中心</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="list_main">
			<div class="list_center_main">
				<div class="list_mainleft">
					<dl>
						<dt>个人中心 </dt>
						<dd>
							<a href="user.jsp">校友查询</a>
						</dd>
						<dd  class="cur">
							<a href="user_activity.jsp">活动申请</a>
						</dd>
						<dd>
							<a href="user_applyassociation.jsp">入会申请</a>
						</dd>
						<dd>
							<a href="user_applyoffice.jsp">入职申请</a>
						</dd>
						<dd>
							<a href="user_info.jsp">个人信息</a>
						</dd>
					</dl>
				</div>
				<div class="list_mainright">
					<div class="outer3 outer4 outer6">
						<div class="line">
						</div>

						<form role="form" class="form-inline">
							<div class="form-group">
								<label for="name">姓名</label>
								<input type="text" style="width: 150px;margin-right: 10px;" class="form-control" placeholder="请输入姓名">
								<label for="name">校友编号</label>
								<input type="text" class="form-control" style="width: 150px;margin-right: 10px;" placeholder="请输入校友编号">
								<label for="name">学院</label>
								<select class="form-control " style="width: 150px;">
									<option value="">请选择学院</option>
									<option>男</option>
									<option>女</option>
								</select>
							</div>
							<div class="form-group" style="margin-top: 10px;">
								<label for="name">专业</label>
								<select class="form-control " style="width: 164px;margin-right: 10px;">
									<option>请选择专业</option>
									<option>男</option>
									<option>女</option>
								</select>
								<label for="name">毕业届别</label>
								<select class="form-control " style="width: 164px;margin-right: 10px;">
									<option>请选择性届别</option>
									<option>男</option>
									<option>女</option>
								</select>
								<label for="name">班级</label>
								<select class="form-control " style="width: 150px;">
									<option>请选择班级</option>
									<option>男</option>
									<option>女</option>
								</select>
							</div>
							<div class="form-group" style="margin-top: 10px;" id="distpicker">
								<label for="name">现居地点</label>
								<select class="form-control" id="province" style="width: 120px;"></select>
								<select class="form-control" id="city" style="width: 120px;"></select>
								<select class="form-control" id="district" style="width: 120px;"></select>
							</div>
							<div class="form-group" style="margin-top: 10px;" id="distpicker1">
								<label for="name">工作地点</label>
								<select class="form-control" id="province1" style="width: 120px;"></select>
								<select class="form-control" id="city1" style="width: 120px;"></select>
								<select class="form-control" id="district1" style="width: 120px;"></select>
							</div>
							<div class="form-group" style="margin-top: 20px;">
								<button type="button" id="searchinfo" class="btn btn-success">查询</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>-->

		<div class="foot">
			<div class="foot_main">
				<p>
					<a href="#">联系我们</a><span>|</span>
					<a href="#">法律声明</a><span>|</span>
					<a href="#">后台管理</a><span>|</span>
					<a href="#">旧版网站</a>
				</p>
				<p>
					<label>
                    版权所有：南京林业大学信息中心
                </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label>
                    联系电话：025-85427130
                </label>
				</p>
				<p>
					<label>
                    地址：南京市龙蟠路159号
                </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label>
                    苏ICP备-010872
                </label>
				</p>
			</div>
		</div>
	</body>

</html>