<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
	<head>
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/style.css" />
		<link href="assets/css/codemirror.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="font/css/font-awesome.min.css" />
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
		<script src="assets/layer/layer.js" type="text/javascript"></script>
		<script src="assets/laydate/laydate.js" type="text/javascript"></script>
		<title>分类管理</title>
	</head>
	<body>
		<div class="page-content clearfix">
			<div class="sort_style">

				
				<div class="sort_list">
					<table class="table table-striped table-bordered table-hover" id="sample-table">
						<thead>
							<tr>
								<th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
								<th width="50px">ID</th>
								<th width="100px">申请人</th>
								<th width="150px">参与者</th>
								<th width="130px">申请时间</th>
								<th width="200px">主题</th>
								<th width="70px">状态</th>
								<th width="180px">操作</th>
							</tr>
						</thead>
						<tbody>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		<!--添加用户图层-->
		<div class="add_menber" id="add_menber_style" style="display:none">

			<ul class=" page-content">
				<li><label class="label_name">申请编号：</label><span class="add_name"><input name="申请编号" id="activity_id"  type="text"  readonly="readonly" class="text_add"/></span>
					<div class="prompt r_f"></div>
				</li>
				<li><label class="label_name">活动名称：</label><span class="add_name"><input name="申请人" id="activity_name" type="text"  readonly="readonly" class="text_add"/></span>
					<div class="prompt r_f"></div>
				</li>
				<li><label class="label_name">活动主题：</label><span class="add_name"><input name="活动主题" id="activity_theme" type="text"  readonly="readonly" class="text_add"/></span>
					<div class="prompt r_f"></div>
				</li>
				<li><label class="label_name">申请时间：</label><span class="add_name"><input name="申请时间" id="activity_createtime" type="text" readonly="readonly"  class="text_add"/></span>
					<div class="prompt r_f"></div>
				</li>
				<li><label class="label_name">开始时间：</label><span class="add_name"><input name="开始时间" id="activity_starttime" type="text" readonly="readonly"  class="text_add"/></span>
					<div class="prompt r_f"></div>
				</li>
				<li><label class="label_name">结束时间：</label><span class="add_name"><input name="结束时间"  id="activity_stoptime" type="text" readonly="readonly"  class="text_add"/></span>
					<div class="prompt r_f"></div>
				</li>
				<li><label class="label_name">参与人：</label><span class="add_name"><input name="参与人" id="activity_participant" type="text"  readonly="readonly"  class="text_add"/></span>
					<div class="prompt r_f"></div>
				</li>
				<li><label class="label_name">策划者：</label><span class="add_name"><input name="策划者" id="activity_planner" type="text"  readonly="readonly"  class="text_add"/></span>
					<div class="prompt r_f"></div>
				</li>
				<li><label class="label_name">申请人：</label><span class="add_name"><input name="申请人" id="activity_auditor" type="text"  readonly="readonly"  class="text_add"/></span>
					<div class="prompt r_f"></div>
				</li>
				<li><label class="label_name">方案：</label><span class="add_name"><input name="方案" id="activity_programme" type="text"  readonly="readonly"  class="text_add"/></span>
					<div class="prompt r_f"></div>
				</li>
				<li><label class="label_name">是否通过：</label>
					<span class="add_name"><label><input name="form-field-radio1" type="radio" value="1" checked="checked" class="ace"><span class="lbl">通过</span></label>&nbsp;&nbsp;&nbsp;
					<label><input name="form-field-radio1" type="radio" value="0" class="ace"><span class="lbl">未通过</span></label></span>
				</span>
				<li></li>
				</li>
				<li><label class="label_name">备注：</label></li>
					<div class="col-sm-9"><textarea name="分类说明" style="height:100px;" class="form-control" id="form-field-8" placeholder="" onkeyup="checkLength(this);"></textarea><span class="wordage">剩余字数：<span id="sy" style="color:Red;">200</span>字</span>
				</div>				
			</ul>
		</div>

	</body>

