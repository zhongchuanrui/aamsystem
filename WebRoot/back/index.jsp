<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>校友会后台管理系统</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="css/style.css" />
<script src="assets/js/ace-extra.min.js"></script>
<script src="js/jquery-1.9.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/typeahead-bs2.min.js"></script>
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>
<script src="assets/layer/layer.js" type="text/javascript"></script>
<script src="assets/laydate/laydate.js" type="text/javascript"></script>

<script type="text/javascript">
			$(function() {
				var cid = $('#nav_list> li>.submenu');
				cid.each(function(i) {
					$(this).attr('id', "Sort_link_" + i);

				})
			})
			jQuery(document).ready(function() {
				
				var username = '<%=session.getAttribute("username")%>';
				
				if(username=='null'){
					
					layer.msg('请先登录！', {
						title: '提示框',
						time:1000,
						icon: 1,
					});
					location.href = "login.jsp";
				}
				
				$("#adminname").html(username);			
				setApplycount();
				
				$.each($(".submenu"), function() {
					var $aobjs = $(this).children("li");
					var rowCount = $aobjs.size();
					var divHeigth = $(this).height();
					$aobjs.height(divHeigth / rowCount);
				});
				//初始化宽度、高度    
				$("#main-container").height($(window).height() - 76);
				$("#iframe").height($(window).height() - 140);

				$(".sidebar").height($(window).height() - 99);
				var thisHeight = $("#nav_list").height($(window).outerHeight() - 173);
				$(".submenu").height();
				$("#nav_list").children(".submenu").css("height", thisHeight);

				//当文档窗口发生改变时 触发  
				$(window).resize(function() {
					$("#main-container").height($(window).height() - 76);
					$("#iframe").height($(window).height() - 140);
					$(".sidebar").height($(window).height() - 99);

					var thisHeight = $("#nav_list").height($(window).outerHeight() - 173);
					$(".submenu").height();
					$("#nav_list").children(".submenu").css("height", thisHeight);
				});
				$(".iframeurl").click(function() {
					var cid = $(this).attr("name");
					var cname = $(this).attr("title");
					$("#iframe").attr("src", cid).ready();
					$("#Bcrumbs").attr("href", cid).ready();
					$(".Current_page a").attr('href', cid).ready();
					$(".Current_page").attr('name', cid);
					$(".Current_page").html(cname).css({ "color": "#333333", "cursor": "default" }).ready();
					$("#parentIframe").html('<span class="parentIframe iframeurl"> </span>').css("display", "none").ready();
					$("#parentIfour").html('').css("display", "none").ready();
				});

			});

			/*********************点击事件*********************/
			$(document).ready(function() {
				$('#nav_list').find('li.home').click(function() {
					$('#nav_list').find('li.home').removeClass('active');
					$(this).addClass('active');
				});

				//时间设置
				function currentTime() {
					var d = new Date(),
						str = '';
					str += d.getFullYear() + '年';
					str += d.getMonth() + 1 + '月';
					str += d.getDate() + '日';
					str += d.getHours() + '时';
					str += d.getMinutes() + '分';
					str += d.getSeconds() + '秒';
					return str;
				}
				setInterval(function() { $('#time').html(currentTime) }, 1000);
				//修改密码
				$('.change_Password').on('click', function() {
					layer.open({
						type: 1,
						title: '修改密码',
						area: ['300px', '300px'],
						shadeClose: true,
						content: $('#change_Pass'),
						btn: ['确认修改'],
						yes: function(index, layero) {
							if($("#password").val() == "") {
								layer.alert('原密码不能为空!', {
									title: '提示框',
									icon: 0,

								});
								return false;
							}
							if($("#Nes_pas").val() == "") {
								layer.alert('新密码不能为空!', {
									title: '提示框',
									icon: 0,

								});
								return false;
							}

							if($("#c_mew_pas").val() == "") {
								layer.alert('确认新密码不能为空!', {
									title: '提示框',
									icon: 0,

								});
								return false;
							}
							if(!$("#c_mew_pas").val || $("#c_mew_pas").val() != $("#Nes_pas").val()) {
								layer.alert('密码不一致!', {
									title: '提示框',
									icon: 0,

								});
								return false;
							} else {
								layer.alert('修改成功！', {
									title: '提示框',
									icon: 1,
								});
								layer.close(index);
							}
						}
					});
				});
				
				$('#Exit_system').on('click', function() {
					layer.confirm('是否确定退出系统？', {
							btn: ['是', '否'], //按钮
							icon: 2,
						},
						function() {
							
							location.href = "logout.jsp";

						});
				});
						
			});
			
			function setApplycount(){
				
				$.ajax({
					type : 'post',
					url : 'http://localhost:8080/aamsystem/apply/getcount',
					dataType : 'json',
					data : {},
					success : function(data){
						console.debug(data);
						console.debug(data.all);
						if(data !=null ){

							$("#all1").html(data.all);
							$("#all2").html(data.all+"条新动态");
							$("#applyoffice").html(data.officecount);
							$("#applyassociation").html(data.associationcount);
							$("#newAlumnus").html(data.alumnuscount);
							$("#applyactivity").html(data.activitycount);
						}else{
							console.debug("到这了");
							
						}
					},
					error : function(){
						layer.msg("系统错误");
					}
				}); 

			}
			
			
			
		</script>
