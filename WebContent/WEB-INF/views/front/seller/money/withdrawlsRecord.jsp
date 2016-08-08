<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>账户明细-提现记录</title>
	<script type="text/javascript" src="${basePath}static/js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
		$(function(){
			$('#btnSearch').click(function(){
				$('#searchForm').submit();
			});
			
			//账户明细
			$('#moneyDetailSpan').click(function(){
				window.location.href = basePath + 'front/buyer/money/moneyDetail.htm';
			});
			
			
		});
	</script>
</head>
<body>
<div class="workContent ml20">
	<h4>
		<span class="title">账户明细</span>
	</h4>
	<div id="tab_detail" class="HuiTab">
		<div class="tabBar cl">
			<span id="moneyDetailSpan">账户明细</span>
			<span class="current">提现记录</span>
		</div>
		<div>
			<div class="search-tab mt20">
			  <form id="searchForm" action="${basePath}front/buyer/money/withdrawlsRecord.htm">
				<ul>
					<li class="tab02">
						<span class="tab-title">时间范围：</span>
						<span>
							<input id="d4311" placeholder="请输入开始时间" class="Wdate write-time input-text radius size-M" type="text" name="beginTime" 
								onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,maxDate:&quot;#F{$dp.$D(\'d4312\')||\'2020-10-01\'}&quot;})"/> 
         					<span class="sprite">-</span>
         					<input id="d4312" placeholder="请输入结束时间" class="Wdate write-time input-text radius size-M" type="text" name="endTime" 
         						 onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,minDate:&quot;#F{$dp.$D(\'d4311\')}&quot;,maxDate:&quot;2020-10-01&quot;})"/>
						</span>
						<input class="btn radius btn-secondary" type="button" value="查询" id="btnSearch"/>
					</li>
				</ul>
			  </form>
			</div>
			<div class="workTable mt30">
				<table class="table table-border table-bg">
					<thead>
						<tr>
							<th>时间</th>
							<th>提现金额</th>
							<th>手续费</th>
							<th>到账金额</th>
							<th>提现账号</th>
							<th>状态</th>
						</tr>
					</thead>
					<tbody>
					  <c:forEach items="${list}" var="item">
					  	<tr>
							<td><f:formatDate value="${item.createtime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td>${item.money}</td>
							<td>${item.commission}</td>
							<td>${item.arrivalmoney}</td>
							<td>${item.account.accountno}</td>
							<td>
								<c:choose>
									<c:when test="${item.status == 0}">申请待处理</c:when>
									<c:when test="${item.status == 1}">提现成功</c:when>
								</c:choose>
							
							</td>
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