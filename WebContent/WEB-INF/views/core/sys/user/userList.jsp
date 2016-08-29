<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css" />
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css" />
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/admin/user/operator.js"></script>
<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
</head>
<body>
<script type="text/javascript">
toolbardata = [{
    text: '添加',  
    iconCls: 'icon-add',  
    handler: function() {
    	/* openIFrameDialog("添加","${basePath}admin/sys/user/add.htm"); */
		lrDialog.openMini("${basePath}admin/sys/user/userAdd.htm", "用户新增", function(window) {
			var returnValue = window.returnValue;
			if (returnValue == undefined) {//无返回值 直接关闭 
				return true;
			} else {//有返回值 处理一些事
				lrDialog.tips(returnValue);
				$('#dg').datagrid('reload');
				return true;
			}
		});
    }  
}];
function formatteradminuserbutton(value,row)
{
	var operation = "";
	operation += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'用户详情\',\'${basePath}admin/sys/user/userDetail.htm?id='+row.id+'\')">详情</a>';
	operation += '&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'修改用户\',\'${basePath}admin/sys/user/userUpdate.htm?id='+row.id+'\')">修改</a>';
	operation += '&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/sys/user/userDelete.json?id='+row.id+'\')">删除</a>';
	operation += '&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'分配角色\',\'${basePath}admin/sys/role/roletree.htm?userid='+row.id+'&'+Math.random()+'\')">分配角色</a>';
	return operation;
}
</script>
	<div class="easyui-panel" title="用户列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input type="hidden" name="model.deleted" value="0" /> 
			<input type="hidden" name="model.type" value="0" />
			<input type="hidden" name="showAdmin" value="1" />
			
			<table>
				<tr>
					<td>用户名</td>
					<td><input name="model.username"
						class="easyui-validatebox textbox" value=""></td>
					<td></td>
					<td></td>
					<td></td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">搜索</a></td>
				</tr>
			</table>
		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0" url="${basePath}admin/sys/user/datalist.htm">
		<thead>
			<tr>
				<th field="id" width="30">id</th>
				<th field="username" width="80">用户名</th>
				<th field="phone" width="100">联系电话</th>
				<th field="rolenames" width="100">角色</th>
				<th field="registertime" width="200">注册时间</th>
				<th field="isadmin" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
</body>
</html>