</head>

<body>
	<div class="navbar navbar-default" id="navbar">
		<script type="text/javascript">
				try { ace.settings.check('navbar', 'fixed') } catch(e) {}
			</script>
		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <img
						src="images/logo.png">
				</small>
				</a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->
			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <span class="time"><em
								id="time"></em></span><span class="user-info"><small>欢迎光临,</small><span id="adminname"></span>
						</span> <i class="icon-caret-down"></i>
					</a>
						<ul
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="javascript:void(0)" name="admin_info.jsp"
								title="个人信息" class="iframeurl">个人信息</a></li>
							<li class="divider"></li>
							<li><a href="javascript:ovid(0)" id="Exit_system"><i
									class="icon-off"></i>退出</a></li>
						</ul></li>
					<li class="purple"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"><i class="icon-bell-alt"></i><span id="all1"
							class="badge badge-important"></span></a>
						<ul
							class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="icon-warning-sign"></i><span id="all2"></span></li>
							<li><a href="javascript:void(0)" name="transaction.jsp"
								class="iframeurl" title="活动申请审核">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-pink icon-comment"></i> 活动申请
										</span> <span id="applyactivity" class="pull-right badge badge-info"></span>
									</div>
							</a></li>

							<li><a href="javascript:void(0)" name="Sort_ads.html"
								class="iframeurl" title="申请入会审核">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-pink icon-comment"></i> 入会申请
										</span> <span id="applyassociation" class="pull-right badge badge-info"></span>
									</div>
							</a></li>

							<li><a href="javascript:void(0)" name="Sort_ads.html"
								class="iframeurl" title="任职申请审核">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
											任职申请
										</span> <span id="applyoffice" class="pull-right badge badge-success"></span>
									</div>
							</a></li>

							<li><a href="javascript:void(0)" name="Brand_Manage.html"
								class="iframeurl" title="新注册校友">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-info icon-twitter"></i> 新注册人员
										</span> <span id="newAlumnus" class="pull-right badge badge-success"></span>
									</div>
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="main-container" id="main-container">
		<script type="text/javascript">
				try { ace.settings.check('main-container', 'fixed') } catch(e) {}
			</script>
		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>
			</a>
			<div class="sidebar" id="sidebar">
				<script type="text/javascript">
						try { ace.settings.check('sidebar', 'fixed') } catch(e) {}
					</script>
				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						校友会后台管理系统</div>
					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span> <span class="btn btn-info"></span>
						<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
					</div>
				</div>
				<!-- #sidebar-shortcuts -->
				<ul class="nav nav-list" id="nav_list">
					<li class="home"><a href="javascript:void(0)" name="home.html"
						class="iframeurl" title=""><i class="icon-dashboard"></i><span
							class="menu-text"> 系统首页 </span></a></li>
					<li><a href="#" class="dropdown-toggle"><i
							class="icon-user"></i><span class="menu-text"> 校友账号 </span><b
							class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li class="home"><a href="javascript:void(0)"
								name="Products_List.html" title="校友信息" class="iframeurl"><i
									class="icon-double-angle-right"></i>校友信息</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="Brand_Manage.html" title="新注册校友" class="iframeurl"><i
									class="icon-double-angle-right"></i>新注册校友</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle"><i
							class="icon-home "></i><span class="menu-text"> 校友会管理 </span><b
							class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li class="home"><a href="javascript:void(0)"
								name="advertising.html" title="创建校友会" class="iframeurl"><i
									class="icon-double-angle-right"></i>创建校友会</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="showassociation.html" title="查看校友会" class="iframeurl"><i
									class="icon-double-angle-right"></i>查看校友会</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="Sort_ads.html" title="申请入会审核" class="iframeurl"><i
									class="icon-double-angle-right"></i>申请入会审核</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="Sort_ads.html" title="校友会任职人员" class="iframeurl"><i
									class="icon-double-angle-right"></i>校友会任职人员</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle"><i
							class="icon-comment"></i><span class="menu-text">活动管理 </span><b
							class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li class="home"><a href="javascript:void(0)"
								name="transaction.jsp" title="活动申请" class="iframeurl"><i
									class="icon-double-angle-right"></i>活动申请</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="Orderform.html" title="通过申请活动" class="iframeurl"><i
									class="icon-double-angle-right"></i>通过申请活动</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle"><i
							class="icon-list"></i><span class="menu-text"> 捐赠管理 </span><b
							class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li class="home"><a href="javascript:void(0)"
								name="member-Grading.html" title="捐赠列表" class="iframeurl"><i
									class="icon-double-angle-right"></i>捐赠列表</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle"><i
							class="icon-edit"></i><span class="menu-text"> 新闻管理 </span><b
							class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li class="home"><a href="javascript:void(0)"
								name="Guestbook.html" title="新建新闻" class="iframeurl"><i
									class="icon-double-angle-right"></i>新建新闻</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="Feedback.html" title="新闻信息" class="iframeurl"><i
									class="icon-double-angle-right"></i>新闻信息</a></li>
							<li class="home"><a href="javascript:void(0)"
								name="photo.html" title="轮播图" class="iframeurl"><i
									class="icon-double-angle-right"></i>轮播图</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle"><i
							class="icon-group"></i><span class="menu-text"> 管理员管理 </span><b
							class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li class="home"><a href="javascript:void(0)"
								name="admin_info.jsp" title="个人信息" class="iframeurl"><i
									class="icon-double-angle-right"></i>个人信息</a></li>
						</ul></li>
				</ul>
				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"
						data-icon1="icon-double-angle-left"
						data-icon2="icon-double-angle-right"></i>
				</div>
				<script type="text/javascript">
						try { ace.settings.check('sidebar', 'collapsed') } catch(e) {}
					</script>
			</div>
			<div class="main-content">
				<script type="text/javascript">
						try { ace.settings.check('breadcrumbs', 'fixed') } catch(e) {}
					</script>
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="index.html">首页</a>
						</li>
						<li class="active"><span class="Current_page iframeurl"></span></li>
						<li class="active" id="parentIframe"><span
							class="parentIframe iframeurl"></span></li>
						<li class="active" id="parentIfour"><span
							class="parentIfour iframeurl"></span></li>
					</ul>
				</div>

				<iframe id="iframe"
					style="border: 0; width: 100%; background-color: #FFF;"
					name="iframe" frameborder="0" src="home.html"> </iframe>

				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-container-inner -->

	</div>
	<!--底部样式-->

	<div class="footer_style" id="footerstyle">
		<p class="l_f">版权所有：信息与计算科学</p>
		<p class="r_f">地址：仲恺农业工程学院 邮编：510550 技术支持：XXXX</p>
	</div>
	<!--修改密码样式-->
	<div class="change_Pass_style" id="change_Pass">
		<ul class="xg_style">
			<li><label class="label_name">原&nbsp;&nbsp;密&nbsp;码</label><input
				name="原密码" type="password" class="" id="password"></li>
			<li><label class="label_name">新&nbsp;&nbsp;密&nbsp;码</label><input
				name="新密码" type="password" class="" id="Nes_pas"></li>
			<li><label class="label_name">确认密码</label><input name="再次确认密码"
				type="password" class="" id="c_mew_pas"></li>

		</ul>
		<!--       <div class="center"> <button class="btn btn-primary" type="button" id="submit">确认修改</button></div>-->
	</div>


</body>
<script>
	
	
	</script>

</html>