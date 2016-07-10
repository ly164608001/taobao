<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript">
	function changeMenu(activeUrl){
		$("#external-frame").attr("src",activeUrl);
	}
	
	function loginout(){
		top.location.href = '${basePath}front/loginout.htm';
	}
	</script>
</head>
<body>
	<section class="container mt50 clearfix">
		<nav class="Hui-breadcrumb">
			<span>当前位置：</span>
			<a class="maincolor" href="/">首页</a>
			<span class="c-666 en">&gt;</span>会员中心
		</nav>
		<div class="clearfix mt10">
		<div class="menuSidebar f-l">
			<dl>
				<dt>
					<i></i>
					任务大厅
				</dt>
				<dd>
					<a href="#">大厅任务</a>
				</dd>
				<dt>
					<i class="n3"></i>
					淘宝任务
				</dt>
				<dd>
					<a href="javascript:void(0);" onclick="changeMenu('${basePath}front/buyer/task/taskList.htm');">淘宝精刷任务</a>
				</dd>
				<dd>
					<a href="javascript:void(0);">淘宝普通任务</a>
				</dd>
				<dd>
					<a href="javascript:void(0);" onclick="changeMenu('${basePath}front/buyer/taskappeal/appealList.htm');">任务申述</a>
				</dd>
				<dt>
					<i class="n3"></i>
					流量任务
				</dt>
				<dd>
					<a href="javascript:void(0);">淘宝流量任务</a>
				</dd>
				<dd>
					<a href="javascript:void(0);">任务申述</a>
				</dd>
				<dt>
					<i class="n5"></i>
					小号管理
				</dt>
				<dd>
					<a href="javascript:void(0);" onclick="changeMenu('${basePath}front/buyer/account/accountList.htm');">淘宝小号</a>
				</dd>
				<dt>
					<i class="n4"></i>
					我的账户
				</dt>
				<dd>
					<a href="javascript:void(0);" onclick="changeMenu('${basePath}front/buyer/money/withdrawals.htm');">申请提现</a>
				</dd>
				<dd>
					<a href="javascript:void(0);" onclick="changeMenu('${basePath}front/buyer/money/moneyDetail.htm');">账户明细</a>
				</dd>
				<dd>
					<a href="javascript:void(0);">基本资料</a>
				</dd>
				<dd>
					<a href="javascript:void(0);" onclick="changeMenu('${basePath}');">修改密码</a>
				</dd>
				<dd class="last">
					<a href="javascript:void(0);" onclick="loginout();">退出登入</a>
				</dd>
			</dl>
		</div>
		
		<!-- iframe嵌入 -->
		<iframe 
			<c:if test="${empty initUrl}">src="${basePath}front/buyer/task/taskList.htm" </c:if>
			<c:if test="${not empty initUrl}">src="${basePath}${initUrl}" </c:if>
			 frameborder="0" scrolling="no" id="external-frame" onload="setIframeHeight(this)" name="external-frame" class="taobaoIframe"></iframe>
		
	</section>

</body>
</html>