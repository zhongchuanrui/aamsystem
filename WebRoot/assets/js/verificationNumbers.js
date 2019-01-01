
function showCheck(a) {
	
	
	$("#icode").css("background-color",_setBackgroundStyle())
	.css("color","black")
	.attr("value",a);

}
var code;
function createCode() {
	code = "";
	var codeLength = 4;
	var selectChar = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd',
			'e', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's',
			't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F',
			'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U',
			'V', 'W', 'X', 'Y', 'Z');
	for (var i = 0; i < codeLength; i++) {
		var charIndex = Math.floor(Math.random() * 60);
		code += selectChar[charIndex];
	}
	if (code.length != codeLength) {
		createCode();
	}

	showCheck(code);
}

function _setStyle(codeObj) {
	var fnCodeObj = new Array();
	var col = new Array('#BF0C43', '#E69A2A', '#707F02', '#18975F', '#BC3087', '#73C841', '#780320', '#90719B', '#1F72D8', '#D6A03C', '#6B486E', '#243F5F', '#16BDB5');
	var charIndex;
	for(var i = 0; i < codeObj.length; i++) {
		charIndex = Math.floor(Math.random() * col.length);
		fnCodeObj.push('<font color="' + col[charIndex] + '">' + codeObj.charAt(i) + '</font>');
	}
	return fnCodeObj.join('');
}

function _setBackgroundStyle() {
	var col = new Array('#ECFAFB', '#FCEFCF', '#D0F0DF', '#DCDDD8', '#F1DEFF',
			'#ACE1F1');
	var charIndex;
	charIndex = Math.floor(Math.random() * col.length);
	
	 return col[charIndex];
}

function validate() {
	
	var username =$("#username").val();
	var password =$("#password").val();
	var codetextupperCase =$("#codetext").val().toUpperCase();
	
	if (codetextupperCase.length <= 0) {
		$("#codetext").attr("placeholder",
				"请输入验证码");		
		$("#error").css("background","#5cbdaa").html("请输入验证码");
	}else if (codetextupperCase != code.toUpperCase()) {
		$("#codetext").val("").attr("placeholder","请输入验证码");
		$("#error").html("验证码错误");
		createCode();
		return false;
	}

}