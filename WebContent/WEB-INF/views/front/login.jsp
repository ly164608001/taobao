<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登入界面</title>
<script type="text/javascript" src="${basePath }static/js/jquery.cookie.js"></script> 
<script type="text/javascript">
if (window != top) 
	top.location.href = location.href; 
function checkSubmit(){
	var username = $("#username").val();
	var password = $("#password").val();
	var rememberPas = $("input[name='rememberPas']").is(':checked');
	if(isNull(username)){
		$("#msg").html("用户名不能为空！");
		return ;
	}
	if(isNull(password)){
		$("#msg").html("密码不能为空！");
		return;
	}
	if(rememberPas){
		$.cookie("rememberPas", "true", { expires: 7 });
		$.cookie("username", username, { expires: 7 });
		$.cookie("password", password, { expires: 7 });
	}else{
		$.cookie("rememberPas", "false", { expires: -1 }); 
		$.cookie("username", '', { expires: -1 }); 
		$.cookie("password", '', { expires: -1 }); 
	}
	submitForm();
}
function submitForm()
{
	var url = "${basePath}front/tologin.json";
	$.ajax({
		type : "POST",
		url : url,
		datatype : "json",
		data : $("#loginForm").serialize(),
		success : function(result) {
			var res = JSON.parse(result);
			if (res.success) {
				window.location = "${basePath}front/main.htm";
			} else {
				$("#msg").html(res.msg);
			}
		},
		error : function() {

		}
	});
}
//初始化页面时验证是否记住了密码 
$(document).ready(function() { 
	if ($.cookie("rememberPas") == "true") { 
		$("input[name='rememberPas']").prop("checked", true); 
		$("#username").val($.cookie("username")); 
		$("#password").val($.cookie("password")); 
	} 
});
//验证码输入框按下回车
function randCodeKeyDown(){
	  var lKeyCode = (navigator.appname=="Netscape")?event.which:window.event.keyCode; //event.keyCode按的建的代码，13表示回车
		if(lKeyCode == 13){
			checkSubmit();
		}else{
			return false;
		}
}
</script>
</head>
<body>
<div class="indexCenter-login">
    <div class="login-logo">
    	<a href="${basePath}front/index.htm">
    		<img src="${basePath}/static/css/front/images/login-logo.png"/>
    	</a>
    </div>
    <div class="login-txt clearfix mt10">
        <div class="login-ad fl"><img src="${basePath}/static/css/front/images/login-ad.png"/></div>
        <div class="login-ipt fl">
        	<form id="loginForm" method="post">
	            <h3>登入万万楼</h3>
	            <div class="login-ipt-txt mt50">
	                <input id="username" name="username" type="text" placeholder="用户名/手机号" />
	                <img src="${basePath}/static/css/front/images/icon-username.png" width="16" height="16"/>
	            </div>
	            <div class="login-ipt-txt mt15">
	                <input id="password" name="password" onkeydown="randCodeKeyDown()"
	                	type="password" placeholder="密码" />
	                <img src="${basePath}/static/css/front/images/icon-psw.png" width="16" height="16"/>
	            </div>
	            <div class="login-link clearfix">
	                <span class="rememberPas fl">
	                	<input type="checkbox" name="rememberPas"/>&nbsp;&nbsp;记住密码
	                </span>
	                <a href="${basePath}front/forgetPwd.htm" class="rememberPas-link fl">忘记密码?</a>
	                <a href="${basePath}front/register.htm" class="fr rememberPas-resige">免费注册</a>
	            </div>
	            <div class="errMsg">
	            	<span id="msg" class="red"></span>
	            </div>
	            <a href="javascript:void(0)" class="btn-login mt20" onclick="checkSubmit();">登入</a>
	            <p class="mt10">使用合作网站账号登入万万楼：</p>
	            <div class="login-others mt10">
	                <a href="#"><img src="${basePath}/static/css/front/images/login-qq.png"/></a>
	            </div>
	         </form>
        </div>
        
    </div>
</div>
<%@include file="/WEB-INF/views/front/foot.jsp" %>
</body>
</html>
