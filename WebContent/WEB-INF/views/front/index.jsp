<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="${basePath}static/css/front/PersonalCenter.css" rel="stylesheet" type="text/css" />
<link href="${basePath}static/css/front/web.css" rel="stylesheet" type="text/css">
<link href="${basePath}static/css/front/house.css" rel="stylesheet" type="text/css" />
<title>万万楼</title>
</head>
<body>
<div class="PersonalCenter-header webIndex-header">
    <div class="PersonalCenter-header-w1200 fn-clear">
        <!--PersonalCenter-header-l-->
        <div class="PersonalCenter-header-l">
            <div class="myjz-logo"><a href="#"><img src="${basePath}static/css/front/images/myjz-logo.png" width="91" height="55" /></a></div>
            <div class="location"><span class="location-address">福州<a href="#" class="areaLocation" id="areaLocation">[切换]</a></span></div>
            <!-- <div class="PersonalCenter-header-nav fn-clear">
                <ul>
                    <li><a href="#">万万楼首页</a></li>
                    <li><a href="#">新房</a></li>
                    <li><a href="#">夺房</a></li>
                </ul>
            </div> -->
        </div>
        <!--PersonalCenter-header-r-->
        <div class="PersonalCenter-header-r clearfix webIndex-header-link">
            <ul class="clearfix">
                <li><a href="#">首页</a></li>
                <li><a href="#">新房</a></li>
                <li><a href="#">二手房</a></li>
                <li><a href="#">租房</a></li>
                <c:if test="${frontUser!=null}">
	                <li class="toggleLink">您好！<span class="sp-icon"><a href="#">福建三盛地产有限公司</a></span>
	                    <div class="userMsg" style="display: none;">
	                        <div class="userMsg-data clearfix">
	                          <img src="${basePath}static/css/front/images/icon-commet-head.png">
	                          <span class="userMsg-data-detail">
	                            <span class="userMsg-name">某某某用户</span> <br>
	                            <span class="userMsg-link"><span><a href="#">我的资料</a></span><span class="split">|</span><span><a href="#">我的账户</a></span></span>
	                          </span>
	                        </div>
	                        <div class="userMsg-link-body">
	                          <div class="userMsg-data-money">
	                            <span class="userMsg-data-money-detail">夺宝币：<span class="red">50,000</span></span><a href="#">查看</a>
	                          </div>
	                          <span class="Userline-hr"></span>
	                          <div class="privilege-link">
	                            <span class="userMsg-link"><span><a href="#">我的红包</a></span><span class="split">|</span><span><a href="#">我的抵扣卡卷</a></span></span>
	                          </div>
	                        </div>
	                      </div>
	                </li>
	                <li>丨</li>
	                <li><a href="#">退出</a></li>
	           </c:if>
	           <c:if test="${frontUser==null}">
	           		<li><a href="${basePath}front/login.htm">登入</a></li>
	                <li>丨</li>
	                 <li><a href="${basePath}front/register.htm">注册</a></li>
	                <li>丨</li>
	                <li><a href="javascript:void(0);">联系客服</a></li>
	                <li>丨</li>
	           </c:if>
	           <li>
                  <span class="sp-icon"><a href="javascript:void(0);">网站导航</a></span>
                  <div class="userMsg userMsg-link" style="display:none">
                    <ul class="clearfix">
                      <li><a href="http://www.jicaihang.com" target="_blank">机材行</a></li>
                      <li><a href="http://www.nonglinshui.com" target="_blank">农林水特</a></li>
                      <li><a href="http://adv.lxhrainynet.com" target="_blank">微太联盟</a></li>
                      <li><a href="http://www.lxhrainynet.com" target="_blank">微太网</a></li>
                    </ul>
                  </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- webIndex-header-link-title -->
    <div class="webIndex-header-link-title mt120">
        <img src="${basePath}static/css/front/images/index-banner-title.png" alt="" />
    </div>
    <div class="searchWrap clearfix mt70">
        <div class="search-txt fl clearfix">
            <select class="fl">
                <option value="">新房</option>
                <option>租房</option>
                <option>二手房</option>
            </select>
            <input type="text" name="" class="fl">
            <a href="#" class="btn-search fl">搜索</a>
        </div>
        <div class="searchMap fr"><a href="#"><img src="${basePath}static/css/front/images/where-map.png">地图找房</a></div>
    </div>
    <div class="areaSel mt10">
        <dl class="clearfix">
            <dt>区域：</dt>
            <dd><a href="#">仓山</a></dd>
            <dd><a href="#">鼓楼</a></dd>
            <dd><a href="#">晋安</a></dd>
            <dd><a href="#">马尾</a></dd>
            <dd><a href="#">台江</a></dd>
            <dd><a href="#">闽侯</a></dd>
            <dd><a href="#">连江</a></dd>
            <dd><a href="#">长乐</a></dd>
            <dd><a href="#">平潭</a></dd>
            <dd><a href="#">永泰</a></dd>
        </dl>
        <dl class="clearfix pt15">
            <dt>价格：</dt>
            <dd><a href="#">50万以下</a></dd>
            <dd><a href="#">50-80万</a></dd>
            <dd><a href="#">80-100万</a></dd>
            <dd><a href="#">100-120万</a></dd>
            <dd><a href="#">120-150万</a></dd>
            <dd><a href="#">150-200万</a></dd>
            <dd><a href="#">200-300万</a></dd>
            <dd><a href="#">300万以上</a></dd>
        </dl>
    </div>
