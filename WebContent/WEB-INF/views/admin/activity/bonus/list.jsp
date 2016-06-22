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
		+ 'onclick="openDialog(\'修改活动\',\'${basePath}admin/activity/bonus/update.htm?id='+row.id+'\',500,300)">修改</a>'
		+'&nbsp;&nbsp;<a href="${basePath}admin/activity/bonus/view.htm?id='+row.id+'" class="easyui-linkbutton">查看</a>'
		+'&nbsp;&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="updatestatus(\'${basePath}admin/activity/bonus/updatestatus.htm?id='+row.id+'&status='+row.status+'\',300,200)">'+statusText+'</a>'		
		+'&nbsp;&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/activity/bonus/delete.htm?id='+row.id+'\')">删除</a>';
}


</script>
</head>
<body>
	<div class="easyui-panel" title="红包活动列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>红包金额:</td>
					<td><input name="model.money" class="easyui-numberbox textbox"
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
				<th field="money" width="100">红包金额</th>
				<th field="availabletime" width="100" formatter="formatterDate">有效期限</th>
				<th field="buildtypeids" width="100">建筑类型限制</th>
				<th field="housestypeids" width="100">户型限制</th>
				<th field="count" width="100">红包个数</th>
				<th field="usecount" width="100">领取用户数</th>
				<th field="status" width="100" formatter="formatterStatus">状态</th>
				<th field="isadmin" width="150" formatter="formatterbutton">操作</th>
			</tr>
		</thead>
	</table>
	<script>
toolbardata = [{  
            text: '添加',  
            iconCls: 'icon-add',  
            handler: function() {  
                openDialog("添加活动","${basePath}/admin/activity/bonus/add.htm",500,300);  
            }  
        }] ;
</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
