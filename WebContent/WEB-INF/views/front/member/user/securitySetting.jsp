<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心-用户管理-安全设置-iframe</title>
<link href="${basePath}static/css/front/wan.reset.css" rel="stylesheet" type="text/css" />
<link href="${basePath}static/css/front/public.css" rel="stylesheet" type="text/css" />
<link href="${basePath}static/css/front/PersonalCenter.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${basePath}static/css/front/tradeCenter.css" />
</head>

<body>
 <!--PersonalCenter-main-r-->
    <div class="PersonalCenter-main-r">
          <!--CaptureroomRecord-->
          <div class="CaptureroomRecord">
              <!--CaptureroomRecord-title-->
              <div class="MyFootprint-title"><span class="level-1">用户管理</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-2">安全设置</span></div>
                <!--SecuritySetting-main-->
                <div class="CaptureroomRecord-main SecuritySetting-main">
                    <div class="account-title">账户安全等级：<span>弱</span><a href="javascript:void(0);">建议修改密码</a></div>
                    <div class="account-content clearfix">
                      <div class="account-pic"></div>
                        <div class="account-message">
                          <ul>
                              <li>账户名：<span class="color_6">2***2</span></li>
                      <li>账号：<span class="color_6">139***139</span></li>
                                <!--先看这里，进度条和文字颜色，文字低sp_ch4红色，中sp_ch3橙色，较高sp_ch2黄色，高sp_ch1绿色，进度条低sp_jdt4红色，中sp_jdt3橙色，较高sp_jdt3黄色，高sp_jdt1绿色-->
                      <li>您的账户安全等级：<span class="sp_ch3">弱</span>&nbsp;&nbsp;&nbsp;<span class="sp_jdt"><span style="width:30%;" class="sp_jdt4"></span></span>&nbsp;&nbsp;</li>
                      <li class="li_t12">为了您的账户安全，建议您：<a href="#">实名认证</a></li>
                            </ul>
                        </div>
                        <div class="login-message">
                          <dl>
                              <dt>上次登录信息：</dt>
                                <dd>2016年04月27日 17时57分</dd>
                                <dd>未分配或者内网IP</dd>
                            </dl>
                        </div>
                    </div>
                    <div class="account-detail">
                      <dl>
                          <dt>
                              <ul>
                                  <li class="li_1"><span class="sp_1">&nbsp;</span></li>
                          <li class="li_2">
                            <p class="p_1">登陆密码</p>
                            <p class="p_2">安全性高的密码可以使账户更安全，建议您定期更换密码。</p>
                          </li>
                          <li class="li_3">&nbsp;<span class="sp_2">中</span>&nbsp;</li>
                          <li class="li_3"><a href="#">修改</a><a href="#">忘记密码</a></li>
                                </ul>
                            </dt>
                            <dd></dd>
                            <dt>
                              <ul>
                                  <li class="li_1"><span class="sp_2">&nbsp;</span></li>
                          <li class="li_2">
                            <p class="p_1">支付密码</p>
                            <p class="p_2">账户资金变动、修改账户信息时需要输入的密码。</p>
                          </li>
                          <li class="li_3">&nbsp;<span class="sp_2">中</span>&nbsp;</li>
                          <li class="li_3"><a href="#">修改</a><a href="#">忘记密码</a></li>
                                </ul>
                            </dt>
                            <dd></dd>
                            <dt>
                              <ul>
                                  <li class="li_1"><span class="sp_3">&nbsp;</span></li>
                          <li class="li_2">
                            <p class="p_1">手机认证</p>
                            <p class="p_2">可用手机找回密码、接收订单提醒等，保障您的账户更加安全。</p>
                          </li>
                          <li class="li_3">&nbsp;<span class="sp_5">已认证</span>&nbsp;</li>
                          <li class="li_3"><a href="#">修改</a><a href="#">忘记密码</a></li>
                                </ul>
                            </dt>
                            <dd></dd>
                            <dt>
                              <ul>
                                  <li class="li_1"><span class="sp_5">&nbsp;</span></li>
                          <li class="li_2">
                            <p class="p_1">邮箱密保</p>
                            <p class="p_2">可用邮箱找回密码，保障您的账户更加安全。</p>
                          </li>
                          <li class="li_3">&nbsp;<span class="sp_5">强度高</span>&nbsp;</li>
                          <li class="li_3"><a href="#">修改</a><a href="#">忘记密码</a></li>
                                </ul>
                            </dt>
                            <dd></dd>
                            <dt>
                              <ul>
                                  <li class="li_1"><span class="sp_6">&nbsp;</span></li>
                          <li class="li_2">
                            <p class="p_1">qq绑定</p>
                            <p class="p_2">可用qq登录，保障您的登录更加方便。</p>
                          </li>
                          <li class="li_3">&nbsp;<span class="sp_5">强度高</span>&nbsp;</li>
                          <li class="li_3"><a href="#">修改</a><a href="#">忘记密码</a></li>
                                </ul>
                            </dt>
                            <dd></dd>
                            <dt>
                              <ul>
                                  <li class="li_1"><span class="sp_4">&nbsp;</span></li>
                          <li class="li_2">
                            <p class="p_1">实名认证</p>
                            <p class="p_2">用于提升账号的安全性和信任级别，认证后不能修改认证信息。</p>
                          </li>
                          <li class="li_3">&nbsp;<span class="sp_5">强度高</span>&nbsp;</li>
                          <li class="li_3"><a href="#">修改</a><a href="#">忘记密码</a></li>
                                </ul>
                            </dt>
                            <dd></dd>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
</body>
<script type="text/javascript" src="${basePath}static/js/front/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}static/js/front/style.js"></script>
</html>
