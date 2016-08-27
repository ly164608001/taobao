<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>注册</title>
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
                        <input type="text" name="username" placeholder="请输入用户名" />
                    </li>
                    <li class="clearfix">
                        <label>
                            设置账号密码： <em class="red">*</em>
                        </label>
                        <input type="text" name="password" placeholder="请输入密码" />
                        <div class="level">
                            <span class="level-weak">弱</span>
                            <span class="level-middle">中</span>
                            <span class="level-strong">强</span>
                        </div>
                    </li>
                    <li class="clearfix">
                        <label>
                            确认账号密码：
                            <em class="red">*</em>
                        </label>
                        <input type="text" name="repassword" placeholder="请确认密码" />
                        <span class="tip red">两次密码不一致，请重新输入</span>
                    </li>
                    <li class="clearfix">
                        <label>
                            QQ号码：
                            <em class="red">*</em>
                        </label>
                        <input type="text" name="detailInfo.qq" placeholder="请输入手机号" />
                        <span class="tip">请填写您常使用的QQ号码</span>
                    </li>
                   <!--  <li class="clearfix msg-tips">
                        <p>QQ请一定正确填写，客服在验证审核环节及后续服务时都会使用QQ联系你</p>
                    </li> -->
                    <li class="clearfix">
                        <label>
                            输入手机号：
                            <em class="red">*</em>
                        </label>
                        <input type="text" name="phone" placeholder="请输入手机号" />
                        <span class="tip">请填写您常使用手机号码</span>
                    </li>
                    <!-- <li class="clearfix">
                        <label>
                            验证码：
                            <em class="red">*</em>
                        </label>
                        <div class="reCaptcha checkyan">
                            <input type="text" placeholder="请输入手机验证码" class="checkyanIpt" />
                            <span class="checkyanImg">验证码</span>
                           <span class="tip">看不清？ <a href="#" class="red">换一换</a></span>
                           <span class="tip">请输入验证码</span>
                        </div>
                    </li> -->
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
            </div>
            <input class="btn-now" type="button" value="确认并注册" />
        </div>
    </div>
<%@include file="/WEB-INF/views/front/buyer/footer.jsp" %>
</body>
</html>
