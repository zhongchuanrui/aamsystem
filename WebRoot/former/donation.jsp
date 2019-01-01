<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>仲恺农业工程学院校友会</title>
		<link href="css/defaultstyle.css" type="text/css" rel="stylesheet" />
		<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
		
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
			
			function init(){
				
				alumnusname='<%=session.getAttribute("alumnusname")%>';
				if(alumnusname !='null'){
					
					$("#logincheck").html("欢迎 "+alumnusname+" 校友");
					
				}else{
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
							<li class="cur">
								<a href="donation.jsp">校友捐赠</a>
							</li>
							<li>
								<a href="service.jsp">校友服务</a>
							</li>
							<li>
								<a href="user.jsp">校友个人中心</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="list_center">
			<div class="list_centerbg">
				捐赠
			</div>
		</div>
		<div class="list_main">
			<div class="list_center_main">
				<div class="list_mainleft">
					<dl>
						<dt>捐赠中心 </dt>
						<dd  class="cur">
							<a href="#">捐赠公示</a>
						</dd>
						<dd>
							<a href="#">捐赠新闻</a>
						</dd>
						<dd>
							<a href="#">我要捐赠</a>
						</dd>
					</dl>
				</div>
				<div class="list_mainright">
					<div class="outer3 outer4 outer6">
						<div class="line">
						</div>
						<div class="list06">
							<div class="list06left list06left">
								<h4 class="h4">
                                捐赠&nbsp;&nbsp;Contribution
                            </h4>
							</div>
							<div class="list06right list06right licon">
								<span class="a13">当前位置：捐献 > 捐赠公示</span>
							</div>
						</div>
						<ul>
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="#" class="title03 hovercolor" title="硕士生、博士生一卡通领取通知">硕士生、博士生一卡通领取通知</a> <span class="title04 gray">
                                        2016-03-21</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="#" class="title03 hovercolor" title="毕业生一卡通销户退款提醒">毕业生一卡销户通退款提醒</a> <span class="title04">
                                        2016-03-21</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="#" class="title03 hovercolor" title="校园无线网暂停通知">校园无线网暂停通知</a> <span class="title04">2016-03-21</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="#" class="title03 hovercolor" title="毕业生一卡销户通退款提醒">毕业生一卡销户通退款提醒</a> <span class="title04">
                                        2016-03-21</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="#" class="title03 hovercolor" title="硕士生、博士生一卡通领取通知">硕士生、博士生一卡通领取通知</a> <span class="title04">
                                        2016-03-21</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="#" class="title03 hovercolor" title="毕业生一卡通销户退款提醒">毕业生一卡通销户退款提醒</a> <span class="title04">
                                        2016-03-21</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="#" class="title03 hovercolor" title="毕业生一卡销户通退款提醒">毕业生一卡销户通退款提醒</a> <span class="title04">
                                        2016-03-21</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="#" class="title03 hovercolor" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                        2016-03-21</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="#" class="title03 hovercolor" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                        2016-03-21</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="#" class="title03 hovercolor" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                        2016-03-21</span>
									</dd>
								</dl>
							</li>
						</ul>
						<div class="pageing">
							<ul class="page">
								<li>
									<a href="#">
										</a>
								</li>
								<li>
									<a href="#" class="cur">1</a>
								</li>
								<li>
									<a href="#">2</a>
								</li>
								<li>
									<a href="#">3</a>
								</li>
								<li>
									<a href="#">4</a>
								</li>
								<li><span>...</span></li>
								<li>
									<a href="#">></a>
								</li>
							</ul>
							<ul class="pageingtz">
								<li>
									跳转：<input type="text" class="input" />&nbsp;页&nbsp;
									<a href="#" class="a13">GO</a>
								</li>
							</ul>
						</div>
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