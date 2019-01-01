<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>我要捐赠</title>
<link href="css/defaultstyle.css" type="text/css" rel="stylesheet" />
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="css/layui.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/layui.js"></script>
<script type="text/javascript" src="js/layer.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
			var alumnusname;
			init();		
			$("#logincheck").click(function(){				
                if(alumnusname !='null'){					
                	window.location.href = "user.jsp";
					
				}else{
					window.location.href = "login.html";
				}
				
			});
			
			$("#trunusercore").click(function(){				
                 if(alumnusname !='null'){					
                	window.location.href = "user.jsp";					
				}else{ 					
					layer.alert('请先登录！！', {
						  icon:6,
						  skin: 'layui-layer-molv' //样式类名
						  ,closeBtn: 0
						  ,time:1000,
						}); 
				
				setTimeout(function(){
					 window.location.href = "login.html";
				}, 1000);

			 	} 
				
			});
			
			
			$("#savedonation").click(function(){
				
				if($("#donation_project").val()==""){
					layer.msg("请选择捐赠项目",{time:1000});
					$("#donation_project").focus();
					return false;
				}
				if($("#donation_money").val()==""){
					layer.msg("请捐赠金额",{time:1000});
					$("#donation_money").focus();
					return false ;
				}
				if($("#donation_man").val()==""){
					layer.msg("请填写姓名",{time:1000});
					$("#donation_man").focus();
					return false;
				}
				if($("#donation_telephone").val()==""){
					layer.msg("请填写电话号码",{time:1000});
					$("#donation_telephone").focus();
					return false;
				}
				
				$.ajax({
					type : 'post',
					url : 'http://localhost:8080/aamsystem/donation/insertdonation',
					dataType : 'json',
					data : {
						'donation_project':$("#donation_project").val(),
						'donation_man':$("#donation_man").val(),
						'donation_personsex':$("input[name='donation_personsex']:checked").val(),
						'donation_money':$("#donation_money").val(),
						'donation_way':$("input[name='donation_way']:checked").val(),
						'donation_adress':$("#donation_adress").val(),
						'donation_workunit':$("#donation_workunit").val(),
						'donation_telephone':$("#donation_telephone").val(),
						'donation_email':$("#donation_email").val(),
						'donation_startschool':$("#donation_startschool").val(),
						'donation_graduatetime':$("#donation_graduatetime").val(),
						'donation_academy':$("#donation_academy").val(),
						'doantion_class':$("#doantion_class").val(),
						'donation_word':$("#donation_word").val(),
						'donation_state':$("input[name='donation_state']:checked").val(),
					},
					success : function(data){						
						if(data>0){
							layer.alert('捐赠成功！！', {
								  skin: 'layui-layer-lan' 
								  ,closeBtn: 0
								  ,time: 1500
								  ,icon: 1
								  ,anim: 4
								});
							
						}else{						
							layer.alert('捐赠失败！！', {
								  skin: 'layui-layer-lan' 
								  ,closeBtn: 0
								  ,time: 1500
								  ,icon: 2
								  ,anim: 4
								});
						}
					},
					error : function(){
						alert("系统错误");
					}
				});
				
			});
						
			
			function init(){				
			alumnusname='<%=session.getAttribute("alumnusname")%>';
			if (alumnusname != 'null') {

				$("#logincheck").html("欢迎 " + alumnusname + " 校友");

			} else {
				$("#logincheck").html("登录&nbsp;|&nbsp;注册");
			}
		}

	});
</script>
</head>

