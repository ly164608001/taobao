<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript">
	function changeMenu(activeUrl){
		$("#external-frame").attr("src",activeUrl);
	}
	</script>
</head>
<body>
	<section class="container mt50">
		<nav class="Hui-breadcrumb">
			<!-- <i class="icon iconfont">&#xf012b;</i>
		-->
			<span>当前位置：</span>
			<a class="maincolor" href="/">首页</a>
			<span class="c-666 en">&gt;</span>
			帮助中心
			<span class="c-666 en">&gt;</span>
		</nav>
		<div class="helpCenter clearfix">
			<div class="helpCenterType f-l">
				<div id="tab_user" class="HuiTab userPsw mt10">
					<div class="tabBar cl">
						<span class="current">买家中心</span>
						<span class="">卖家中心</span>
					</div>
					<div class="tabCon" style="display: block;">
						<ul id="Huifold1" class="Huifold">
							<li class="item">
								<h4>
									买家新手上路 <b>+</b>
								</h4>
								<div class="info">
									<ul class="userDetail">
										<li>
											<a href="#">
												<span>&gt;</span>
												注册
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												登入
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												个人账号和资料
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												平台名词
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												接受方常见问题
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												移动版常见问题
											</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="item">
								<h4>
									账号管理 <b>+</b>
								</h4>
								<div class="info">
									<ul class="userDetail">
										<li>
											<a href="#">
												<span>&gt;</span>
												密码相关
											</a>
										</li>
		
									</ul>
								</div>
							</li>
							<li class="item">
								<h4>
									流程
									<b>+</b>
								</h4>
								<div class="info">
									<ul class="userDetail">
										<li>
											<a href="#">
												<span>&gt;</span>
												买家流程
											</a>
										</li>
		
									</ul>
								</div>
							</li>
							<li class="item">
								<h4>
									申诉
									<b>+</b>
								</h4>
								<div class="info">
									<ul class="userDetail">
										<li>
											<a href="#">
												<span>&gt;</span>
												申诉前提
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												提出申诉
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												查看申诉记录
											</a>
										</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
					<div class="tabCon" style="display: none;">
						<ul id="Huifold1" class="Huifold">
							<li class="item">
								<h4>
									卖家新手上路
									<b>+</b>
								</h4>
								<div class="info">
									<ul class="userDetail">
										<li>
											<a href="#">
												<span>&gt;</span>
												注册
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												登入
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												个人账号和资料
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												平台名词
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												接受方常见问题
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												移动版常见问题
											</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="item">
								<h4>
									账号管理
									<b>+</b>
								</h4>
								<div class="info">
									<ul class="userDetail">
										<li>
											<a href="#">
												<span>&gt;</span>
												密码相关
											</a>
										</li>
		
									</ul>
								</div>
							</li>
							<li class="item">
								<h4>
									流程
									<b>+</b>
								</h4>
								<div class="info">
									<ul class="userDetail">
										<li>
											<a href="#">
												<span>&gt;</span>
												买家流程
											</a>
										</li>
		
									</ul>
								</div>
							</li>
							<li class="item">
								<h4>
									申诉
									<b>+</b>
								</h4>
								<div class="info">
									<ul class="userDetail">
										<li>
											<a href="#">
												<span>&gt;</span>
												申诉前提
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												提出申诉
											</a>
										</li>
										<li>
											<a href="#">
												<span>&gt;</span>
												查看申诉记录
											</a>
										</li>
									</ul>
								</div>
							</li>
						</ul>
		
					</div>
				</div>
				<div class="help_kf">
					<h3>联系客服</h3>
					<div class="help_tab">
						<p>
							<b>服务时间</b>
						</p>
						<p class="">上班时间 8:00-20:30</p>
					</div>
				</div>
			</div>
			
			<!-- 这块为center右边详细页面iframe -->
			<!-- iframe嵌入 
			<iframe src="${basePath}${initUrl}"  frameborder="0" scrolling="no" id="external-frame" onload="setIframeHeight(this)" name="external-frame" class="taobaoIframe"></iframe>
			-->
			<div class="helpCenterContent f-r help_title">
				<h4>
					<span class="title">问题列表</span>
				</h4>
				<div class="problemList">
					<p>
						<a href="#">如何注册成为买家会员？</a>
					</p>
					<p>
						<a href="#">如何注册成为买家会员？</a>
					</p>
					<p>
						<a href="#">如何注册成为买家会员？</a>
					</p>
					<p>
						<a href="#">如何注册成为买家会员？</a>
					</p>
					<p>
						<a href="#">如何注册成为买家会员？</a>
					</p>
				</div>
				<div class="clearfix page-wrap mt50"></div>
			</div>
		</div>
		
	</section>

</body>
</html>