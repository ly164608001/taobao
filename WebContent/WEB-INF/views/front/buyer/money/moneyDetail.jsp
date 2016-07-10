<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>账户明细</title>
	<script type="text/javascript" src="${basePath}static/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<div class="workContent ml20">
	<h4>
		<span class="title">账户明细</span>
	</h4>
	<div id="tab_detail" class="HuiTab">
		<div class="tabBar cl">
			<span class="current">账户明细</span>
			<span class="">提现记录</span>
		</div>
		<div class="tabCon" style="display: block;">
			<div class="search-tab mt20">
				<ul>
					<li class="tab02">
						<span class="tab-title" style="width: 80px;">任务编号：</span>
						<input type="text" placeholder="请输入任务编号" class="input-text radius size-M">
						<span class="tab-title">时间范围：</span>
						<span>
							<input id="d4311" placeholder="请输入开始时间" class="Wdate write-time input-text radius size-M" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,maxDate:&quot;#F{$dp.$D(\'d4312\')||\'2020-10-01\'}&quot;})"/> 
         					<span class="sprite">-</span>
         					<input id="d4312" placeholder="请输入结束时间" class="Wdate write-time input-text radius size-M" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,minDate:&quot;#F{$dp.$D(\'d4311\')}&quot;,maxDate:&quot;2020-10-01&quot;})"/>
						</span>
						<input class="btn radius btn-secondary" type="button" value="查询"></li>
				</ul>
			</div>

			<div class="workTable mt30">
				<table class="table table-border table-bg">
					<thead>
						<tr>
							<th>时间</th>
							<th>金额</th>
							<th>变动原因</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2016/6/28 16:04:16</td>
							<td><span class="orange">+1.38</span></td>
							<td>申诉任务TB201606261028389194710调整，扣保证金(原为138.00元)1.38元，返1.38元</td>
						</tr>
						<tr>
							<td>2016/6/28 16:04:16</td>
							<td><span class="orange">+1.38</span></td>
							<td>申诉任务TB201606261028389194710调整，扣保证金(原为138.00元)1.38元，返1.38元</td>
						</tr>
						<tr>
							<td>2016/6/28 16:04:16</td>
							<td><span class="orange">+1.38</span></td>
							<td>申诉任务TB201606261028389194710调整，扣保证金(原为138.00元)1.38元，返1.38元</td>
						</tr>
						<tr>
							<td>2016/6/28 16:04:16</td>
							<td><span class="orange">+1.38</span></td>
							<td>申诉任务TB201606261028389194710调整，扣保证金(原为138.00元)1.38元，返1.38元</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="clearfix page-wrap"></div>
		</div>
		<div class="tabCon" style="display: none;">
			<div class="search-tab mt20">
				<ul>
					<li class="tab02">

						<span class="tab-title">时间范围：</span>
						<span>
							<input id="d4311" placeholder="请输入开始时间" class="Wdate write-time input-text radius size-M" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,maxDate:&quot;#F{$dp.$D(\'d4312\')||\'2020-10-01\'}&quot;})"/> 
         					<span class="sprite">-</span>
         					<input id="d4312" placeholder="请输入结束时间" class="Wdate write-time input-text radius size-M" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,minDate:&quot;#F{$dp.$D(\'d4311\')}&quot;,maxDate:&quot;2020-10-01&quot;})"/>
						</span>
						<input class="btn radius btn-secondary" type="button" value="查询"></li>
				</ul>
			</div>
			<div class="workTable mt30">
				<table class="table table-border table-bg">
					<thead>
						<tr>
							<th>时间</th>
							<th>提现金额</th>
							<th>手续费</th>
							<th>到账金额</th>
							<th>体现账号</th>
							<th>状态</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>2</td>
							<td>3</td>
							<td>3</td>
							<td>3</td>
							<td>3</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="clearfix page-wrap"></div>
		</div>
		
	</div>

</div>
</body>
</html>