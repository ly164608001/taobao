<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户管理-个人资料</title>
<link href="${basePath}/static/css/front/wan.reset.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/public.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/PersonalCenter.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${basePath}/static/css/front/tradeCenter.css">
</head>

<body>
<!--PersonalCenter-main-r-->
        <div class="PersonalCenter-main-r">
            <!--CaptureroomRecord-->
            <div class="CaptureroomRecord">
                <!--CaptureroomRecord-title-->
                <div class="MyFootprint-title"><span class="level-1">用户管理</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-2">个人资料</span></div>
                <!--SecuritySetting-main-->
                <div class="CaptureroomRecord-main">
                    <div class="base">
                        <div class="PersonalData-title">基本信息</div>
                        <div class="PersonalData-base clearfix">
                            <ul>
                                <li class="clearfix">
                                    <label>用户名：</label>
                                    <input class="btn-name" type="text" />
                                </li>
                                <li class="clearfix">
                                    <label>真实姓名：</label>
                                    <input class="btn-name" type="text" />
                                </li>
                                <li class="clearfix">
                                    <label>当前头像：</label>
                                    <div class="now-head"><img src="${basePath}static/css/front/images/house-pic.png" width="100" height="100" /></div>
                                    <div class="upload">
                                        <input class="btn-upload" type="button" value="上传头像" />
                                        <span>（头像支持jpg / png / gif / jpeg格式，图片文件大小<em>不超过800k</em>）</span>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <label>性别：</label>
                                    <div class="li-r">
                                        <ul class="sex">
                                            <li><input type="radio" /><span>男</span></li>
                                            <li><input type="radio" /><span>女</span></li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <label>生日：</label>
                                    <div class="li-r">
                                        <input class="btn-name" type="text" />
                                        <span class="time-pic"></span>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <label>居住地：</label>
                                    <div class="li-r">
                                        <ul class="residence">
                                            <li>
                                                <select class="item-select">
                                                    <option>省份</option>
                                                </select>
                                            </li>
                                            <li>
                                                <select class="item-select">
                                                    <option>市/县</option>
                                                </select>
                                            </li>
                                            <li>
                                                <select class="item-select">
                                                    <option>区/街道</option>
                                                </select>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <label>证件类型：</label>
                                    <div class="li-r">
                                        <select class="item-select">
                                            <option>选择证件</option>
                                        </select>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <label>教育程度：</label>
                                    <div class="li-r">
                                        <select class="item-select">
                                            <option></option>
                                        </select>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <label>职业：</label>
                                    <div class="li-r">
                                        <select class="item-select">
                                            <option>选择职业</option>
                                        </select>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <label>职务：</label>
                                    <input class="btn-name" type="text" value="输入职务" />
                                </li>
                                <div class="clear"></div>
                            </ul>
                            
                        </div>
                        <div class="base-line"></div>
                    </div>
                    <div class="base">
                        <div class="PersonalData-title">联系信息</div>
                        <div class="PersonalData-base clearfix">
                            <ul>
                                <li class="clearfix">
                                    <label>手机号码：</label>
                                    <input class="btn-name" type="text" value="15280082451" />
                                    <a class="revise" href="javascript:void(0);">修改</a>
                                </li>
                                <li class="clearfix">
                                    <label>qq：</label>
                                    <input class="btn-name" type="text" />
                                </li>
                                <li class="clearfix">
                                    <label>联系地址：</label>
                                    <input class="btn-name" type="text" />
                                </li>
                                <li class="clearfix">
                                    <label>邮编：</label>
                                    <input class="btn-name" type="text" />
                                </li>
                                <div class="clear"></div>
                            </ul>
                        </div>
                    </div>
                    <div class="save-message">
                        <input class="btn-save" type="button" value="保存信息" />
                        <p>（请正确填写您的联系方式，您参加万万楼各类活动时，我们能更方便与您联系。）</p>
                    </div>
                </div>
            </div>
        </div>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/style.js"></script>
</html>