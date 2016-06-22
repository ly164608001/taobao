<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/css/admin/activity/activity.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script>
function formatterstatus(value,row)
{
	return row.status==1?"已使用":"未使用";
}

</script>
</head>
<body>
<div class="easyui-panel" title="参与用户"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		
		
	<div class="find">	
		<form id="dgquery">
			<input name="model.activityid" type="hidden" value="${model.id}">
			<table cellspacing="5">
				<tr>
					<td><span class="txt-stress">参与用户</span></td>
					<td>共有${model.takeinnum}个人报名</td><td>&nbsp;</td>
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
		<table id="dg" cellspacing="0" cellpadding="0" url="userdatalist.htm">
		 
					<thead>
						<tr>
							<th field="id" width="30">id</th>
							<th field="applyuserid.username" width="80" >报名用户</th>
							<th field="applytime" width="100" formatter="formatterDate">参与时间</th>
							<th field="status" width="100" formatter="formatterstatus">使用状态</th>
							<th field="userid.username" width="100" >使用者</th>
							<th field="usetime" width="100" formatter="formatterDate">使用时间</th>
						</tr>
					</thead>
				
				</table>
</div>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>
