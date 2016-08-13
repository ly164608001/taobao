<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登入页</title>
    <script type="text/javascript">
    	$(function(){
    		$('#login').click(function(){
    			var $msg = $('#msg');
    			var username = $('#username').val();
    			var password = $('#password').val();
    			if(username == ''){
    				$msg.html('请输入用户名');
    				$msg.show();
    				return;
    			}
    			
    			if(password== ''){
    				$msg.html('请输入密码');
    				$msg.show();
    				return;
    			}
    			
    			$.ajax({  
					url : '${basePath}front/tologin.htm', 
					type : 'POST',
					data : {'username':username,'password':password},
					datatype : "json",
					success : function(result) {
						var rj = JSON.parse(result);
						console.info(rj);
						if(rj.success){
							window.location.href = basePath + 'front/main.htm';
						}else{
							$msg.html(rj.msg);
		    				$msg.show(); 
						}
					}  
				});
    			
    		});
    		
    		
    	});
    </script>
 </head>
<body>
    <div class="indexCenter-login">
        <div class="login-logo">
            <img src="${basePath}/static/css/front/images/logo-black.png"></div>
        <div class="login-txt clearfix mt10">
            <div class="login-ad f-l">
                <img src="${basePath}/static/css/front/images/login-ad.jpg"></div>
            <div class="login-ipt f-l">
                <h3>会员登入</h3>
                <div class="login-ipt-txt mt30">
                    <input type="text" name="username" id="username" placeholder="用户名" />
                    <img src="${basePath}/static/css/front/images/icon-username.png" width="16" height="16"></div>
                <div class="login-ipt-txt mt15">
                    <input type="password" name="password" id="password" placeholder="密码" />
                    <img src="${basePath}/static/css/front/images/icon-psw.png" width="16" height="16"></div>
                <div class="login-ipt-txt mt15">
                    <div class="reCaptcha">
                        <input type="text" placeholder="请输入手机验证码">
                        <input class="btn-reCaptcha btn-reCaptcha-y" type="button" value="获取验证码">
                        <input class="btn-reCaptcha btn-reCaptcha-t" type="button" value="倒计时60S" style="display: none;"></div>
                </div>
                <div class="login-link clearfix ">
                    <span class="rememberPas f-l mt10">
                        <input type="checkbox" name="rememberPas">&nbsp;&nbsp;记住用户名</span>
                    <!-- <a href="#" class="rememberPas-link f-l">忘记密码?</a> -->
                <a href="#" class="f-r rememberPas-resige mt10">免费注册</a>
               
            </div>
            <div class="errMsg">
                <span class="red" id="msg" style="display: none;">你的信息有误</span>
            </div>
            <a href="javascript:void(0);" id="login" class="btn-login mt20">登入</a>

        </div>

    </div>
</div>

<%@include file="/WEB-INF/views/front/buyer/footer.jsp" %>
</body>
</html>