</div>
<!-- container -->
<div class="container">
    <!-- adLink -->
    <div class="adLink mt50">
        <ul class="clearfix">
            <li><a href="#"><img src="${basePath}static/css/front/images/ad-link01.png"></a> <span class="adLink-title">找新房</span><span class="adLink-txt">优质新房，惠无止境</span></li>
            <li><a href="#"><img src="${basePath}static/css/front/images/ad-link02.png"></a> <span class="adLink-title">找二手房</span><span class="adLink-txt">海量房源，真实代售</span></li>
            <li><a href="#"><img src="${basePath}static/css/front/images/ad-link03.png"></a> <span class="adLink-title">找出租房</span><span class="adLink-txt">真实房源，有假有赔</span></li>
            <li><a href="#"><img src="${basePath}static/css/front/images/ad-link04.png"></a> <span class="adLink-title">地图找房</span><span class="adLink-txt">精准定位，网络周边</span></li>
        </ul>
    </div> 
</div>
<!-- hotHouse-ad -->
<div class="hotHouse-ad">
    <div class="container">
        <div class="hotHouse-ad-content">
                <h3 class="clearfix">
                <span class="hotHouse-head fl">福州热门新房</span>
                <div class="hotHouse-ad-area fl">
                <ul class="clearfix">
                    <li><a href="#">仓山</a></li>
                    <li><a href="#">鼓楼</a></li>
                    <li><a href="#">晋安</a></li>
                    <li><a href="#">马尾</a></li>
                    <li><a href="#">台江</a></li>
                    <li><a href="#">闽侯</a></li>
                    <li><a href="#">连江</a></li>
                    <li><a href="#">长乐</a></li>
                    <li><a href="#">平潭</a></li>
                    <li><a href="#">永泰</a></li>
                </ul> 
                </div>
                <a href="#" class="fr hotHouse-more">更多福州楼盘&gt;&gt;</a>
            </h3>
            <div class="hotHouse-img clearfix mt15">
                <div class="hotHouse-imgBig fl">
                    <a href="#">
                        <div class="hotHouse-imgBig-ad">
                            <span class="imgBig-title">碧桂园</span>
                            <hr class="imgBig-hr mt5">
                            <span class="imgBig-ad mt5">3万抵6万</span>
                        </div>
                    </a>
                </div>
                <div class="hotHouse-imgSmall fr">
                    <ul class="clearfix">
                        <li>
                            <a class="hotHouse-imgSmall-ad">
                                <span class="imgSmall-adTxt clearfix"><span class="fl">贵安新天地</span><span class="fr">3万抵6万</span></span>
                            </a>
                        </li>
                        <li>
                            <a class="hotHouse-imgSmall-ad">
                                <span class="imgSmall-adTxt clearfix"><span class="fl">贵安新天地</span><span class="fr">3万抵6万</span></span>
                            </a>
                        </li>
                        <li>
                            <a class="hotHouse-imgSmall-ad">
                                <span class="imgSmall-adTxt clearfix"><span class="fl">贵安新天地</span><span class="fr">3万抵6万</span></span>
                            </a>
                        </li>
                        <li>
                            <a class="hotHouse-imgSmall-ad">
                                <span class="imgSmall-adTxt clearfix"><span class="fl">贵安新天地</span><span class="fr">3万抵6万</span></span>
                            </a>
                        </li>
                        <li>
                            <a class="hotHouse-imgSmall-ad">
                                <span class="imgSmall-adTxt clearfix"><span class="fl">贵安新天地</span><span class="fr">3万抵6万</span></span>
                            </a>
                        </li>
                        <li>
                            <a class="hotHouse-imgSmall-ad">
                                <span class="imgSmall-adTxt clearfix"><span class="fl">贵安新天地</span><span class="fr">3万抵6万</span></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- appDown -->
