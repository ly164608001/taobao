<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/css/admin/activity/activity.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/common.js"></script>
<script>
function formatterstatus(value,row)
{
	return row.status==1?"已使用":"未使用";
}

</script>
</head>
<body>
<div class="easyui-panel" title="红包活动详情"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		
		<table cellpadding="5">
			
			<tr>
				<td>红包金额:</td>
				<td>${model.money}</td>
			</tr>
			
			<tr>
				<td>有效期限:</td>
				<td>${model.availabletime}</td>
			</tr>
			
			<tr><td>红包个数:</td>
				<td>${model.count}</td>
			</tr>
					
			<tr><td>发布人:</td>
				<td>${model.senduser.username}</td>
			</tr>
			
			<tr><td>发布时间:</td>
				<td>${model.sendtime}</td>
			</tr>
					
			<tr>
				<td>状态:</td>
				<td>${model.status==1?"启用":"禁用"}</td>
			</tr>			

		</table>
		<!-- find start -->
		<div class="find">	
		<form id="dgquery">
			<input name="model.activityid" type="hidden" value="${model.id}">
			<table cellspacing="5">
				<tr>
					<td><span class="txt-stress">领取用户</span></td>
					<td>共有${model.usecount}个人领取</td><td>&nbsp;</td>
					<td><select name="model.status"><option value="">使用状态</option><option value="1">已使用</option><option value="-1">未使用</option></select></td>
					<td>&nbsp;</td>
					<td></td>
					<td>&nbsp;</td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">查询</a></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- find end -->
		<table id="dg" cellspacing="0" cellpadding="0" url="userdatalist.htm">
		 
					<thead>
						<tr>
							<th field="id" width="30">id</th>
							<th field="user.username" width="80">领取用户</th>
							
							<th field="gettime" width="100" formatter="formatterDate">领取时间</th>
							<th field="status" width="100" formatter="formatterstatus">使用情况</th>
							<th field="usetime" width="100" formatter="formatterDate">使用时间</th>
							<th field="orderid" width="100" >订单编号</th>
							
						</tr>
					</thead>
				
				</table>
</div>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>
