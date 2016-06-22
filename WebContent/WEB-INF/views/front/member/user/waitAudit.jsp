<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心-用户管理-认证-审核中-iframe</title>
<link href="${basePath}/static/css/front/wan.reset.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/public.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/PersonalCenter.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/tradeCenter.css" rel="stylesheet" type="text/css" >
</head>

<body>
<!--PersonalCenter-main-r-->
        <div class="PersonalCenter-main-r">
            <!--CaptureroomRecord-->
            <div class="CaptureroomRecord">
                <!--CaptureroomRecord-title-->
                <div class="MyFootprint-title"><span class="level-1">个人实名认证</span></div>
                <div class="personStep-img">
                    <img src="${basePath}/static/css/front/images/person-step04.png">
                </div>
                <p class="updown-msg">您提交的信息正在审核中</p>
                <!--SecuritySetting-main-->
                <div class="CaptureroomRecord-main personalTrust">
                    <div class="base">
                        <div class="PersonalData-title orange">身份信息</div>
                        <div class="PersonalData-base clearfix">
                            <ul>
                                <li class="clearfix">
                                    <label>真实姓名：</label>
                                    <span class="btn-name">${authInfo.realname }</span>
                                </li>
                                <li class="clearfix">
                                    <label>身份证号：</label>
                                    <span class="btn-name">${authInfo.certificateno }</span>
                                </li>
                                <li class="clearfix">
                                    <label>手机号：</label>
                                    <span class="btn-name">13845210594</span>
                                </li>
                                <li class="clearfix">
                                    <label>实例：</label>
                                    <div class="now-head idCard-msg"><img src="${basePath}/${authInfo.cardphoto }" width="321" height="220" /></div>
                                </li>
                                <li class="clearfix">
                                    <label>实例：</label>
                                    <div class="now-head idCard-msg"><img src="${basePath}/${authInfo.handcardphoto }" width="321" height="227" /></div>
                                </li>
                                <div class="clear"></div>
                            </ul>
                        </div>
                        <div class="PersonalData-title orange">银行信息</div>
                        <div class="PersonalData-base clearfix">
                            <ul>
                                <li class="clearfix">
                                    <label>银行开户行：</label>
                                    <span class="btn-name">${authInfo.realname }</span>
                                </li>
                                <li class="clearfix">
                                    <label>开户银行：</label>
                                    <span class="btn-name">${authInfo.openingbank }</span>
                                </li>
                                <li class="clearfix">
                                    <label>银行账号：</label>
                                    <span class="btn-name">${authInfo.bankno }</span>
                                </li>
                                <div class="clear"></div>
                            </ul>
                            <div class="btnStep mt100">
                                    <a href="javascript:void(0)"
										onclick="parent.changeMenu('${basePath}/au/identification.htm')">上一步</a>
                                    <a href="javascript:void(0)"
										onclick="parent.changeMenu('${basePath}/au/confirmMoney.htm')">确认</a>
                                </div> 
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
</body>
<script type="text/javascript" src="${basePath}/static/js/front/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}/static/js/front/style.js"></script>
</html>
