function tologin(){
	window.location.href = basePath + 'front/login.htm';
}
function authPasswd(value) {
    if(value.length >=6) {
        if(/[a-zA-Z]+/.test(value) && /[0-9]+/.test(value) && /\W+\D+/.test(value)) {
            noticeAssign(1);
        }else if(/[a-zA-Z]+/.test(value) || /[0-9]+/.test(value) || /\W+\D+/.test(value)) {
            if(/[a-zA-Z]+/.test(value) && /[0-9]+/.test(value)) {
                noticeAssign(-1);
            }else if(/\[a-zA-Z]+/.test(value) && /\W+\D+/.test(value)) {
                noticeAssign(-1);
            }else if(/[0-9]+/.test(value) && /\W+\D+/.test(value)) {
                noticeAssign(-1);
            }else{
                noticeAssign(0);
            }
        }
    }else{
        noticeAssign(null); 
    }
    $("#rePassword").val("");
    $("#rePwdTip").html("");
}
 
function noticeAssign(num) {
    if(num == 1) {
        $('#level-weak').addClass("level-weak");
        $('#level-middle').addClass("level-middle");
        $('#level-strong').addClass("level-strong");
    }else if(num == -1){
        $('#level-weak').addClass("level-weak");
        $('#level-middle').addClass("level-middle");
        $('#level-strong').removeClass("level-strong");
    }else if(num ==0) {
        $('#level-weak').addClass("level-weak");
        $('#level-middle').removeClass("level-middle");
        $('#level-strong').removeClass("level-strong");
    }else{
        $('#level-weak').removeClass("level-weak");
        $('#level-middle').removeClass("level-middle");
        $('#level-strong').removeClass("level-strong");
    }
}
function getCaptcha(key){
	var target = $("input[name=phone]").val();
	if(key == null){
		if(!isMobilePhone(target)){
			$("input[name=phone]").focus();
			return false;
		}
	}
	var url = basePath + "front/getCaptcha.htm?phone="+target+"&key="+key;
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