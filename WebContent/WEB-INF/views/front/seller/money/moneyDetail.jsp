<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>账户明细</title>
	<script type="text/javascript" src="${basePath}static/js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
		$(function(){
			$('#btnSearch').click(function(){
				$('#searchForm').submit();
			});
			
			//提现记录
			$('#withdrawlsRecordSpan').click(function(){
				window.location.href = basePath + 'front/buyer/money/withdrawlsRecord.htm';
			});
			
		});
	</script>
</head>
<body>
<div class="workContent ml20">
	<h4>
		<span class="title">账户明细</span>
	</h4>
	<div id="" class="HuiTab">
		<div class="tabBar cl">
			<span class="current">账户明细</span>
			<span id="withdrawlsRecordSpan">提现记录</span>
		</div>
		<div>
			<div class="search-tab mt20">
				<ul>
					<form id="searchForm" action="${basePath}front/buyer/money/moneyDetail.htm">
					<input type="hidden" name="model.user.id" value="${vo.model.user.id}"/>
					<li class="tab02">
						<span class="tab-title" style="width: 80px;">任务编号：</span>
						<input type="text" placeholder="请输入任务编号" class="input-text radius size-M" 
								name="model.traceno" value="${vo.model.traceno}"/>
						<span class="tab-title">时间范围：</span>
						<span>
							<input id="d4311" placeholder="请输入开始时间" class="Wdate write-time input-text radius size-M" type="text" value="<f:formatDate value='${vo.beginTime}' pattern='yyyy-MM-dd'/>"
								name="beginTime" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,maxDate:&quot;#F{$dp.$D(\'d4312\')||\'2020-10-01\'}&quot;})"/> 
         					<span class="sprite">-</span>
         					<input id="d4312" placeholder="请输入结束时间" class="Wdate write-time input-text radius size-M" name="endTime" value="${vo.endTime}"
         						 type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,minDate:&quot;#F{$dp.$D(\'d4311\')}&quot;,maxDate:&quot;2020-10-01&quot;})"/>
						</span>
						<input class="btn radius btn-secondary" id="btnSearch" type="button" value="查询">
					</li></form>
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
						<c:forEach items="${list}" var="item">
							<tr>
								<td><f:formatDate value="${item.tracetime}" pattern="yyyy/MM/dd HH:mm:ss"/></td>
								<td>
									<c:if test="${item.type == 1}">
										<span class="orange">+${item.money}</span>
									</c:if>
									<c:if test="${item.type == 2}">
										<span class="orange">+${item.money}</span>
									</c:if>
								</td>
								<td>${item.memo}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="clearfix page-wrap"></div>
		</div>
		
	</div>

</div>
</body>
</html>