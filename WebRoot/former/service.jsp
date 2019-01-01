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
							<li>
								<a href="donation.jsp">校友捐赠</a>
							</li>
							<li class="cur">
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
				校友服务
			</div>
		</div>
		<div class="list_main">
			<div class="list_center_main">
				<div class="list_mainleft">
					<dl>
						<dt>校友服务 </dt>
						<dd class="cur">
							<a href="#">校友信用卡</a>
						</dd>
						<dd>
							<a href="#">校内常用链接</a>
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
                               服务&nbsp;&nbsp;Service
                            </h4>
							</div>
							<div class="list06right list06right licon">
								<span class="a13">当前位置：服务> 校友信用卡</span>
							</div>
						</div>
						<div>
							<p style="font-size: 20px; font-weight: bold;text-indent: 2em;margin-bottom: 20px;">尊敬的学长、亲爱的校友：</p>
							<p style="font-size: 15px;text-indent: 3em;"> 为感谢您多年来对母校的关爱和支持，北京大学校友会特为您制作校友卡，您凭此证可进入校园，并可在图书馆阅览图书。这是校友会为广大校友提供服务和开展活动的一个开端，随着校友工作的逐步开展，我们将为您提供更加多元和便捷的服务。
							 </p>
							<p style="font-size: 20px; font-weight: bold;text-indent: 2em;margin-bottom: 20px;margin-top: 15px;margin-top: 25px;">  一、校友卡使用权限说明 </p>
							  <p style="text-indent: 3em; font-size: 15px;margin-bottom: 10px;"> 1、作为出入校门的凭证。</p>
							  <p style="text-indent: 3em; font-size: 15px;margin-bottom: 10px;">2、平时可进入校图书馆阅览一般图书（不包含一些收费项目，如善本阅览、光盘检索等），为保证在校生复习，每学期期末考试期间图书馆不对校友开放，具体时间请见图书馆门前通知。（2005年3月起图书馆启用校园一卡通，使用校友卡进馆方法请见说明。） </p>
							   <p style="text-indent: 3em; font-size: 15px;margin-bottom: 10px;">3、可免费参观校史馆、赛克勒考古与艺术博物馆。 </p>
							   <p style="text-indent: 3em; font-size: 15px;margin-bottom: 10px;">4、可优惠使用学校体育设施。（具体细节见通知） </p>
							  <p style="text-indent: 3em; font-size: 15px;margin-bottom: 10px;"> 5、本卡只限本人使用，不得转借他人。</p>
							<p style="font-size: 20px; font-weight: bold;text-indent: 2em;margin-bottom: 20px;margin-top: 25px;">二、校友卡办理时间</p>
							   <p style="text-indent: 3em; font-size: 15px;margin-bottom: 10px;">  1、每年有两次集中办理时间，一是校庆期间为返校校友办理，二是毕业前夕为当年的毕业生统一办理。</p>
							     <p style="text-indent: 3em; font-size: 15px;margin-bottom: 10px;">2、平时办卡时间为工作日的上午8：30-11：30；下午1:30-4:30（双休日及法定节假日不办公），欢迎校友以班级、年级或校友会为单位集体办理，或者个人前来办理。 </p>
							     <p style="text-indent: 3em; font-size: 15px;margin-bottom: 10px;">3、寒、暑假期间停止办理。</p>
							<p style="font-size: 20px; font-weight: bold;text-indent: 2em;margin-bottom: 20px;margin-top: 25px;">三、校友卡费用 </p>
							 <p style="text-indent: 3em; font-size: 15px;margin-bottom: 10px;">	校友首次办理和补办均为50元/张。</p>

						</div>
						
						<!--<ul>
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
						</ul>-->
						<!--<div class="pageing">
							<ul class="page">
								<li>
									<a href="#">
										<</a>
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
						</div>-->
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