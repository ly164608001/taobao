<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>现金红包</title>
</head>

<body>
	<!--PersonalCenter-header-->
	<!--PersonalCenter-main-r-->
	<div class="PersonalCenter-main-r">
		<!--CaptureroomRecord-->
		<div class="CaptureroomRecord">
			<!--CaptureroomRecord-title-->
			<div class="MyFootprint-title">
				<span class="level-1">资产中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span
					class="level-2">现金红包</span>
			</div>
			<!--SecuritySetting-main-->
			<div class="CaptureroomRecord-main DiscountCard clearfix">
				<!--DiscountCard-->
				<div class="DiscountCard-nav clearfix">
					<div class="DiscountCard-nav-l clearfix">
						<ul class="ul-use clearfix">
							<li class="li-1">可用</li>
							<li>已使用/过期</li>
						</ul>
						<ul class="ul-all clearfix">
							<li class="li-1">全部</li>
							<li>楼盘红包</li>
							<li>平台红包</li>
						</ul>
					</div>
					<div class="DiscountCard-nav-r clearfix" style="margin-top: 50px;">
						<ul>
							<li>楼盘名称：</li>
							<li><input type="text" /> <a class="search-btn"
								href="javascript:void(0);"></a></li>
						</ul>
					</div>
				</div>
				<div class="filter-box clearfix">
					<div class="filter-nav clearfix">
						<ul>
							<li class="li-2"><span class="icon-down"><a
									href="javascript:void(0);">卡券金额</a></span></li>
							<li><span class="icon-down"><a
									href="javascript:void(0);">到期时间</a></span></li>
							<li><span class="icon-down"><a
									href="javascript:void(0);">生效时间</a></span></li>
						</ul>
					</div>
				</div>
				<div class="DiscountCard-main">
					<dl>
						<dt class="clearfix">
							<span>来自&nbsp;&nbsp;<em>万万楼平台</em>&nbsp;&nbsp;卡券
							</span>
						</dt>
						<dd>
							<div class="packet-box clearfix">
								<div class="packet-box-l">
									<div class="packet-pic">
										<img src="${basePath}static/css/front/images/packet-pic1.png" width="111" height="87" />
										<span class="packet-text packet-text-col1">平台红包</span>
									</div>
									<div class="use-Condition">
										<ul>
											<li>使用限制：<span>无限制</span></li>
											<li>有效时间：<span>2015.09.15 至 2016.12.30</span></li>
											<li>红包密码：<span>****************</span></li>
										</ul>
									</div>
									<div class="use-money">
										<span>1,000</span>元
									</div>
								</div>
								<div class="packet-box-r">
									<a href="javascript:void(0);"><img src="${basePath}static/css/front/images/use-1.png"
										width="106" height="114" /></a>
								</div>
							</div>
							<span class="usable"><img src="${basePath}static/css/front/images/usable-1.png"
								width="55" height="55" /></span>
						</dd>
						<dt class="clearfix">
							<span>来自&nbsp;&nbsp;<em>万万楼平台</em>&nbsp;&nbsp;卡券
							</span>
						</dt>
						<dd>
							<div class="packet-box clearfix">
								<div class="packet-box-l">
									<div class="packet-pic">
										<img src="${basePath}static/css/front/images/packet-pic2.png" width="111" height="87" />
										<span class="packet-text packet-text-col2">平台红包</span>
									</div>
									<div class="use-Condition">
										<ul>
											<li>使用限制：<span>无限制</span></li>
											<li>有效时间：<span>2015.09.15 至 2016.12.30</span></li>
											<li>红包密码：<span>****************</span></li>
										</ul>
									</div>
									<div class="use-money">
										<span>1,000</span>元
									</div>
								</div>
								<div class="packet-box-r">
									<a href="javascript:void(0);"><img src="${basePath}static/css/front/images/use-2.png"
										width="106" height="114" /></a>
								</div>
							</div>
							<span class="usable"><img src="${basePath}static/css/front/images/usable-2.png"
								width="55" height="55" /></span>
						</dd>
					</dl>
				</div>
				<div class="page clearfix">
					<a href="javascript:void(0);">首页</a> <a href="javascript:void(0);">上一页</a>
					<a class="page-num" href="javascript:void(0);">1</a> <a
						href="javascript:void(0);">下一页</a> <a href="javascript:void(0);">尾页</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
