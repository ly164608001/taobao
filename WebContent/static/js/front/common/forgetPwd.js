function checkPwd(value){
	var pwd = $('#password').val();
	if(value == pwd){
		$("#rePwdTip").html("");
		return true;
	}else{
		$("#rePwdTip").html("两次密码不一致，请重新输入");
		return false;
	}
}
function getCaptcha(){
	var target = $("#phone").val();
	if(!isMobilePhone(target)){
		$("#phone").focus();
		return false;
	}
	var url = basePath + "front/getCaptcha.htm?target="+target;
	$.ajax({
		type : "POST",
		url : url,
		datatype : "json",
		success : function(result) {
			var res = JSON.parse(result);
			if (res.success) {
				//进入倒计时
				remainTime();
			} else {
				$("#captchaTip").html("服务器繁忙，请稍后再试!");
			}
		},
		error : function() {
			$("#captchaTip").html("服务器繁忙，请稍后再试!");
		}
	});
}
var i = 59; 
var timer;
function remainTime(){
	if(i == 0){
		i = 59;
		$("input[class='btn-reCaptcha']").attr("disabled", false);
		$("input[class='btn-reCaptcha']").val("获取验证码");
		clearTimeout(timer);
	}else if(i > 0){
		$("input[class='btn-reCaptcha']").val(i-- + "s");
		$("input[class='btn-reCaptcha']").attr("disabled", true);
		timer = setTimeout("remainTime()",1000);
	}
}
function checkSubmit(){
	var username = $("#username").val();
	var password = $("#password").val();
	var phone = $("#phone").val();
	var captcha = $("#captcha").val();
	if(isNull(username)){
		$("#username").focus();
		return false;
	}
	if(isNull(password)){
		$("#password").focus();
		return false;
	}
	if(isNull(phone)){
		$("#phone").focus();
		return false;
	}
	if(isNull(captcha)){
		$("#captcha").focus();
		return false;
	}
	submitForm();
}
function submitForm()
{
	var url = basePath + "front/doRegister.htm";
	$.ajax({
		type : "POST",
		url : url,
		datatype : "json",
		data : $("#registerForm").serialize(),
		success : function(result) {
			var res = JSON.parse(result);
			if (result.success) {
				//注册成功页面
			} else {
				$("#msg").html(result.msg);
			}
		},
		error : function() {

		}
	});
}