<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML>
<html>
<%
	String news_id = request.getParameter("news_id");
	String news_title = request.getParameter("news_title");
	String news_time = request.getParameter("news_time");
	String news_content = request.getParameter("news_content");
	String news_person = request.getParameter("news_person");
	out.print(news_content);
%>
<head>
<meta charset="utf-8">
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
<link href="assets/css/codemirror.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<script src="assets/js/jquery.min.js"></script>
<title><%=news_title %></title>
</head>
<body>
<span></span>
	<div class="member_show">
		<div class="member_jbxx clearfix">
			<img class="img" src="images/user.png">
			<dl class="right_xxln">		
			<dt><span class=""><%=news_title %></span> <span class=""></span></dt>
			<dd class="" style="margin-left:0">新闻详细信息卡</dd>
				
			</dl>
		</div>
		<div class="member_content">
			<ul>
				<li><label class="label_name">新闻编号：</label><span class="name"><%=news_id%></span></li>
				<li><label class="label_name">新闻标题：</label><span class="name"><%=news_title%></span></li>
				<li><label class="label_name">写作时间：</label><span class="name"><%=news_time %></span></li>
				<li><label class="label_name">作者：</label><span class="name"><%=news_person %></span></li>
				<li><label class="label_name">正文：</label></li>
			</ul>
			<div><%=news_content%></div>
		</div>
	</div>
</body>

</html>