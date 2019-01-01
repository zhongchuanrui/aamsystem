<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>仲恺农业工程学院</title>
		<link href="css/defaultstyle.css" type="text/css" rel="stylesheet" />
		<link href="css/style.css" rel="stylesheet" />
		<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
		<script src="js/Index.js" type="text/javascript"></script>
		<script src="js/logincheck.js"></script>
		<script src="js/main.js"></script>
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
			$("#gouser").click(function(){				
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
				
				$.ajax({
					type: 'post',
					url: "http://localhost:8080/aamsystem/activity/getprogressactivity",
					data: {},
					dataType: 'json',
					success: function(data) {
						if (data.length > 0) {							
							for (var i = 0; i <9 ; i++) {
								var activity_theme = data[i].activity_theme;
								var activity_createtime = data[i].activity_createtime;
								var tr = "<li><dl><dt class='messdt'></dt><dd><a href='#' class='title03' title=''>"+activity_theme
								+"</a><span class='title04'>"+activity_createtime+"</span></dd></dl></li>";
								$('#hotactivity').append(tr);								
								/* console.debug(activity_createtime.substr(0, 7));
								console.debug(activity_createtime.substr(8, 10)); */
							}

						} 
					}
				});
				
				$.ajax({
					type: 'post',
					url: "http://localhost:8080/aamsystem/news/getshownews",
					data: {},
					dataType: 'json',
					success: function(data) {
						if (data.length > 0) {							
							for (var i = 0; i <4 ; i++) {
								var news_time = data[i].news_time;
								var news_title = data[i].news_title;
								var tr="<li class='cur li01'><dl><dt class='datedt'><span class='date01'>"+news_time.substr(0, 7)
								    +"</span><span class='date02'>"+news_time.substr(8, 10)+"</span>"
		                            +"</dt><dd><a href='#' class='title01' title=''><i></i>"+news_title+"</a>"
									+"<p class='title02'>各单位：为做好我校2016年校内财务预算工作，请各位单位根据...</p></dd></dl></li>";
								
								$('#hotnews').append(tr);								
								/* console.debug(news_time.substr(0, 7));
								console.debug(activity_createtime.substr(8, 10)); */
								
								
								
							}

						} 
					}
				});
				
				
				
			}
	
		}); 
		
	</script>
	</head>

	<body>
		<div class="top">
			<p id="logincheck"></p>
		</div>
		<div class="headCenter" id="headCenter">
			<div class="headMenu" id="headMenu">
			</div>
			<div class="index_top_out">
				<div class="index_nav">
					<ul>
						<li class="cur">
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
						<li id="gouser">
							<a href="javascript:;">校友个人中心</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main-center">

			<div class="main_banner">
				<div class="main_banner_wrap">
					<div class="main_banner_box" id="m_box">
						<a href="javascript:void(0)" class="banner_btn js_pre">
							<span class="banner_btn_arrow"><i></i></span>
						</a>
						<a href="javascript:void(0)" class="banner_btn btn_next js_next">
							<span class="banner_btn_arrow"><i></i></span>
						</a>
						<ul>
							<li id="imgCard0">
								<a href=""><span style="opacity:0;"></span></a>
								<img src="Images/banner01.jpg" alt="">
								<p style="bottom:0">仲恺校门</p>
							</li>
							<li id="imgCard1">
								<a href=""><span style="opacity:0.4;"></span></a>
								<img src="Images/banner02.jpg" alt="">
								<p>仲恺学校教学楼</p>
							</li>
							<li id="imgCard2">
								<a href=""><span style="opacity:0.4;"></span></a>
								<img src="Images/banner03.jpg" alt="">
								<p>仲恺宿舍楼</p>
							</li>
							<li id="imgCard3">
								<a href=""><span style="opacity:0.4;"></span></a>
								<img src="Images/banner04.jpg" alt="">
								<p>仲恺教学楼夜景</p>
							</li>
							<li id="imgCard4">
								<a href=""><span style="opacity:0.4;"></span></a>
								<img src="Images/banner05.jpg" alt="">
								<p>仲恺操场</p>
							</li>
						</ul>
						<!--火狐倒影图层-->
						<p id="rflt"></p>
						<!--火狐倒影图层-->
					</div>
					<!--序列号按钮-->
					<div class="btn_list">
						<span class="curr"></span><span></span><span></span><span></span><span></span>
					</div>
				</div>
			</div>
		</div>
		<div class="mian_center01">
			<div class="middle">
				<div class="line">
				</div>
				<div class="index05">
					<div class="index05left">
						<h4 class="h4">
                        新闻中心
                    </h4>
					</div>
					<div class="Index05right">
						<a href="news.jsp" class="a12">更多>> </a>
					</div>
				</div>
				<div class="outer2">
					<div id="side2">
						<ul class="m2">
							<li style="background-image: url(Images/ban01.jpg);">
								<a href="javascript:void(0)"></a>
							</li>
							<li style="background-image: url(Images/ban02.jpg);">
								<a href="javascript:void(0)"></a>
							</li>
							<li style="background-image: url(Images/ban03.jpg)">
								<a href="javascript:void(0)"></a>
							</li>
							<li style="background-image: url(Images/ban04.jpg)">
								<a href="javascript:void(0)"></a>
							</li>
							<li style="background-image: url(Images/ban05.jpg)">
								<a href="javascript:void(0)"></a>
							</li>
							<li style="background-image: url(Images/ban06.jpg)">
								<a href="javascript:void(0)"></a>
							</li>
						</ul>
						<ul class="s2">
							<li class="cur">1</li>
							<li class="">2</li>
							<li class="">3</li>
							<li class="">4</li>
							<li class="">5</li>
							<li class="">6</li>
						</ul>
					</div>
				</div>
				<div class="outer3">
					<ul id="hotnews">
						<li class="cur li01">
							<dl>
								<dt class="datedt"><span class="date01">2016-12</span><span class="date02">19 </span>
                            </dt>
								<dd>
									<a href="#" class="title01" title="聊城大学网络信息中心领导来我校"><i></i>聊城大学网络信息中心领导来我校</a>
									<p class="title02">各单位：为做好我校2016年校内财务预算工作，请各位单位根据...</p>
								</dd>
							</dl>
						</li>					
					</ul>
				</div>
			</div>
		</div>
		<div class="mianCenter">
			<div class="mianCenterMain">
				<div class="outer3 outer4 outer4-left pdr20">
					<div class="line">
					</div>
					<div class="index06">
						<div class="index06left">
							<h4 class="h4">
                            最新资讯
                        </h4>
						</div>
						<div class="index06right">
							<a href="#" class="a12">更多> </a>
						</div>
					</div>
					<ul>
						<li>
							<dl>
								<dt class="filedt"></dt>
								<dd>
									<a href="#" class="title03" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                    03-21</span>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt class="filedt"></dt>
								<dd>
									<a href="#" class="title03" title="教育部：建设800门优质在线开">教育部：建设800门优质在线开</a> <span class="title04">
                                    03-21</span>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt class="filedt"></dt>
								<dd>
									<a href="#" class="title03" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                    03-21</span>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt class="filedt"></dt>
								<dd>
									<a href="#" class="title03" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                    03-21</span>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt class="filedt"></dt>
								<dd>
									<a href="#" class="title03" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                    03-21</span>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt class="filedt"></dt>
								<dd>
									<a href="#" class="title03" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                    03-21</span>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt class="filedt"></dt>
								<dd>
									<a href="#" class="title03" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                    03-21</span>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt class="filedt"></dt>
								<dd>
									<a href="#" class="title03" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                    03-21</span>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt class="filedt"></dt>
								<dd>
									<a href="#" class="title03" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                    03-21</span>
								</dd>
							</dl>
						</li>
					</ul>
				</div>
				<div class="outer3 outer4">
					<div class="line">
					</div>
					<div class="index06">
						<div class="index06left">
							<h4 class="h4">
                                                         活动公告
                        </h4>
						</div>
						<div class="index06right">
							<a href="activitys.jsp" class="a12">更多>> </a>
						</div>
					</div>
					<ul id="hotactivity">
						<li>
							<dl>
								<dt class="messdt"></dt>
								<dd>
									<a href="#" class="title03" title="硕士生、博士生一卡通领取通知">硕士生、博士生一卡通领取通知</a> <span class="title04">
                                    03-21</span>
								</dd>
							</dl>
						</li>						
					</ul>
				</div>

			</div>
		</div>
		<div class="foot">
			<div class="foot_main">
				<p>
					<label>
                    版权所有：仲恺农业工程学院
                </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label>
                    联系电话：xxx-xxxxxxx
                </label>
				</p>
				<p>
					<label>
                    地址：广州市海珠区
                </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label>
                    粤ICP备-010872
                </label>
				</p>
			</div>
		</div>
	</body>

</html>