<body>
	<div class="top">
		<p id="logincheck">登录&nbsp;|&nbsp;注册</p>
	</div>
	<div class="headCenter" id="headCenter">
		<div class="headMenu" id="headMenu"></div>
		<div class="index_top_out">
			<div class="index_top">
				<div class="index_nav">
					<ul>
						<li><a href="userindex.jsp">首页</a></li>
						<li><a href="news.jsp">新闻中心</a></li>
						<li><a href="association.jsp">校友会概况</a></li>
						<li><a href="activitys.jsp">活动公告</a></li>
						<li class="cur"><a href="donation.jsp">校友捐赠</a></li>
						<li><a href="service.jsp">校友服务</a></li>
						<li id="trunusercore"><a href="#">校友个人中心</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="list_center">
		<div class="list_centerbg">捐赠</div>
	</div>
	<div class="list_main" style="height:1300px;">
		<div class="list_center_main">
			<div class="list_mainleft">
				<dl>
					<dt>捐赠中心</dt>
					<dd>
						<a href="donation.jsp">捐赠公示</a>
					</dd>
					<dd class="cur">
						<a href="donationdetail.jsp">我要捐赠</a>
					</dd>
				</dl>
			</div>
			<div class="list_mainright"  style="height:1300px;">
				<div class="outer3 outer4 outer6">
					<div class="line"></div>
					<div class="list06">
						<div class="list06left list06left">
							<h4 class="h4">捐赠&nbsp;&nbsp;Contribution</h4>
						</div>
						<div class="list06right list06right licon">
							<span class="a13">当前位置：捐献 > 我要捐赠</span>
						</div>
					</div>
					<!-- 捐赠填写表单  -->
					<form class="form-horizontal">
						<span
							style="font-size: 20px; width: 300px; margin-top: 20px; color: red; display: block;">捐赠项目和金额</span>
						<hr>
						<div class="form-group" style="width: 720px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;"><span style="color:red;font-size:20px;">*</span>捐赠项目</label> <select
								class="form-control" id="donation_project">
								<option value="">请选择</option>
								<option value="奖学金">奖学金</option>
								<option value="校友基金会">校友基金会</option>
							</select>
						</div>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;"><span style="color:red;font-size:20px;">*</span>捐赠金额</label>
							<div class="col-lg-6">
								<input type="text" class="form-control" id="donation_money"
									style="width: 390px;" >元
							</div>
						</div>
						<span
							style="font-size: 20px; width: 300px; margin-top: 20px;; color: red; display: block;">捐赠方式</span>
						<hr>
						<div>
							<label class="col-lg-3 control-label"
								style="padding-right: 40px;">捐赠方式</label>
							<div class="radio">
								<label> <input type="radio" name="donation_way" id="Radios1"
									value="个人捐赠" checked>个人捐赠
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="donation_way" id="Radios2"
									value="集体捐赠">集体捐赠
								</label>
							</div>

						</div>
						<span
							style="font-size: 20px; width: 300px; margin-top: 20px;; color: red; display: block;">填写个人信息</span>
						<hr>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;"><span style="color:red;font-size:20px;">*</span>姓名</label>
							<div class="col-lg-6">
								<input type="text" class="form-control" id="donation_man"
									style="width: 390px;" placeholder="请输入姓名">
							</div>
						</div>
						<div>
						<label class="col-lg-3 control-label"
							style="padding-right: 40px; margin-top: 10px;">性别</label>
						<div class="radio">
							<label style="margin-top: 10px;"> <input type="radio"
								name="donation_personsex" id="options1" value="男" checked>男
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="donation_personsex" id="options2"
								value="女">女
							</label>
						</div>
						</div>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;">目前任职单位</label>
							<div class="col-lg-6">
								<input type="text" class="form-control" id="donation_workunit"
									style="width: 390px;" placeholder="请输入任职单位">
							</div>
						</div>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;">联系地址</label>
							<div class="col-lg-6">
								<input type="text" class="form-control" id="donation_adress"
									style="width: 390px;" placeholder="请输入联系地址">
							</div>
						</div>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;"><span style="color:red;font-size:20px;">*</span>联系电话</label>
							<div class="col-lg-6">
								<input type="text" class="form-control" id="donation_telephone"
									style="width: 390px;" placeholder="请输入联系电话">
							</div>
						</div>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;">eamil</label>
							<div class="col-lg-6">
								<input type="text" class="form-control" id="donation_email"
									style="width: 390px;" placeholder="eamil">
							</div>
						</div>
						<span
							style="font-size: 20px; width: 300px; margin-top: 20px;; color: red; display: block;">如果是校友，请填写下面的信息</span>
						<hr>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;">入学年份</label>
							<div class="col-lg-6">
								<input type="text" class="form-control" id="donation_startschool"
									style="width: 390px;" placeholder="入学年份">
							</div>
						</div>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;">毕业年份</label>
							<div class="col-lg-6">
								<input type="text" class="form-control" id="donation_graduatetime"
									style="width: 390px;" placeholder="毕业年份">
							</div>
						</div>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;">所在院系</label>
							<div class="col-lg-6">
								<input type="text" class="form-control" id="donation_academy"
									style="width: 390px;" placeholder="所在院系">
							</div>
						</div>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;">所在班级</label>
							<div class="col-lg-6">
								<input type="text" class="form-control" id="doantion_class"
									style="width: 390px;" placeholder="所在班级">
							</div>
						</div>
						<span
							style="font-size: 20px; width: 300px; margin-top: 20px;; color: red; display: block;">捐赠情况</span>
						<hr>
						<label class="col-lg-3 control-label"
							style="padding-right: 40px; margin-top: 10px;">捐赠信息是否允许公示</label>
						<div class="radio">
							<label style="margin-top: 10px;"> <input type="radio"
								name="donation_state" id="optionsRadios1" value="2" checked>是
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="donation_state" id="optionsRadios2"
								value="1">否
							</label>
						</div>
						<div class="form-group" style="width: 720px; margin-top: 20px;">
							<label class="col-lg-3 control-label"
								style="padding-right: 20px;">捐赠留言</label>
							<div class="col-lg-6">
								 <textarea class="form-control" id="donation_word" rows="5" style="width: 390px;"></textarea>
							</div>
						</div>
						<button type="button" id="savedonation" style="margin-top:40px;margin-left:40px;" class="btn btn-success">提交</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="foot">
		<div class="foot_main">
			<p>
				<a href="#">联系我们</a><span>|</span> <a href="#">法律声明</a><span>|</span>
				<a href="#">后台管理</a><span>|</span> <a href="#">旧版网站</a>
			</p>
			<p>
				<label> 版权所有：南京林业大学信息中心 </label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label>
					联系电话：025-85427130 </label>
			</p>

		</div>
	</div>
</body>

</html>