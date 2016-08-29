<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>注册</title>
    <script type="text/javascript">
    	function register(){
    		var repassword = $('#repassword').val();
    		var password = $('#password').val();
    			
    		if(isNull(repassword) || isNull(password)){
    			top.layer.msg('请将信息填写完整');
    			return;
    		}
    		if(repassword != password){
    			top.layer.msg('两次密码不一致');
    			return;
    		}
    		
    		$.ajax({
    			url:'${basePath}front/doRegister.htm',
    			dataType:'json',
    			data:$('#registerForm').serialize(),
    			success : function(result){
    				if(result.success){
    					top.layer.msg('注册成功');
    				}else{
    					top.layer.msg(result.msg);
    				}
    			}
    		});
    	}
    </script>
</head>
<body>
    <!--register-->
    <div class="register-header">
        <div class="register-header-w1000 clearfix">
            <div class="register-header-l">
                <div class="regist-wwl-logo fl mr20 login-logo">
                    <img src="${basePath}static/css/front/images/logo-black.png" />
                </div>
                <a class="goback" href="${basePath}front/login.htm">返回蚂蚁兼职首页</a>
            </div>
            <div class="register-header-r">
                <a class="goback" href="javascript:void(0)">已有蚂蚁兼职账号？</a>
                <input class="LoginNow mt40 ml5" type="button" value="马上登录" onclick="tologin();"/>
            </div>
        </div>
    </div>
    <div class="register-main">
        <div class="register-main-w1000">
            <div class="register-main-title">会员注册</div>
            <div class="register-main-content">
              <form id="registerForm">
                <ul>
                    <li class="clearfix">
                        <label>
                            我的身份： <em class="red">*</em>
                        </label>
                        <div class="radio-box clearfix label-checkWrap">
                            <input type="radio" name="type" checked="checked" class="f-l" value="1"/>
                            <label for="type" class="label-check">我是刷手</label>
                            <input type="radio" name="type" class="f-l" value="2"/>
                            <label for="type" class="label-check">我是商家</label>
                          </div>
                    </li>
                    <li class="clearfix">
                        <label>
                            用户名： <em class="red">*</em>
                        </label>
                        <input type="text" name="username" id="username" placeholder="请输入用户名" />
                    </li>
                    <li class="clearfix">
                        <label>
                            设置账号密码： <em class="red">*</em>
                        </label>
                        <input type="text" name="password" id="password" placeholder="请输入密码" />
                    </li>
                    <li class="clearfix">
                        <label>
                            确认账号密码：
                            <em class="red">*</em>
                        </label>
                        <input type="text" name="repassword" placeholder="请确认密码" id="repassword"/>
                        <!-- <span class="tip red">两次密码不一致，请重新输入</span> -->
                    </li>
                    <li class="clearfix">
                        <label>
                            输入手机号：
                            <em class="red">*</em>
                        </label>
                        <input type="text" name="phone" id="phone" placeholder="请输入手机号" />
                        <span class="tip">请填写您常使用手机号码</span>
                    </li>
                    <li class="clearfix">
                        <label>
                            手机验证码：
                            <em class="red">*</em>
                        </label>
                        <div class="reCaptcha">
                            <input type="text" name="captcha" placeholder="请输入手机验证码" />
                            <input class="btn-reCaptcha btn-reCaptcha-y" type="button" value="获取验证码" />
                        </div>
                    </li>
                </ul>
                </form>
            </div>
            <input class="btn-now" type="button" value="确认并注册" onclick="register();"/>
        </div>
    </div>
<%@include file="/WEB-INF/views/front/buyer/footer.jsp" %>
</body>
</html>
