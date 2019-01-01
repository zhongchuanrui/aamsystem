$(function(){
	$('#switch_qlogin').click(function(){
		$('#switch_login').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_qlogin').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_bottom').animate({left:'0px',width:'70px'});
		$('#qlogin').css('display','none');
		$('#web_qr_login').css('display','block');
		
		});
	$('#switch_login').click(function(){
		
		$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_bottom').animate({left:'154px',width:'70px'});
		
		$('#qlogin').css('display','block');
		$('#web_qr_login').css('display','none');
		});
if(getParam("a")=='0')
{
	$('#switch_login').trigger('click');
}

	});
	
function logintab(){
	scrollTo(0);
	$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
	$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
	$('#switch_bottom').animate({left:'154px',width:'96px'});
	$('#qlogin').css('display','none');
	$('#web_qr_login').css('display','block');
	
}


//根据参数名获得该参数 pname等于想要的参数名 
function getParam(pname) { 
    var params = location.search.substr(1); // 获取参数 平且去掉？ 
    var ArrParam = params.split('&'); 
    if (ArrParam.length == 1) { 
        //只有一个参数的情况 
        return params.split('=')[1]; 
    } 
    else { 
         //多个参数参数的情况 
        for (var i = 0; i < ArrParam.length; i++) { 
            if (ArrParam[i].split('=')[0] == pname) { 
                return ArrParam[i].split('=')[1]; 
            } 
        } 
    } 
}  


$(document).ready(function() {
	
	$('#submit').click(function() {
		if ($('#u').val() == "") {
			layer.msg("账号不能为空");
			$('#u').focus();
			return false;
		}
		if ($('#p').val() == "") {
			layer.msg("密码不能为空");
			$('#p').focus();
			return false;
		}
		
		$.ajax({
		type: 'post',
		url: "http://localhost:8080/aamsystem/login/user",
		data: {
			'username':$('#u').val(),
			'password':$('#p').val(),
		},
		dataType: 'json',
		success: function(data) {

			if (data !=null ) {
				layer.msg('登录成功！', {
					title: '提示框',
					time:1000,
					icon: 1,
				});
				setTimeout( function(){
					window.location.href = "user.jsp";
				}, 1000 );
			} else {
				layer.msg('用户名或密码错误！', {
					title: '提示框',
					time:1000,
					icon: 2,
				});
				$('#u').val("");
				$('#p').val("");
			}

		}
	});
		
	});
	

	$('#reg').click(function() {
		
			
		if ($('#nickname').val() == "") {
			$('#nickname').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#userCue').html("<font color='red'><b>×昵称不能为空</b></font>");
			return false;
		}	

		if ($('#nickname').val().length < 4 || $('#nickname').val().length > 16) {
			$('#nickname').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#userCue').html("<font color='red'><b>×昵称位4-16字符</b></font>");
			return false;

		}
		
//		$.ajax({
//			type: 'post',
//			url: "http://localhost:8080/aamsystem/login/getnickname",
//			data: {
//				'nickname':nickname,
//			},
//			dataType: 'json',
//			success: function(data) {
//
//				if (data > 0) {
//					$('#nickname').focus().css({
//						border: "1px solid red",
//						boxShadow: "0 0 2px red"
//					});
//					$("#userCue").html("<font color='red'><b>×昵称已被占用</b></font>");
//					return false;
//				} else {
//					$('#user').css({
//						border: "1px solid #D7D7D7",
//						boxShadow: "none"
//					});
//				}
//
//			}
//		});
		if ($('#passwd').val().length < 3) {
			$('#passwd').focus();
			$('#userCue').html("<font color='red'><b>×密码不能小于" + 3 + "位</b></font>");
			return false;
		}
		
		if ($('#username').val() == "") {
			$('#username').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#userCue').html("<font color='red'><b>×真实姓名不能为空</b></font>");
			return false;
		}
		
		var sqq = /^[1-9]{1}[0-9]{4,9}$/;
		if (!sqq.test($('#phone').val())) {
			$('#phone').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#userCue').html("<font color='red'><b>×电话号码格式不正确</b></font>");return false;
		} else {
			$('#phone').css({
				border: "1px solid #D7D7D7",
				boxShadow: "none"
			});
			
		}
		
		if ($('#s_session').val()=="" ) {
			$('#s_session').focus();
			$('#userCue').html("<font color='red'><b>×请选择毕业届别</b></font>");
			return false;
		}

		$.ajax({
			type: 'post',
			url: "http://localhost:8080/aamsystem/login/insertalumnus",
			data: {
				'alumnus_nickname':$('#nickname').val(),
				'alumnus_name':$('#username').val(),
				'alumnus_password':$('#passwd').val(),
				'alumnus_session':$('#s_session').val(),
				'alumnus_sex':$("input[name='sex']:checked").val(),
				'alumnus_telephone':$('#phone').val(),
			},
			dataType: 'json',
			success: function(data) {
				if (data > 0) {
					layer.msg('请登录！', {
						title: '提示框',
						time:1000,
						icon: 1,
					});
					setTimeout( function(){
						window.location.href = "login.html";
					}, 2000 );//延迟5000毫米
				} else {
					layer.msg('注册失败！');
					window.location.href = "login.html";
				}

			}
		});
	});		
});