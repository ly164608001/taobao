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
	var captcha = $("#captcha").val();
	if(isNull(captcha)){
		$("#msg").html("验证码不能为空！");
		return false;
	}
	$("#resetForm").submit();
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
	<form id="resetForm" action="${basePath}front/toResetPwd.htm" method="post">
		<div class="register-main-w1000">
			<div class="register-main-title">找回密码</div>
	    	<div class="register-main-content">
	    		<div class="regist-bar02"></div>
	    		<input type="hidden" name="username" value="${user.username}"/>
	    		<input type="hidden" name="phone" value="${user.phone}"/>
	    		<input type="hidden" name="id" value="${user.id}"/>
	            <ul style="padding-left:200px;">
	            	<li class="clearfix">
	                    <label>用户名：<em class="red">*</em></label>
	                    <span class="input-text">${user.username}</span>
	                </li>
	                <li class="clearfix">
	                    <label>手机号：<em class="red">*</em></label>
	                    <span class="input-text">${user.phone}</span>
	                </li>
	                <li class="clearfix">
	                    <label>手机验证码：<em class="red">*</em></label>
	                    <div class="reCaptcha">
	                        <input type="text" id="captcha" name="captcha"/>
	                        <input class="btn-reCaptcha" onclick="getCaptcha('${user.id}');" type="button" value="获取验证码"/>
	                    </div> 
	                    <div class="errMsg">
			            	<span id="msg" class="red ml10 mt10">${errorMsg}</span>
			            </div>  
	                </li>
	            </ul>
	    	</div>
	        <input class="btn-register-ok" type="button" value="确定" onclick="$('#resetForm').submit()"/>
	    </div>
     </form>
</div>
<%@include file="/WEB-INF/views/front/foot.jsp" %>
</body>
</html>
