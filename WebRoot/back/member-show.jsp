<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML>
<html>
<%
	String alumnus_id = request.getParameter("alumnus_id");
	String alumnus_nickname = request.getParameter("alumnus_nickname");
	String alumnus_name = request.getParameter("alumnus_name");
	String alumnus_registertime = request.getParameter("alumnus_registertime");
	String alumnus_session = request.getParameter("alumnus_session");
	String alumnus_birthday = request.getParameter("alumnus_birthday");
	String alumnus_sex = request.getParameter("alumnus_sex");
	String alumnus_introduce = request.getParameter("alumnus_introduce");
	String alumnus_weixin = request.getParameter("alumnus_weixin");
	String alumnus_qq = request.getParameter("alumnus_qq");
	String alumnus_telephone = request.getParameter("alumnus_telephone");
	String alumnus_academy = request.getParameter("alumnus_academy");
	String alumnus_major = request.getParameter("alumnus_major");
	String alumnus_class = request.getParameter("alumnus_class");
	String alumnus_graduationtime = request.getParameter("alumnus_graduationtime");
	String alumnus_mastermajor = request.getParameter("alumnus_mastermajor");
	String alumnus_masteryear = request.getParameter("alumnus_masteryear");
	String alumnus_address = request.getParameter("alumnus_address");
	String alumnus_workplace = request.getParameter("alumnus_workplace");
	String alumnus_workpost = request.getParameter("alumnus_workpost");	
%>
<head>
<meta charset="utf-8">
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
<link href="assets/css/codemirror.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<script src="assets/js/jquery.min.js"></script>
<title><%=alumnus_name %></title>
</head>
<body>
<span></span>
	<div class="member_show">
		<div class="member_jbxx clearfix">
			<img class="img" src="images/user.png">
			<dl class="right_xxln">		
			<dt><span class=""><%=alumnus_name %></span> <span class=""></span></dt>
			<dd class="" style="margin-left:0">校友详细信息卡</dd>
				
			</dl>
		</div>
		<div class="member_content">
			<ul>
				<li><label class="label_name">校友编号：</label><span class="name"><%=alumnus_id%></span></li>
				<li><label class="label_name">昵称：</label><span class="name"><%=alumnus_nickname%></span></li>
				<li><label class="label_name">名字：</label><span class="name"><%=alumnus_name %></span></li>
				<li><label class="label_name">注册时间：</label><span class="name"><%=alumnus_registertime %></span></li>
				<li><label class="label_name">届别：</label><span class="name"><%=alumnus_session %></span></li>
				<li><label class="label_name">出生日期：</label><span class="name"><%=alumnus_birthday %></span></li>
				<li><label class="label_name">性别：</label><span class="name"><%=alumnus_sex %></span></li>
				<li><label class="label_name">简介：</label><span class="name"><%=alumnus_introduce %></span></li>
				<li><label class="label_name">微信：</label><span class="name"><%=alumnus_weixin %></span></li>
				<li><label class="label_name">QQ：</label><span class="name"><%=alumnus_qq %></span></li>
				<li><label class="label_name">电话：</label><span class="name"><%=alumnus_telephone %></span></li>
				<li><label class="label_name">学院：</label><span class="name"><%=alumnus_academy %></span></li>
				<li><label class="label_name">本科专业：</label><span class="name"><%=alumnus_major %></span></li>
				<li><label class="label_name">本科班级：</label><span class="name"><%=alumnus_class %></span></li>
				<li><label class="label_name">本科毕业时间：</label><span class="name"><%=alumnus_graduationtime %></span></li>
				<li><label class="label_name">硕士专业：</label><span class="name"><%=alumnus_mastermajor %></span></li>
				<li><label class="label_name">硕士毕业时间：</label><span class="name"><%=alumnus_masteryear %></span></li>
				<li><label class="label_name">住址：</label><span class="name"><%=alumnus_address %></span></li>
				<li><label class="label_name">工作地点：</label><span class="name"><%=alumnus_workplace %></span></li>
				<li><label class="label_name">工作单位：</label><span class="name"><%=alumnus_workpost%></span></li>
			</ul>
		</div>
	</div>
</body>

</html>