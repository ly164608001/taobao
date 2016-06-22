<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找回密码</title>
<script type="text/javascript">
function checkSubmit(){
	var username = $("#username").val();
	var validateCode = $("#validateCode").val();
	if(isNull(username)){
		$("#msg").html("用户名不能为空！");
		return ;
	}
	if(isNull(validateCode)){
		$("#msg").html("验证码不能为空！");
		return;
	}
	$("#forgetPwdForm").submit();
}
//点击切换验证码
function changeVerifyCode(){
	$("#kaptcha").prop("src","${basePath}kaptcha.jpg?"+Math.floor(Math.random()*100));
}
</script>
</head>
<body>
<!--register-->
<div class="register-header">
	<div class="register-header-w1000 clearfix">
    	<div class="register-header-l">
        	<div class="regist-myjz-logo fl mr20">
        		<a href="${basePath}front/index.htm">
        			<img src="${basePath}static/css/front/images/regist-myjz-logo.png" />
        		</a>
        	</div>
            <a class="goback" href="${basePath}front/index.htm">返回万万楼首页</a>
        </div>
        <div class="register-header-r">
        	<a class="goback" href="${basePath}front/login.htm">已有微太网账号？</a>
            <input class="LoginNow mt40 ml5" type="button" value="马上登录" onclick="tologin();"/>
        </div>
    </div>
</div>
<div class="register-main">
	<form id="forgetPwdForm" method="post" action="${basePath}front/toValidateInfo.htm">
		<div class="register-main-w1000">
			<div class="register-main-title">找回密码</div>
	    	<div class="register-main-content">
	    		<div class="regist-bar01"></div>
	            <ul style="padding-left:200px;">
	            	<li class="clearfix">
	                    <label>用户名：<em class="red">*</em></label>
	                    <input type="text" id="username" name="username"/>
	                    <div class="errMsg">
			            	<span id="msg" class="red ml10 mt10">${errorMsg}</span>
			            </div>
	                </li>
	                <li class="clearfix">
	                    <label>验证码：<em class="red">*</em></label>
	                    <input type="text" id="validateCode" name="validateCode"/>
	                    <span>
	                    	<img id="kaptcha" src="${basePath}kaptcha.jpg" onclick="changeVerifyCode();"/>
	                    </span>
	                </li>
	            </ul>
	    	</div>
	        <input class="btn-register-ok" type="button" value="确定" onclick="checkSubmit();"/>
	    </div>
    </form>
</div>
<%@include file="/WEB-INF/views/front/foot.jsp" %>
</body>
</html>
