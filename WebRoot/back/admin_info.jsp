<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/style.css"/>       
        <link href="assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/ace.min.css" />
        <link rel="stylesheet" href="font/css/font-awesome.min.css" />

		<script src="js/jquery-1.9.1.min.js"></script>
		<script src="assets/layer/layer.js" type="text/javascript" ></script>
        <script src="assets/laydate/laydate.js" type="text/javascript"></script>  
        <script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>           	
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
                      
<title>个人信息管理</title>
</head>
<body>
<div class="clearfix">
 <div class="admin_info_style">
   <div class="admin_modify_style" id="Personal">
     <div class="type_title">管理员信息 </div>
      <div class="xinxi">
        <div class="form-group"><label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户名： </label>
          <div class="col-sm-9"><span><%=session.getAttribute("username")%></span>
          &nbsp;&nbsp;&nbsp;<a href="javascript:ovid()" onclick="change_Password()" class="btn btn-warning btn-xs">修改密码</a></div>
          
          </div>
          <div class="form-group"><label class="col-sm-3 control-label no-padding-right" for="form-field-1">性别： </label>
          <div class="col-sm-9">
          <span class="sex" id="admin_sex"></span>
            <div class="add_sex">
            <label><input name="admin_sex" type="radio" value="男" class="ace" checked="checked"><span class="lbl">男</span></label>&nbsp;&nbsp;
            <label><input name="admin_sex" type="radio" value="女" class="ace"><span class="lbl">女</span></label>
            </div>
           </div>
          </div>
          <div class="form-group"><label class="col-sm-3 control-label no-padding-right" for="form-field-1">年龄： </label>
          <div class="col-sm-9"><input type="text" name="年龄" id="admin_age" value="" class="col-xs-7 text_info" disabled="disabled"></div>
          </div>
          <div class="form-group"><label class="col-sm-3 control-label no-padding-right" for="form-field-1">移动电话： </label>
          <div class="col-sm-9"><input type="text" name="移动电话" id="admin_phone" value="" class="col-xs-7 text_info" disabled="disabled"></div>
          </div>      
           <div class="form-group"><label class="col-sm-3 control-label no-padding-right" for="form-field-1">权限： </label>
          <div class="col-sm-9" > <span id="admin_power"></span></div>
          </div>
          
           <div class="Button_operation clearfix"> 
				<button onclick="modify();" class="btn btn-danger radius" type="submit">修改信息</button>				
				<button onclick="save_info();" class="btn btn-success radius" type="button">保存修改</button>              
			</div>
            </div>
    </div>
    <div class="recording_style">
    <div class="type_title">管理员登陆记录 </div>
    <div class="recording_list">
     <table class="table table-border table-bordered table-bg table-hover table-sort" id="sample-table">
    <thead>
      <tr class="text-c">
        <th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
        <th width="80">ID</th>
        <th width="100">权限</th>
        <th width="100">内容</th>
        <th width="20%">用户名</th>
        <th width="150">时间</th>
      </tr>
    </thead>
    <tbody>
      
    </tbody>
  </table>
    </div>
    </div>
 </div>
</div>
 <!--修改密码样式-->
         <div class="change_Pass_style" id="change_Pass">
            <ul class="xg_style">
             <li><label class="label_name">原&nbsp;&nbsp;密&nbsp;码</label><input name="原密码" type="password" class="" id="password"></li>
             <li><label class="label_name">新&nbsp;&nbsp;密&nbsp;码</label><input name="新密码" type="password" class="" id="Nes_pas"></li>
             <li><label class="label_name">确认密码</label><input name="再次确认密码" type="password" class="" id="c_mew_pas"></li>
              
            </ul>
     <!--       <div class="center"> <button class="btn btn-primary" type="button" id="submit">确认修改</button></div>-->
         </div>
</body>
</html>
<script>

 //按钮点击事件
function modify(){
	 $('.text_info').attr("disabled", false);
	 $('.text_info').addClass("add");
	  $('#Personal').find('.xinxi').addClass("hover");
	  $('#Personal').find('.btn-success').css({'display':'block'});
	};