</html>
<script type="text/javascript">
	jQuery(function($) {
		
		var oTable1 = $('#sample-table').dataTable({
			"aaSorting": [[1, "desc"]], //默认第几个排序
			"searching": false, //右边输入框关闭
			"bStateSave": true, //状态保存
			"ajax": {
	            "url": "http://localhost:8080/aamsystem/activity/getapplyactivity",
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
	            { "data": "activity_id" },
	            { "data": "activity_name" },
	            { "data": "activity_participant" },
	            { "data": "activity_createtime" },
	            { "data": "activity_theme" },
	            { "data": "activity_state" },

	        ],
			"aoColumnDefs": [
				//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
				{ "orderable": false, "aTargets": [0, 2, 3, 4, 5, 6, 7] }, // 制定列不参与排序
				{
                    "targets":7,
                    "class": "td-manage",
                    "data": null,
                    "bSortable": false,
                    "defaultContent": "<a title='审核' href='javascript:;' class='look btn btn-xs btn-info'><i class='fa fa-edit bigger-120'></i></a><a title='删除' href='javascript:;'  class='delete btn btn-xs btn-warning'><i class='fa fa-trash  bigger-120'></i></a>",
                } 
			],
			"fnRowCallback" : function(nRow, data, iDisplayIndex) {  
	            /* 用来改写用户权限的 */  
	             if (data.activity_state == '1')  
	                   $('td:eq(6)', nRow).html('<span class="btn btn-xs btn-success">未审核</span>');  	                              
	               return nRow;  
	           },  
		});
		
		/*全选框*/
		$('table th input:checkbox').on('click', function() {
			var that = this;
			$(this).closest('table').find('tr > td:first-child input:checkbox')
				.each(function() {
					this.checked = that.checked;
					$(this).closest('tr').toggleClass('selected');
				});

		});
		//				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
		function tooltip_placement(context, source) {
			var $source = $(source);
			var $parent = $source.closest('table')
			var off1 = $parent.offset();
			var w1 = $parent.width();
			var off2 = $source.offset();
			var w2 = $source.width();
			if(parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
			return 'left';
		}
	});

	function checkLength(which) {
		var maxChars = 200; //
		if(which.value.length > maxChars) {
			layer.open({
				icon: 2,
				title: '提示框',
				content: '您出入的字数超多限制!',
			});
			// 超过限制的字数了就将 文本框中的内容按规定的字数 截取
			which.value = which.value.substring(0, maxChars);
			return false;
		} else {
			var curr = maxChars - which.value.length; //250 减去 当前输入的
			document.getElementById("sy").innerHTML = curr.toString();
			return true;
		}
	};
	
	/*活动-审核*/
	$('#sample-table tbody').on('click','.look', function() {
	
		var table = $('#sample-table').DataTable();
	    var data = table.row($(this).parents('tr')).data();
	    
	    $("#activity_id").val(data.activity_id);
	    $("#activity_name").val(data.activity_name);
	    $("#activity_createtime").val(data.activity_createtime);
	    $("#activity_starttime").val(data.activity_starttime);
	    $("#activity_stoptime").val(data.activity_stoptime);
	    $("#activity_theme").val(data.activity_theme);
	    $("#activity_programme").val(data.activity_programme);
	    $("#activity_planner").val(data.activity_planner);
	    $("#activity_participant").val(data.activity_participant);
	    $("#activity_auditor").val(data.activity_auditor);
	    
	    var remove = $(this); 
	    
	    layer.open({
			type: 1,
			title: '查看用户信息',
			maxmin: true,
			shadeClose: false, //点击遮罩关闭层
			area: ['900px', ''],
			content: $('#add_menber_style'),
			btn: ['提交', '取消'],
			yes: function(index, layero) {	
				var username='<%= session.getAttribute("username")%>';
				var activity_replyaremark = $("#form-field-8").val();		
				var check = $("input[type='radio']:checked").val();
				var activity_id = $("#activity_id").val();
				
				$.ajax({
					type : 'post',
					url : 'http://localhost:8080/aamsystem/activity/modifyactivity',
					dataType : 'json',
					data : {
						'username':username,
						'activity_replyaremark':activity_replyaremark,
						'check':check,
						'activity_id':activity_id
					},
					success : function(data){
						if(data >0 ){
							layer.alert('审核成功！', {
								title: '提示框',
								icon: 1,
							});
							remove.parents('tr').remove();	
							
							layer.close(index);
						}else{
							layer.msg("审核错误");							
						}
					},
					error : function(){
						layer.msg("系统错误");
					}
				}); 
		},btn2:function(index){
			$('input[name="form-field-radio1"]:eq(0)').attr("checked",'true'); 
			$("#form-field-8").val(""); 
			layer.close(index);
		}
		});			
	});
	/*活动-删除*/
	$('#sample-table tbody').on('click','.delete', function() {
		
		var table1 = $('#sample-table').DataTable();
	    var data = table1.row($(this).parents('tr')).data();
	    var activity_id= data.activity_id;		
	    var remove = $(this);   
		layer.confirm('确认要删除吗？', { icon: 0, }, function(index) {					
			$.ajax({
				type : 'post',
				url : 'http://localhost:8080/aamsystem/activity/deleteactivity',
				dataType : 'json',
				data : {
					'activity_id':activity_id
				},
				success : function(data){
					if(data >0 ){
						
						layer.alert('删除成功！', {
							title: '提示框',
							icon: 1,
						});
						remove.parents('tr').remove();	
						layer.close(index);
						layer.msg('已删除!', { icon: 1, time: 1000 });
					}else{
						layer.msg("删除失败！");						
					}
				},
				error : function(){
					layer.msg("系统错误");
				}
			}); 
			
		});
	});

</script>