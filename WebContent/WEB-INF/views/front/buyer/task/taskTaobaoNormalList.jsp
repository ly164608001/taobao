<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>普通任务列表</title>
</head>
<body>
	<div class="workContent ml20">
	<h4>
		<span class="title">淘宝普通任务</span>
	</h4>

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