<%-- <div class="appDown">
    <div class="container">
        <div class="appDownWrap clearfix">
            <div class="appDownShow-img fl">
                <img src="${basePath}static/css/front/images/phone-show.png" alt="" />
            </div>
            <div class="appDownShow-btn fl">
                <span class="appDownShow-title">手机在手，轻松置业</span>
                <span class="appDownShow-ad">扫一扫，下载万万楼APP，轻松找房</span>
                <div class="appDownShow-link clearfix">
                    <div class="downLink fl">
                        <a href="#"><img src="${basePath}static/css/front/images/icon-apple.png">iPhone版下载</a>
                        <a href="#"><img src="${basePath}static/css/front/images/icon-android.png">Android版下载</a>
                    </div>
                    <div class="downErw fl">
                        <img src="${basePath}static/css/front/images/icon-erweima.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --%>
<!-- newHouse-ad -->
<div class="hotHouse-ad newHouse-ad">
    <div class="container">
        <div class="hotHouse-ad-content">
                <h3 class="clearfix">
                <span class="hotHouse-head fl">新盘推荐</span>
            </h3>
            <div class="hotHouse-img clearfix mt15">
                <div class="hotHouse-imgSmall ">
                    <ul class="clearfix">
                        <li class="first">
                            <a class="hotHouse-imgSmall-ad">
                                <span class="imgSmall-adTxt clearfix"><span class="fl">三盛国际公园</span><span class="fr">晋安&nbsp;&nbsp;五四北</span></span>
                            </a>
                            <span class="imgSmall-money"><span class="fl imgSmall-money-area">40-165平方米</span><span class="fr"><span class="red">20000&nbsp;&nbsp;</span>元/平方米</span></span>
                        </li>
                        <li>
                            <a class="hotHouse-imgSmall-ad">
                                <span class="imgSmall-adTxt clearfix"><span class="fl">三盛国际公园</span><span class="fr">晋安&nbsp;&nbsp;五四北</span></span>
                            </a>
                            <span class="imgSmall-money"><span class="fl imgSmall-money-area">40-165平方米</span><span class="fr"><span class="red">20000&nbsp;&nbsp;</span>元/平方米</span></span>
                        </li>
                        <li>
                            <a class="hotHouse-imgSmall-ad">
                                <span class="imgSmall-adTxt clearfix"><span class="fl">三盛国际公园</span><span class="fr">晋安&nbsp;&nbsp;五四北</span></span>
                            </a>
                            <span class="imgSmall-money"><span class="fl imgSmall-money-area">40-165平方米</span><span class="fr"><span class="red">20000&nbsp;&nbsp;</span>元/平方米</span></span>
                        </li>
                        <li>
                            <a class="hotHouse-imgSmall-ad">
                                <span class="imgSmall-adTxt clearfix"><span class="fl">三盛国际公园</span><span class="fr">晋安&nbsp;&nbsp;五四北</span></span>
                            </a>
                            <span class="imgSmall-money"><span class="fl imgSmall-money-area">40-165平方米</span><span class="fr"><span class="red">20000&nbsp;&nbsp;</span>元/平方米</span></span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="adWanLink mb60">
    <div class="container">
        <div class="adLink mt50">
            <ul class="clearfix">
                <li><a href="#"><img src="${basePath}static/css/front/images/adWan-link01.png"></a> <span class="adLink-title">独家优惠，新房新低价</span></li>
                <li><a href="#"><img src="${basePath}static/css/front/images/adWan-link02.png"></a> <span class="adLink-title">真实房源，二手、出租有保障</span></li>
                <li><a href="#"><img src="${basePath}static/css/front/images/adWan-link03.png"></a> <span class="adLink-title">新家新起点，平安喜临门</span></li>
            </ul>
        </div>
    </div>
</div>
<!--ZWRearch-bottom-->
<%@include file="foot.jsp" %>
</body>
</html>