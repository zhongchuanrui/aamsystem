<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

<head>
<title>仲恺农业工程学院校友会</title>
<link href="css/defaultstyle.css" type="text/css" rel="stylesheet" />
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="css/layui.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/distpicker.data.js"></script>
<script type="text/javascript" src="js/distpicker.js"></script>
<script type="text/javascript" src="js/layui.js"></script>
<script type="text/javascript" src="js/layer.js"></script>


<style type="text/css">
#showtable td {
	background-color: #F2F2F2;
}
</style>


<script type="text/javascript">
			$(document).ready(function() {
				var alumnusname;
				var newalumnus=new Array();
				var currpage=1;
				var totalpage=0;
				var list;
				init();
				$("#logincheck").click(function() {
					
					if(alumnusname != 'null') {
						window.location.href = "user.jsp";
					} else {				
						window.location.href = "login.html";
					}

				});
				
				$('#distpicker').distpicker({autoSelect: false});
				$('#distpicker1').distpicker({autoSelect: false});
							
				//点击查询后的结果
				$("#searchinfo").click(function() {				
					newalumnus[0] =$("#salumnus_name").val();
					newalumnus[1] =$("#salumnus_id").val();
					newalumnus[2] =$("#salumnus_academy").val();
					newalumnus[3] =$("#salumnus_major").val();
					newalumnus[4] =$("#salumnus_session").val();
					newalumnus[5] =$("#salumnus_class").val();
					newalumnus[6] =$("#province").val()+$("#city").val()+$("#district").val();//住址
					newalumnus[7] =$("#province1").val()+$("#city1").val()+$("#district1").val();//公司地点
					newalumnus[8] =1;
					
					$.ajax({
						type : 'post',
						url : 'http://localhost:8080/aamsystem/alumnus/getusersearchalumnus',
						dataType : 'json',
						data : {
							'alumnus_name':newalumnus[0],
							'alumnus_id':newalumnus[1],
							'alumnus_academy':newalumnus[2],
							'alumnus_major':newalumnus[3],
							'alumnus_session':newalumnus[4],
							'alumnus_class':newalumnus[5],
							'alumnus_address':newalumnus[6],
							'alumnus_workplace':newalumnus[7],
							'currpage':newalumnus[8],
						},
						success : function(data){
							
							if(data.totalpage>0){
							totalpage =data.totalpage;
							list=data.alumnus;
                            $("#alumnustable").css("display","block");						
							setList(list);			
							openlayer(totalpage);
							
							}else{
								
								$('#alumnustable tbody').html("");
								$("#alumnustable").css("display","none");
								totalpage=0;
								openlayer(totalpage);
								
								layer.alert('没有相关记录！！', {
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
					
				});
				
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
						    	newalumnus[8]=obj.curr;
						    	turnpage();
						      }
						  });									  
						});
				}
				
				//翻页的异步加载
				function turnpage(){
					$.ajax({
						type : 'post',
						url : 'http://localhost:8080/aamsystem/alumnus/getusersearchalumnus',
						dataType : 'json',
						data : {
							'alumnus_name':newalumnus[0],
							'alumnus_id':newalumnus[1],
							'alumnus_academy':newalumnus[2],
							'alumnus_major':newalumnus[3],
							'alumnus_session':newalumnus[4],
							'alumnus_class':newalumnus[5],
							'alumnus_address':newalumnus[6],
							'alumnus_workplace':newalumnus[7],
							'currpage':newalumnus[8],
						},
						success : function(data){	
							list=data.alumnus;
							setList(list);
						},
						error : function(){
							alert("系统错误");
						}
					});
				}
				
				//查看校友详细信息
				$('#alumnustable').on('click','.showinfo', function() {
					
					var index=$(this).parent("td").parent("tr").prevAll().length;					
				/* 	console.debug( $(this).parent("td").parent("tr").prevAll().length);
					console.debug( list[$(this).parent("td").parent("tr").prevAll().length]); */														
					$("#alumnus_id").html(list[index].alumnus_id);
				    $("#alumnus_name").html(list[index].alumnus_name);
				    $("#alumnus_session").html(list[index].alumnus_session);
				    $("#alumnus_sex").html(list[index].alumnus_sex);
				    $("#alumnus_introduce").html(list[index].alumnus_introduce);
				    $("#alumnus_weixin").html(list[index].alumnus_weixin);
				    $("#alumnus_qq").html(list[index].alumnus_qq);
				    $("#alumnus_telephone").html(list[index].alumnus_telephone);
				    $("#alumnus_academy").html(list[index].alumnus_academy);
				    $("#alumnus_major").html(list[index].alumnus_major);
				    $("#alumnus_class").html(list[index].alumnus_class);
				    $("#alumnus_graduationtime").html(list[index].alumnus_graduationtime);
				    $("#alumnus_address").html(list[index].alumnus_address);
				    $("#alumnus_workplace").html(list[index].alumnus_workplace);
				    $("#alumnus_workpost").html(list[index].alumnus_workpost);
				    
				    
				    layer.open({
						type: 1,
						title: '查看校友信息',
						maxmin: true,
						shadeClose: false, //点击遮罩关闭层
						area: ['900px', ''],
						btnAlign: 'c',
						content: $('#Guestactivity'),
						btn: ['确定',],
						yes: function(index, layero) {			
							layer.close(index);
					},
					});	
					
					
				});
				
				//给别人留言
				$('#alumnustable').on('click','.word', function() {
					var index=$(this).parent("td").parent("tr").prevAll().length;
					
					var wordman= '<%=session.getAttribute("alumnusname")%>';
					$("#acomment_replaymanid").val(list[index].alumnus_id);
					$("#acomment_replayman").val(list[index].alumnus_name);
					$("#acomment_man").val(wordman);
					var acomment_replaymanid=list[index].alumnus_id;
					var acomment_replayman=list[index].alumnus_name;
					var acomment_manid ='<%=session.getAttribute("alumnus_id")%>';
					console.debug(acomment_replaymanid+" "+acomment_replayman+" "+acomment_manid);
					 
				    layer.open({
						type: 1,
						title: '留言板',
						maxmin: true,
						shadeClose: false, //点击遮罩关闭层
						area: ['900px', ''],
						content: $('#wordalumnus'),
						btn: ['确定',],
						btnAlign: 'c',
						yes: function(index, layero) {										
							layer.close(index);
						
							$.ajax({
								type : 'post',
								url : 'http://localhost:8080/aamsystem/acomment/inesrtacomment',
								dataType : 'json',
								data : {
									'acomment_manid':acomment_manid,
									'acomment_man':wordman,
									'acomment_content':$("#acomment_content").val(),
									'acomment_replaymanid':acomment_replaymanid,
									'acomment_replayman':acomment_replayman,
								},
								success : function(data){				
									if(data>0){
										layer.alert('留言成功！！', {
											  skin: 'layui-layer-molv' 
											  ,closeBtn: 0
											  ,time: 1500
											  ,icon: 1
											});
									}else{
										layer.alert('留言失败！！', { 
											  closeBtn: 0
											  ,icon: 2
											  ,time: 1500
											});
									}
								},
								error : function(){
									layer.mgs("系统错误");
								}
							});
							
					},
					});	
					
				});
				
				//设置表格
				function setList(list){
					$('#alumnustable tbody').html("");
					for (var i = 0; i < list.length; i++) {
						var tr = "<tr><td>"+list[i].alumnus_name+"</td><td>"+list[i].alumnus_telephone+"</td><td>"+list[i].alumnus_class
						+"</td><td>"+list[i].alumnus_address+"</td><td><button class='showinfo layui-btn layui-btn-small'><i class='layui-icon'>查看</i>"
					    +" </button><button class='word layui-btn layui-btn-small'><i class='layui-icon'>留言</i></button></td></tr>"
					    $('#alumnustable tbody').append(tr);
					}
				}
				
				
				$("#salumnus_academy").focus(function(){
					alert("aaa");
					 
					
				});
				

			});

		function init() {
		alumnusname = '<%=session.getAttribute("alumnusname")%>';
		if (alumnusname != 'null') {
			$("#logincheck").html("欢迎 " + alumnusname + " 校友");

		} else {
			$("#logincheck").html("登录&nbsp;|&nbsp;注册");
		}

	}
