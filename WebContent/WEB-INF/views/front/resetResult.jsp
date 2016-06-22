<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<script type="text/javascript">
var time=9;//设定跳转的时间 
setInterval("refer()",1000); //启动1秒定时 
function refer(){  
    if(time<=0){ 
        tologin(); //#设定跳转的链接地址 
    } 
    $('#clockvalue').html(time); // 显示倒计时 
    time--; // 计数器递减 
} 
</script>
</head>

<body>
<!--register-->
<div class="register-header">
	<div class="register-header-w1000 clearfix">
    	<div class="register-header-l">
        	<div class="regist-myjz-logo fl mr20"><img src="images/regist-myjz-logo.png" /></div>
            <a class="goback" href="#">返回万万楼首页</a>
        </div>
        <div class="register-header-r">
        	<a class="goback" href="#">已有微太网账号？</a>
            <input class="LoginNow mt40 ml5" type="button" value="马上登录" />
        </div>
    </div>
</div>
<div class="register-main">
	<form id="resetSuccessForm" action="${basePath}front/login.htm" method="post">
	<div class="register-main-w1000">
		<div class="register-main-title">找回密码</div>
    	<div class="register-main-content">
    		<div class="regist-bar04"></div>
            <p class="tip-text"><a class="red" href="#">${user.username}</a> 用户，恭喜您登录密码重置成功！<br />现在您可以使用新密码登录！</p>  
    	</div>
        <div class="clearfix">
        	<input class="btn-register-ok fl" type="button" value="去登录" onclick="tologin();"/>
            <span class="clock">（&nbsp;<em id="clockvalue" class="blue">10</em>&nbsp;秒自动跳转登录页）</span>
        </div>       
    </div>
    </form> 
</div>
<%@include file="/WEB-INF/views/front/foot.jsp" %>
</body>
</html>
