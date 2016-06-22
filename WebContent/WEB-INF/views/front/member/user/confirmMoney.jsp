<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心-用户管理-认证-确认打款-iframe</title>
<link href="${basePath}/static/css/front/wan.reset.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/public.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/PersonalCenter.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/tradeCenter.css" rel="stylesheet" type="text/css" >
<link href="${basePath}/static/css/front/house.css" rel="stylesheet" type="text/css" >
</head>
<body>
 <!--PersonalCenter-main-r-->
        <div class="PersonalCenter-main-r">
            <!--CaptureroomRecord-->
            <div class="CaptureroomRecord">
                <!--CaptureroomRecord-title-->
                <div class="MyFootprint-title"><span class="level-1">个人实名认证</span></div>
                <div class="personStep-img">
                    <img src="${basePath}/static/css/front/images/person-step05.png">
                </div>
                <p class="personMsgTitle">请将验证款亿银行转账方式转入一下收款账号，以验证银行卡是否属于你本人：</p>
                <div class="table personMsgTable">
                    <table>
                        <tbody>
                            <tr>
                                <td>收款方全称</td>
                                <td>${authInfo.realname }</td>
                            </tr>
                            <tr>
                                <td>收款银行</td>
                                <td>${authInfo.openingbank }</td>
                            </tr>
                            <tr>
                                <td>收款银行所在地</td>
                                <td>福建福州</td>
                            </tr>
                            <tr>
                                <td>收款银行开户行</td>
                                <td>福州古田支行</td>
                            </tr>
                            <tr>
                                <td>收款账号：</td>
                                <td>${authInfo.bankno }</td>
                            </tr>
                            <tr>
                                <td>验证金额</td>
                                <td><span class="red">0.01</span>元</td>
                            </tr>
                            <tr>
                                <td>备注</td>
                                <td>个人实名认证</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
</body>
<script type="text/javascript" src="${basePath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}/js/style.js"></script>
</html>
