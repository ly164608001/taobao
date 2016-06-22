<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<script type="text/javascript">
function checkSubmit(){
	
	var password = $("#password").val();
	var rePassword = $("#rePassword").val();
	if(isNull(password)){
		$("#password").focus();
		return false;
	}
	if(isNull(rePassword)){
		$("#rePassword").focus();
		return false;
	}
	$("#resetPwdForm").submit();
}
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
</script>
</head>

<body>
<!--register-->
<div class="register-header">
	<div class="register-header-w1000 clearfix">
    	<div class="register-header-l">
        	<div class="regist-myjz-logo fl mr20"><img src="${basePath}static/css/front/images/regist-myjz-logo.png" /></div>
            <a class="goback" href="#">返回万万楼首页</a>
        </div>
        <div class="register-header-r">
        	<a class="goback" href="#">已有微太网账号？</a>
            <input class="LoginNow mt40 ml5" type="button" value="马上登录" />
        </div>
    </div>
</div>
<div class="register-main">
	<form id="resetPwdForm" action="${basePath}front/resetResult.htm" method="post">
	<div class="register-main-w1000">
		<div class="register-main-title">找回密码</div>
    	<div class="register-main-content">
    		<div class="regist-bar03"></div>
            <p class="tip-text">身份验证通过！<a class="red" href="#">${user.username}</a> 用户，请设定您的新登录密码：</p>
            <ul style="padding-left:200px;">
            	<li class="clearfix">
            		<input type="hidden" name="id" value="${user.id}"/>
            		<input type="hidden" name="username" value="${user.username}"/>
                    <label>密码：<em class="red">*</em></label>
                    <input type="text" name="password" id="password" maxlength="16" placeholder="请输入密码"
                    	onfocus="javascript:$('.password-tip').show();"
                    	onblur="authPasswd(this.value);javascript:$('.password-tip').hide();"
                    	onkeyup="authPasswd(this.value);" />
                    <div class="password-tip" style="display: none">
                    	<div class="Security-level">
                 			安全等级：
                            <span id="level-weak">弱</span>
	                        <span id="level-middle">中</span>
	                        <span id="level-strong">强</span>
                        </div>
                        <div class="tip-item">
                        	<ul>
                            	<li>长度6-16个字符</li>
                                <li>只能包含大小写字母、数字以及标点符号（除空格）</li>
                                <li>用户密码不能和支付密码相同</li>
                            </ul>
                            <span class="lsharp"><img src="${basePath}static/css/front/images/lsharp.png" width="7" height="12" /></span>
                        </div>
                    </div>
                    <span id="passwordTip" class="tip"></span>
                </li>
                <li class="clearfix">
                    <label>确认密码：<em class="red">*</em></label>
                    <input type="text" name="rePassword" id="rePassword" onblur="checkPwd(this.value);" placeholder="请确认密码"/>
                    <span id="rePwdTip" class="tip"></span>
                </li>
            </ul>
    	</div>
        <input class="btn-register-ok" type="button" value="确定" onclick="checkSubmit()"/>
    </div>
    </form>
</div>
<%@include file="/WEB-INF/views/front/foot.jsp" %>
</body>
</html>
