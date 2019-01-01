<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
<title>校友个人信息</title>
<link href="css/defaultstyle.css" type="text/css" rel="stylesheet" />
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="css/layui.css" type="text/css" rel="stylesheet" />



<style type="text/css">
#showalumnusinfo td {
	background-color: #F2F2F2;
}
#showalumnusinfo th {
	padding-left: 0px;
	padding-right:0px;
}

</style>

<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/distpicker.data.js"></script>
<script type="text/javascript" src="js/distpicker.js"></script>
<script type="text/javascript" src="js/layui.js"></script>
<script type="text/javascript" src="js/layer.js"></script>

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
		<!--<div class="list_center">
			<div class="list_centerbg">
				
			</div>
		</div>-->
		<div class="list_main" style="height:600px;">
			<div class="list_center_main">
				<div class="list_mainleft">
					<dl>
						<dt>个人中心 </dt>
						<dd >
							<a href="user.jsp">校友查询</a>
						</dd>
						<dd>
							<a href="user_activity.jsp">活动申请</a>
						</dd>
						<dd>
							<a href="user_applyassociation.jsp">入会申请</a>
						</dd>
						<dd>
							<a href="user_applyoffice.jsp">入职申请</a>
						</dd>
						<dd class="cur">
							<a href="user_info.jsp">个人信息</a>
						</dd>
					</dl>
				</div>
				<div class="list_mainright" style="height:600px;">
					<div class="outer3 outer4 outer6">
						<div class="line">
						</div>
					
						<!--显示校友详细开始-->
	<div id="showalumnusinfo" >
		<table class="layui-table" id="showtable">
			<colgroup>
				<col width="120">
				<col width="120">
				<col width="180">
				<col width="120">
				<col width="180">
				<col width="180">
			</colgroup>
			<caption style="font-size: 25px;margin-bottom: 5px;">校友个人详细信息</caption>
			<tbody>
				<tr>
					<th style="text-align: right;" rowspan="3"><img alt="" src="http://localhost:8080/aamsystem/images/46368341078050435.jpg"></th>
				<!-- 	<th style="text-align: right;" rowspan="3">校友编号：</th>
					<td><span id="alumnus_id"></span></td> -->
					<th style="text-align: right;">名字：</th>
					<td><span id="alumnus_name"></span></td>
					<th style="text-align: right;">性别：</th>
					<td><span id="alumnus_sex"></span></td>
				</tr>
				<tr>
					<th style="text-align: right;">学院：</th>
					<td><span id="alumnus_academy"></span></td>
					<th style="text-align: right;">本科专业：</th>
					<td><span id="alumnus_major"></span></td>
					<th style="text-align: right;">本科班级：</th>
					<td><span id="alumnus_class"></span></td>
				</tr>
				<tr>
					<th style="text-align: right;">电话：</th>
					<td><span id="alumnus_telephone"></span></td>
					<th style="text-align: right;">微信：</th>
					<td><span id="alumnus_weixin"></span></td>
					<th style="text-align: right;">QQ号码：</th>
					<td><span id="alumnus_qq"></span></td>
				</tr>
				<tr>
					<th style="text-align: right;">昵称：</th>
					<td><span id="alumnus_nickname"></span></td>
					<th style="text-align: right;">注册时间：</th>
					<td><span id="alumnus_registertime"></span></td>					
					<th style="text-align: right;">届别：</th>
					<td><span id="alumnus_session"></span></td>
				</tr>
				<tr>
					<th style="text-align: right;">毕业时间：</th>
					<td><span id="alumnus_graduationtime"></span></td>
					<th style="text-align: right;">硕士专业：</th>
					<td><span id="alumnus_mastermajor"></span></td>
					<th style="text-align: right;">硕士毕业时间：</th>
					<td><span id="alumnus_masteryear"></span></td>
				</tr>
				<tr>
				<th style="text-align: right;">自我简介：</th>
					<td colspan="5"><span id="alumnus_introduce"></span></td>
				</tr>
				<tr>
					<th style="text-align: right;">住址：</th>
					<td colspan="5"><span id="alumnus_address"></span></td>
				</tr>
				<tr>
					<th style="text-align: right;">工作地点：</th>
					<td colspan="5"><span id="alumnus_workplace"></span></td>
				</tr>
				<tr>
					<th style="text-align: right;">工作单位：</th>
					<td colspan="5"><span id="alumnus_workpost"></span></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!--显示校友详细信息结束  -->
						
						
						<!-- 修改信息表单开始 -->
                        <div id="modifyuserinfo" style="display:none">
						<form role="form" class="form-inline">
							<div class="form-group">
								<label for="name">姓名</label>
								<input type="text" style="width: 150px;margin-right: 10px;" class="form-control" >
								<label for="name">校友编号</label>
								<input type="text" class="form-control" style="width: 150px;margin-right: 10px;" readonly="readonly" value="1" >
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
						<!-- 修改信息表单结束 -->
						
						
					</div>
				</div>
			</div>
		</div>

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
			</div>
		</div>
	</body>

</html>