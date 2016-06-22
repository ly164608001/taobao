<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/admin/activity/operator.js"></script>
<script>
function formatterbutton(value,row)
{
	var statusText = '';

	if(row.status == 1){
		statusText = '禁用';
	}else{
		statusText = '启用';
	}
	return '<a href="javascript:void(0)" class="easyui-linkbutton"'
		+ 'onclick="openDialog(\'修改活动\',\'${basePath}admin/activity/deduction/update.htm?id='+row.id+'\',500,300)">修改</a>'
		+'&nbsp;&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="updatestatus(\'${basePath}admin/activity/deduction/updatestatus.htm?id='+row.id+'&status='+row.status+'\',300,200)">'+statusText+'</a>'
		+'&nbsp;&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/activity/bonus/delete.htm?id='+row.id+'\')">删除</a>';
}

function formatterjoinuser(value,row){
	return '<a href="${basePath}admin/activity/deduction/view.htm?id='+row.id+'" class="easyui-linkbutton">查看</a>';
}
function deductionAll(value,row){
	if(row.deductiontype==1){
		return row.deductionmoney+"%";
	}else{
		return "----";
	}
}
function deductionmoney(value,row){
	if(row.deductiontype==2){
		return row.deductionmoney;
	}else{
		return "----";
	}
}
</script>
</head>
<body>
	<div class="easyui-panel" title="预存抵扣活动列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>预存金额:</td>
					<td><input name="model.prestoremoney" class="easyui-validatebox textbox"
						value=""></td>
					<td></td>
					<td></td>
					<td></td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">搜索</a></td>
				</tr>
			</table>

		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0" url="datalist.htm">
		<thead>
			<tr>
				<th field="id" width="30">id</th>
				<th field="prestoremoney" width="100">预存金额</th>
				<th field="deductionnum" width="100" formatter="deductionmoney">抵扣金额</th>
				<th field="deductionscale" width="100" formatter="deductionAll">抵扣总额</th>
				<th field="starttime" width="100" formatter="formatterDate">活动开始时间</th>
				<th field="endtime" width="100" formatter="formatterDate">活动结束时间</th>
				<th field="availabletime" width="100" formatter="formatterDate">使用期限</th>
				<th field="status" width="100" formatter="formatterStatus">开关</th>
				<th field="joinuser" width="80" formatter="formatterjoinuser" >参与用户</th>
				<th field="isadmin" width="100"formatter="formatterbutton">操作</th>
			</tr>
		</thead>
	</table>

	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