function save_info(){
	    var num=0;
		 var str="";
     $(".xinxi input[type$='text']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
        	  var admin_name = '<%=session.getAttribute("username")%>';
        	  var admin_age =$("#admin_age").val();
        	  var admin_sex=$("#admin_sex").val();
        	  var admin_phone=$("#admin_phone").val();
        	  $.ajax({
					type : 'post',
					url : 'http://localhost:8080/aamsystem/login/modifyadmininfo',
					dataType : 'json',
					async :false,
					data : {
						'admin_name':admin_name,
						'admin_age':admin_age,
						'admin_sex':admin_sex,
						'admin_phone':admin_phone
						},
					success : function(data){
						console.debug(data);
						if(data !=null ){
							$("#admin_age").val(data.admin_age);
							$("#admin_sex").val(data.admin_sex);
							$("#admin_phone").val(data.admin_phone);
							layer.alert('修改成功！',{title: '提示框',icon:1,});
							$('#Personal').find('.xinxi').removeClass("hover");
							$('#Personal').find('.text_info').removeClass("add").attr("disabled", true);
							$('#Personal').find('.btn-success').css({'display':'none'});
							layer.close(index);
						}else{
							layer.msg("修改失败！");
						}
					},
					error : function(){
						layer.msg("修改失败！");
					}
				}); 
        	  
			 
			
		  }		  		
	};	
 //初始化宽度、高度    
    $(".admin_modify_style").height($(window).height()); 
	$(".recording_style").width($(window).width()-400); 
    //当文档窗口发生改变时 触发  
    $(window).resize(function(){
	$(".admin_modify_style").height($(window).height()); 
	$(".recording_style").width($(window).width()-400); 
  });
  //修改密码
  function change_Password(){
	   layer.open({
    type: 1,
	title:'修改密码',
	area: ['300px','300px'],
	shadeClose: true,
	content: $('#change_Pass'),
	btn:['确认修改'],
	yes:function(index, layero){		
		   if ($("#password").val()==""){
			  layer.alert('原密码不能为空!',{
              title: '提示框',				
				icon:0,
			    
			 });
			return false;
          } 
		  if ($("#Nes_pas").val()==""){
			  layer.alert('新密码不能为空!',{
              title: '提示框',				
				icon:0,
			    
			 });
			return false;
          } 
		   
		  if ($("#c_mew_pas").val()==""){
			  layer.alert('确认新密码不能为空!',{
              title: '提示框',				
				icon:0,
			    
			 });
			return false;
          }
		    if(!$("#c_mew_pas").val || $("#c_mew_pas").val() != $("#Nes_pas").val() )
        {
            layer.alert('密码不一致!',{
              title: '提示框',				
				icon:0,
			    
			 });
			 return false;
        }   
		 else{		
			 var username = '<%=session.getAttribute("username")%>';
			 var oldpassword = $("#password").val();
			 var newpassword = $("#Nes_pas").val();
			 $.ajax({
					type : 'post',
					url : 'http://localhost:8080/aamsystem/login/modifypassword',
					dataType : 'json',
					data : {
						'username':username,
						'oldpassword':oldpassword,
						'newpassword':newpassword
						},
					success : function(data){
						if(data >= 1){							
							layer.alert('修改成功！', {
								title : '提示框',
								icon : 1,
							});	
							layer.close(index);  
							$("#password").val("");
							$("#Nes_pas").val("");
							$("#c_mew_pas").val("");
						}else{
							console.debug("到这了");
							layer.msg("原密码错误");
						}
					},
					error : function(){
						layer.msg("原密码错误");
					}
				});
			 	    
		  }	 
	}
    });
	  }
jQuery(function($) {
	 var username = '<%=session.getAttribute("username")%>';
	$.ajax({
		type : 'post',
		url : 'http://localhost:8080/aamsystem/login/getadmin',
		dataType : 'json',
		data : {'admin_name':username,},
		success : function(data){
			console.debug(data);
			if(data !=null){							
				$("#admin_sex").html(data.admin_sex);
				$("#admin_age").val(data.admin_age);
				$("#admin_phone").val(data.admin_phone);
				$("#admin_power").html(data.admin_power);
			}else{
				
				layer.msg("系统错误");
			}
		},
		error : function(){
			layer.msg("系统错误");
		}
	});
	
	
	var oTable1 = $('#sample-table').dataTable({
		"aaSorting": [[1, "desc"]], //默认第几个排序
		"searching": false, //右边输入框关闭
		"bStateSave": true, //状态保存
		"ajax": {
            "url": "http://localhost:8080/aamsystem/login/getalladmin",
            "dataSrc": ""
        },
        "columns": [
			{
			    "sClass": "text-center",
			    "data": "ID",
			    "render": function (data, type, full, meta) {
			        return '<label><input type="checkbox" class="ace"><span class="lbl"></span></label>';
			    },
			    "bSortable": false
			},
            { "data": "admin_id" },
            { "data": "admin_power" },
            { "data": "admin_state" },
            { "data": "admin_name" },
            { "data": "admin_logintime" },
        ],
		"aoColumnDefs": [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{ "orderable": false, "aTargets": [0, 2, 3, 4, 5] }, // 制定列不参与排序		
		],
		"fnRowCallback" : function(nRow, data, iDisplayIndex) {  
            /* 用来改写用户权限的 */  
             if (data.admin_state == '1')  
                   $('td:eq(3)', nRow).html('成功登录！！');  
               if (data.admin_state == '2')  
                   $('td:eq(3)', nRow).html('资料下载');  
               if (data.admin_state == '3')  
                   $('td:eq(3)', nRow).html('一般用户');  
                 
               return nRow;  
           },  
	});
		
					
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
});
</script>
