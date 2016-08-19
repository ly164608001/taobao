<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript">
	function changeMenu(activeUrl){
		$("#external-frame").attr("src",'${basePath}' + activeUrl);
	}
	
	function loginout(){
		top.location.href = '${basePath}front/loginout.htm';
	}
	
	function toTopWindow(url){
		top.location.href = '${basePath}' + url;
	}
	</script>
</head>
<body>
<section class="container mt50 clearfix">
<nav class="Hui-breadcrumb">
<span>当前位置：</span>
<a class="maincolor" href="/">首页</a>
<span class="c-666 en">&gt;</span>
商家中心

</nav>
<div class="clearfix mt10">
<div class="menuSidebar f-l">
	<dl>
		<dt>
			<i></i>
			店铺管理
		</dt>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/shop/shopList.htm');">淘宝店铺</a>
		</dd>
		<dt>
			<i class="n3"></i>
			发布任务
		</dt>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/task/publishPrepare.htm');">淘宝任务</a>
		</dd>
		<dd>
			<a href="#">淘宝超级任务</a>
		</dd>
		<dd>
			<a href="#">淘宝流量任务</a>
		</dd>
		
		<dt>
			<i class="n3"></i>
			任务审核设置
		</dt>
		<dd>
			<a href="#">任务审核设置</a>
		</dd>
		<dt>
			<i class="n3"></i>
			任务管理
		</dt>
		<dd>
			<a href="#">淘宝任务</a>
		</dd>
		<dd>
			<a href="#">淘宝超级任务</a>
		</dd>
		<dd>
			<a href="#">淘宝流量任务</a>
		</dd>
		<dd>
			<a href="#">淘宝任务导出</a>
		</dd>
		<dd>
			<a href="#">淘宝任务申诉</a>
		</dd>
		<dd>
			<a href="#">任务模板</a>
		</dd>
		<dd>
			<a href="#">任务统计</a>
		</dd>
		<dt>
			<i class="n3"></i>
			收货地址管理
		</dt>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/label/labelList.htm?model.type=1');">标签管理</a>
		</dd>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/address/addressList.htm');">收货地址列表</a>
		</dd>
		<dt>
			<i class="n3"></i>
			好评内容管理
		</dt>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/label/labelList.htm?model.type=2');">标签管理</a>
		</dd>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/praise/praiseList.htm');">好评内容列表</a>
		</dd>
		
		<dt>
			<i class="n4"></i>
			我的账户
		</dt>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/money/recharge.htm');">账号充值</a>
		</dd>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/money/withdrawals.htm');">申请提现</a>
		</dd>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/money/moneyDetail.htm');">账户明细</a>
		</dd>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/money/baseinfo.htm');">基本资料</a>
		</dd>
		<dd>
			<a href="javascript:void(0);" onclick="changeMenu('front/seller/money/modifyPassword.htm');">修改密码</a>
		</dd>
		<dd class="last">
			<a href="javascript:void(0);" onclick="loginout();">退出登入</a>
		</dd>
	</dl>
</div>
<!-- iframe嵌入 -->
<iframe 
	<c:if test="${empty initUrl}">src="${basePath}front/seller/task/taskList.htm" </c:if>
	<c:if test="${not empty initUrl}">src="${basePath}${initUrl}" </c:if>
	 	frameborder="0" scrolling="no" id="external-frame" name="external-frame" class="taobaoIframe"></iframe>
</section>

</body>
</html>
