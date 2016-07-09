<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>任务管理</title>
<body>
	<div class="workContent f-r ml20">
	<h4>
		<span class="title">淘宝精刷任务</span>
	</h4>
	<div class="header">
		<div class="panel panel-default">
			<div class="panel-body">
				<p>1、禁止用旺旺号向商家咨询本平台或刷单相关的问题，如有问题联系商家QQ；</p>
				<p>
					2、禁止使用店铺优惠券、红包、淘金币、天猫积分、返利网、淘客、聚来宝，淘宝客等，扣除任务全部佣金，产生的推广佣金从商品的本金中扣除，严重者一律封号；
				</p>
				<p>
					3、任务中没有标识的信用卡、淘宝信用支付、花呗、余额宝分期付款，禁止使用，产生的手续费由买家承担，手续费从商品本金中扣除，严重者一律封号；
				</p>
				<p>
					4、在京东上没有按实际物流到了(即
					<span class="orange">显示签收</span>
					)，就提前收货扣除全部佣金。如果
					<span class="orange">快递物流出现卡住或没有物流信息</span>
					的情况，京东上发货
					<span class="orange">超过了7天</span>
					，即
					<span class="orange">第8天</span>
					应允许买家在淘宝确认收货和好评，这种情况不算买家提前收货。
				</p>
			</div>
		</div>
	</div>
	<div class="workDoing mt20">
		<div id="tab_demo" class="HuiTab">
			<div class="tabBar cl">
				<span>进行中</span>
				<span>已完成</span>
			</div>
			<div class="tabCon">
				<div class="search-tab mt20">
					<ul>
						<li class="tab02">
							<span class="tab-title" style="width: 140px;">任务编号、订单号：</span>
							<input type="text" placeholder="请输入任务编号" class="input-text radius size-M">
							<span class="tab-title">淘宝号：</span>
							<input type="text" placeholder="请输入淘宝号" class="input-text radius size-M">
							<input class="btn radius btn-secondary" type="button" value="查询"></li>
					</ul>
				</div>
				<div class="serch-type clearfix mt20">
					<span class="title f-l">当前状态：</span>
					<ul class="clearfix f-l">
						<li>
							<a href="#">已接手待审核(0)</a>
						</li>
						<li>
							<a href="#">待付款(0)</a>
						</li>
						<li>
							<a href="#">已付款待审核(0)</a>
						</li>
						<li>
							<a href="#">待发货(0)</a>
						</li>
						<li>
							<a href="#">待收货(0)</a>
						</li>
						<li>
							<a href="#">已好评，待确认(0)</a>
						</li>
						<li>
							<a href="#">申述中(0)</a>
						</li>
					</ul>
				</div>
				<div class="workTable mt30">
					<table class="table table-border table-bg">
						<thead>
							<tr>
								<th>任务编号</th>
								<th>任务编号（元）</th>
								<th>任务要求</th>
								<th>任务佣金</th>
								<th>任务状态</th>
								<th>任务操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="Huialert Huialert-error mt10 text-c">
					<i class="icon-remove"></i>
					亲，没有符合条件的任务
				</div>
			</div>
			<div class="tabCon">内容二</div>
		</div>
	</div>

</div>
<script>
$(function(){
	// 收缩
	$('.open-btn').on('click',function(){
		$(this).parent('.tiro-control').siblings('.panel').find('.showHide').slideToggle();
		$(this).toggleClass('active');
		if ($(this).hasClass('active')) {
			$(this).text('展开');
			// $(this).find('i').css('background-position','4px -28px')
		}else{
			$(this).text('收缩');
			// $(this).find('i').css('background-position','4px 7px')
		}
	});
	
    $.Huitab("#tab_demo .tabBar span","#tab_demo .tabCon","current","click","0");
});
</script>
</body>
</html>