</script>
</head>

<body>
	<div class="top">
		<p id="logincheck"></p>
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
						<li><a href="donation.jsp">校友捐赠</a></li>
						<li><a href="service.jsp">校友服务</a></li>
						<li class="cur"><a href="user.jsp">校友个人中心</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="list_main">
		<div class="list_center_main">
			<div class="list_mainleft">
				<dl>
					<dt>个人中心</dt>
					<dd class="cur">
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
					<dd>
						<a href="user_info.jsp">个人信息</a>
					</dd>
				</dl>
			</div>
			<div class="list_mainright">
				<div class="outer3 outer4 outer6" style="height: 200px;">
					<div class="line"></div>
					<form role="form" class="form-inline">
						<div class="form-group">
							<label>姓名</label> <input type="text" id="salumnus_name"
								style="width: 150px; margin-right: 10px;" class="form-control"
								placeholder="请输入姓名"> <label>校友编号</label> <input
								type="text" id="salumnus_id" class="form-control"
								style="width: 150px; margin-right: 10px;" placeholder="请输入校友编号">
							<label>学院</label> <select class="form-control"
								id="salumnus_academy" style="width: 150px;">
								<option value="">请选择学院</option>
								<option value=""></option>
							</select>
						</div>
						<div class="form-group" style="margin-top: 10px;">
							<label>专业</label> <select class="form-control"
								id="salumnus_major" style="width: 164px; margin-right: 10px;">
								<option value="">请选择专业</option>
								<option value=""></option>
								<option value=""></option>
							</select><label>毕业届别</label> <select class="form-control"
								style="width: 164px; margin-right: 10px;" id="salumnus_session">
								<option value="">请选择性届别</option>
								<option value="1990">1990</option>
								<option value="1991">1991</option>
								<option value="1992">1992</option>
								<option value="1993">1993</option>
								<option value="1994">1994</option>
								<option value="1995">1995</option>
								<option value="1996">1996</option>
								<option value="1997">1997</option>
								<option value="1998">1998</option>
								<option value="1999">1999</option>
								<option value="2000">2000</option>
								<option value="2001">2001</option>
								<option value="2002">2002</option>
								<option value="2003">2003</option>
								<option value="2004">2004</option>
								<option value="2005">2005</option>
								<option value="2006">2006</option>
								<option value="2007">2007</option>
								<option value="2008">2008</option>
								<option value="2009">2009</option>
								<option value="2010">2010</option>
								<option value="2011">2011</option>
								<option value="2012">2012</option>
								<option value="2013">2013</option>
								<option value="2014">2014</option>
								<option value="2015">2015</option>
								<option value="2016">2016</option>
								<option value="2017">2017</option>
							</select> <label for="name">班级</label> <input type="text"
								id="salumnus_class" style="width: 150px; margin-right: 10px;"
								class="form-control" placeholder="班级 如 信计132">
						</div>
						<div class="form-group" style="margin-top: 10px;" id="distpicker">
							<label for="name">现居地点</label> <select class="form-control"
								id="province" style="width: 120px;"></select> <select
								class="form-control" id="city" style="width: 120px;"></select> <select
								class="form-control" id="district" style="width: 120px;"></select>
						</div>
						<div class="form-group" style="margin-top: 10px;" id="distpicker1">
							<label for="name">工作地点</label> <select class="form-control"
								id="province1" style="width: 120px;"></select> <select
								class="form-control" id="city1" style="width: 120px;"></select>
							<select class="form-control" id="district1"
								style="width: 120px; margin-right: 20px;"></select>
							<button type="button" id="searchinfo" class="btn btn-info">查询</button>
						</div>
					</form>
				</div>

				<!-- 表格开始 -->
				<div class="layui-form">
					<table class="layui-table" style="display: none" id="alumnustable">
						<colgroup>
							<col width="100">
							<col width="120">
							<col width="150">
							<col width="350">
							<col>
						</colgroup>
						<thead>
							<tr>
								<th>姓名</th>
								<th>联系电话</th>
								<th>班级</th>
								<th>住址</th>
								<th>查看操作</th>
							</tr>
						</thead>
						<tbody>

						</tbody>
					</table>
				</div>
				<div id="demo1"></div>
				<!--表格结束  -->
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

	<!--校友详细-->
	<div id="Guestactivity" style="display: none">
		<table class="layui-table" id="showtable">
			<colgroup>
				<col width="100">
				<col width="180">
				<col width="100">
				<col width="180">
				<col width="100">
				<col width="180">
			</colgroup>
			<caption>校友个人详细信息</caption>
			<tbody>
				<tr>
					<th style="text-align: right;">校友编号：</th>
					<td><span id="alumnus_id"></span></td>
					<th style="text-align: right;">名字：</th>
					<td><span id="alumnus_name"></span></td>
					<th style="text-align: right;">性别：</th>
					<td><span id="alumnus_sex"></span></td>
				</tr>
				<tr>
					<th style="text-align: right;">届别：</th>
					<td><span id="alumnus_session"></span></td>
					<th style="text-align: right;">电话：</th>
					<td><span id="alumnus_telephone"></span></td>
					<th style="text-align: right;">微信：</th>
					<td><span id="alumnus_weixin"></span></td>
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
					<th style="text-align: right;">QQ号码：</th>
					<td><span id="alumnus_qq"></span></td>
					<th style="text-align: right;">毕业时间：</th>
					<td><span id="alumnus_graduationtime"></span></td>
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
	<!--结束  -->

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