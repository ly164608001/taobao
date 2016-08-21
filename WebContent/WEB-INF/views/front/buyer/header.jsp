<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>header</title>
	<script type="text/javascript">
		function changeMenu(url){
			$('#url').val(url);
			$('#form').submit();
		}
		
		function loginout(){
			top.location.href = '${basePath}front/loginout.htm';
		}
	</script>
<body>
	
	<form action="${basePath}front/buyer/main.htm" id="form" method="post"> 
		<input name="url" id="url" value=""/>
	</form>
			
<header class="navbar-wrapper">
	<div class="navbar navbar-black navbar-orange navbar-fixed-top">
		
		<div class="container cl">
			<div class="logo">
				<a href="${basePath}front/buyer/index.htm">
					<img src="${basePath}static/css/front/images/logo.png">
				</a>
			</div>
			<nav class="nav navbar-nav nav-collapse" role="navigation" id="Hui-navbar">
				<ul class="cl">
					<li class="current">
						<a href="${basePath}front/buyer/index.htm">首页</a>
					</li>
					<li>
						<a href="${basePath}front/buyer/task/taskHall.htm">任务大厅</a>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="changeMenu('front/buyer/task/taskTaobaoList.htm');">任务管理</a>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="changeMenu('front/buyer/certification/prepare.htm');">实名认证</a>
					</li>
			</ul>
		</nav>
		
		<nav class="navbar-userbar hidden-xs nav navbar-nav">
			<ul class="cr">
				<li class="dropDown dropDown_hover">
					<a href="#" class="dropDown_A">
						用户中心 <i class="Hui-iconfont">&#xe6d5;</i>
					</a>
					<ul class="dropDown-menu menu radius box-shadow">
						<li>
							<a href="javascript:void(0);"  onclick="changeMenu('front/buyer/money/withdrawals.htm')">申请提现</a>
						</li>
						<li>
							<a href="javascript:void(0);"onclick="changeMenu('front/buyer/money/moneyDetail.htm')">账号明细</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="${basePath}front/helpcenter/main.htm" target="_blank">帮助中心</a>
				</li>
				<li>
					<a href="javascript:void(0);" onclick="loginout();">退出</a>
				</li>
			</ul>
		</nav>
		
	</div>
</div>
</header>

</body>
</html>