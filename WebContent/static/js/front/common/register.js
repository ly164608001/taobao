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