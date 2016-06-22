<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="${basePath}static/js/front/common/register.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
</head>
<body>
<!--register-->
<div class="register-header">
	<div class="register-header-w1000 clearfix">
    	<div class="register-header-l">
        	<div class="regist-myjz-logo fl mr20">
        		<a href="${basePath}front/index.htm">
        			<img src="${basePath}/static/css/front/images/regist-myjz-logo.png" />
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
	<div class="register-main-w1000">
		<div class="register-main-title">会员注册</div>
    	<div class="register-main-content" style="padding-left:220px;">
    		<form id="registerForm">
	    		<ul>
	                <li class="clearfix">
	                    <label>用户名：<em class="red">*</em></label>
	                    <input type="text" id="username" name="username" placeholder="请输入用户名"/>
	                    <span id="usernameTip" class="tip"></span>
	                </li>
	                <li class="clearfix">
	                    <label>设置账号密码：<em class="red">*</em></label>
	                    <input type="text" id="password" name="password" maxlength="16" placeholder="请输入密码"
	                    	onkeyup="authPasswd(this.value);" onblur="authPasswd(this.value);"/>
	                    <div class="level">
	                    	<span id="level-weak">弱</span>
	                        <span id="level-middle">中</span>
	                        <span id="level-strong">强</span>
	                    </div>
	                </li>
	                <li class="clearfix">
	                    <label>确认账号密码：<em class="red">*</em></label>
	                    <input type="text" name="rePassword" id="rePassword" onblur="checkPwd(this.value);" placeholder="请确认密码"/>
	                    <span id="rePwdTip" class="tip"></span>
	                </li>
	                <li class="clearfix">
	                    <label>输入手机号：<em class="red">*</em></label>
	                    <input type="text" name="phone" id="phone" placeholder="请输入手机号"/>
	                    <span id="phoneTip" class="tip"></span>
	                </li>
	                <li class="clearfix">
	                    <label>手机验证码：<em class="red">*</em></label>
	                    <div class="reCaptcha">
	                        <input type="text" id="captcha" name="captcha" maxlength="6" placeholder="请输入手机验证码"/>
	                        <input class="btn-reCaptcha" onclick="getCaptcha();"
	                        	type="button" value="获取验证码" />
	                    </div>   
	                    <span id="captchaTip" class="tip"></span>
	                </li>
	        	</ul>
	        </form>
    	</div>
        <input class="btn-now" type="button" value="立即注册" onclick="checkSubmit();"/>
    </div>
</div>
<%@include file="/WEB-INF/views/front/foot.jsp" %>
</body>
</html>
