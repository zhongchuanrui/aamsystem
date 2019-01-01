<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>新闻中心</title>
<link href="css/defaultstyle.css" type="text/css" rel="stylesheet" />
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="css/layui.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/layui.js"></script>
<script type="text/javascript" src="js/layer.js"></script>

		<script type="text/javascript">
			$(document).ready(function() {
				var alumnusname;
				var totalpage;
				init();
				
				//点击是否登录
				$("#logincheck").click(function() {
					if(alumnusname != 'null') {
						window.location.href = "user.jsp";
					} else {
						window.location.href = "login.html";
					}
				});
		          //初始化登录人
				function init() {
					alumnusname = '<%=session.getAttribute("alumnusname")%>';
					if(alumnusname != 'null') {
						$("#logincheck").html("欢迎 " + alumnusname + " 校友");
					} else {
						$("#logincheck").html("登录&nbsp;|&nbsp;注册");
					}
					
					//初始化新闻列表
					$.ajax({
						type : 'post',
						url : 'http://localhost:8080/aamsystem/news/usergetallnews',
						dataType : 'json',
						data : {
							'currpage':1,
						},
						success : function(data){														
							if(data.totalpage>0){
								totalpage =data.totalpage;
								list=data.news;	
								console.debug(list);
								setList(list);			
								openlayer(totalpage);
								
								}else{									
									totalpage=0;
									openlayer(totalpage);									
									layer.alert('没有新闻！！', {
										  skin: 'layui-layer-lan' 
										  ,closeBtn: 0
										  ,time: 1500
										  ,icon: 7
										  ,anim: 4
										});
								}
						},
						error : function(){
							alert("系统错误");
						}
					});	
				}
		          
				//打开laypage的显示
				function openlayer(totalpage){
					layui.use(['laypage', 'layer'], function(){
						  var laypage = layui.laypage
						  ,layer = layui.layer;					  
						  laypage({
						    cont: 'demo1'
						    ,pages: totalpage
						    ,skin: '#1E9FFF'
						    ,groups: 10,
						    jump: function(obj){
						    	var currpage=obj.curr;
						    	turnpage(currpage);
						      }
						  });									  
						});
				}
				
				//翻页的异步加载
				function turnpage(currpage){
					$.ajax({
						type : 'post',
						url : 'http://localhost:8080/aamsystem/news/usergetallnews',
						dataType : 'json',
						data : {
							'currpage':currpage,
						},
						success : function(data){	
							list=data.news;
							setList(list);
						},
						error : function(){
							alert("系统错误");
						}
					});
				}
		          	          
				//设置表格
				function setList(list){
					$('#shownews').html("");
					for (var i = 0; i < list.length; i++) {
						var tr = "<li><dl><dt class='messdt'></dt><dd><a href='javascript:;' class='title03 hovercolor' title='毕业生一卡通销户退款提醒'>"+list[i].news_title
							+"</a><span class='title04'>"+list[i].news_time+"</span></dd></dl></li>"
					    $('#shownews').append(tr);    
					}
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
				<div class="index_top">
					<div class="index_nav">
						<ul>
							<li>
								<a href="userindex.jsp">首页</a>
							</li>
							<li class="cur">
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
				新闻中心
			</div>
		</div>
		<div class="news_main">
			<div class="news_center">
				<div class="news_main_center">
					<div class="outer3 outer4 outer6">
						<div class="line">
						</div>
						<div class="list06">
							<div class="list06left">
								<h4 class="h4">
                                       新闻动态&nbsp;&nbsp;News
                            </h4>
							</div>
							<div class="list06right list06right licon">
								<span class="a13">当前位置：新闻中心 </span>
							</div>
						</div>
						<ul id="shownews">
						
						</ul>
						<div id="demo1"></div>
						<!--显示结束  -->
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
	
<!--留言窗口开始  -->
	<div id="wordalumnus" style="display: none">
		<div class="layui-form-item layui-form-text">
		 <div class="layui-input-block"> </div>   
			 <div class="layui-inline">
			      <label class="layui-form-label">留言人</label>
			      <div class="layui-input-inline">
			        <input type="text" id="acomment_man" style="width:140px;height:38px;" readonly="readonly" name="phone" lay-verify="title" class="layui-input">
			      </div>
		    </div>
		    <div class="layui-inline">
			      <label class="layui-form-label" style="width:110px;">留言对象编号</label>
			      <div class="layui-input-inline">
			        <input type="text" id="acomment_replaymanid" style="width:140px;height:38px;" readonly="readonly" name="email" lay-verify="title" class="layui-input">
			      </div>
		    </div>
		    <div class="layui-inline">
			      <label class="layui-form-label" style="width:110px;">留言对象名字</label>
			      <div class="layui-input-inline">
			        <input type="text" id="acomment_replayman" style="width:140px;height:38px;" readonly="readonly" name="email" lay-verify="title" class="layui-input">
			      </div>
		    </div>    
			<label class="layui-form-label">留言内容</label>
			<div class="layui-input-block">
				<textarea id="acomment_content" style="width:700px;" placeholder="请输入内容" class="layui-textarea"></textarea>
			</div> 
		</div>
	</div>
	<!--留言窗口结束 -->	
	
	
	</body>

</html>