<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>万万楼</title>
</head>
<body>
<div class="PersonalCenter-header">
    <div class="PersonalCenter-header-w1200 clearfix">
        <!--PersonalCenter-header-l-->
        <div class="PersonalCenter-header-l">
            <div class="myjz-logo"><a href="javascript:void(0);"><img src="${basePath}static/css/front/images/myjz-logo.png"></a></div>
            <div class="location"><span class="location-address">福州<a href="#" class="areaLocation" id="areaLocation">[切换]</a></span></div>
            <div class="PersonalCenter-header-nav clearfix">
                <ul>
                    <li><a href="javascript:void(0);">万万楼首页</a></li>
                    <li><a href="javascript:void(0);">新房</a></li>
                </ul>
            </div>
        </div>
        <!--PersonalCenter-header-r-->
        <div class="PersonalCenter-header-r clearfix">
            <ul class="clearfix">
            	<c:if test="${frontUser!=null}">
	                <li class="first">
	                您好！<span class="sp-icon" style="background: url(&quot;${basePath}static/css/front/images/sp-icon.png&quot;) 100% 50% no-repeat;"><a href="javascript:void(0);">${frontUser.username}</a></span>
	                  <div class="userMsg" style="display: none;">
	                    <div class="userMsg-data clearfix">
	                      <img src="${basePath}static/css/front/images/icon-commet-head.png">
	                      <span class="userMsg-data-detail">
	                        <span class="userMsg-name">某某某用户</span> <br>
	                        <span class="userMsg-link"><span>
	                        <a href="#">我的资料</a></span>
	                        <span class="split">|</span>
	                        <span><a href="#" onclick="changeMenu('${basePath}front/member/asset/myaccount/list.htm')">我的账户</a></span></span>
	                      </span>
	                    </div>
	                    <div class="userMsg-link-body">
	                      <div class="userMsg-data-money">
	                        <span class="userMsg-data-money-detail">夺宝币：<span class="red">50,000</span>
	                        </span><a href="#" onclick="changeMenu('${basePath}front/member/asset/myaccount/list.htm')">查看</a>
	                      </div>
	                      <span class="Userline-hr"></span>
	                      <div class="privilege-link">
	                        <span class="userMsg-link"><span>
	                        <a href="#" onclick="changeMenu('${basePath}front/member/asset/bonus/list.htm')">我的红包</a></span>
	                        <span class="split">|</span>
	                        <span><a href="#" onclick="changeMenu('${basePath}front/member/asset/discount/list.htm')">我的抵扣卡卷</a></span></span>
	                      </div>
	                    </div>
	                  </div>
	                </li>
	            </c:if>
                <li>丨</li>
                <li><a href="${basePath}front/logout.htm">退出</a></li>
                <li>丨</li>
                <li><a href="javascript:void(0);">联系客服</a></li>
                <li>丨</li>
                <li>
                  <span class="sp-icon" style="background: url(&quot;${basePath}static/css/front/images/sp-icon.png&quot;) 100% 50% no-repeat;"><a href="javascript:void(0);">网站导航</a></span>
                  <div class="userMsg userMsg-link" style="display: none;">
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
</div>
<!--PersonalCenter-banner-->
<div class="PersonalCenter-banner">
     <div class="PersonalCenter-banner-w1200">
	  <img src="${basePath}static/css/front/images/myjz-text.png">
	  <ul class="clearfix head-menu">
	    <li><a href="#">首页</a></li>
	    <li><a href="#">资费标准</a></li>
	    <li><a href="#">我的账户</a></li>
	    <li><a href="#">代理广场</a></li>
	  </ul>
	  <div class="PersonalCenter-sel">
	  	<select>
	  		<option>三盛国际公园01</option>
	  		<option>三盛国际公园02</option>
	  		<option>三盛国际公园03</option>
	  		<option>三盛国际公园04</option>
	  	</select>
	  </div>
 </div>
</div>
</body>
</html>