<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/admin/user/operator.js"></script>

<script>
	
	function formatteradminuserbutton(value,row) {
		var statusText = '';
		var statusChange = '';
		if(row.status == 1){
			statusText = '禁用';
			statusChange = 'disable';
		}else{
			statusText = '启用';
			statusChange = 'able';
		}
		
		return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'用户详情\',\'${basePath}admin/user/agent/view.htm?id='+row.id+'\',300,400)">查看</a>&nbsp;'
			 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'编辑用户\',\'${basePath}admin/user/agent/update.htm?id='+row.id+'\',300,200)">编辑</a>&nbsp;'
			 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="'+statusChange+'(\'${basePath}admin/agent/agent/'+statusChange+'.htm?id='+row.id+'\',300,200)">'+statusText+'</a>&nbsp;'
			 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="resetPassword(\'${basePath}admin/agent/agent/resetPassword.htm?id='+row.id+'\',300,200)">重置密码</a>&nbsp;' +
			 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'分配角色\',\'${basePath}admin/sys/roletree?userid='+row.userid+'&'+Math.random()+'\',300,400)">分配角色</a>&nbsp;';
	}
	
</script>
</head>
<body>
	<div class="easyui-panel" title="经纪人列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input type="hidden" name="model.deleted" value="0"/>
			<input type="hidden" name="model.type" value="3"/>
			<table>
				<tr>
					<td>用户名</td>
					<td><input name="model.username" class="easyui-validatebox textbox" value=""></td>
					<td></td>
					<td></td>
					<td></td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit();">搜索</a></td>
				</tr>
			</table>

		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0" url="datalist.json">
		<thead>
			<tr>
				<th field="id" width="30">id</th>
				<th field="username" width="80">用户名</th>
				<th field="phone" width="100">联系方式</th>
				<th field="status" width="100" formatter="formatterStatus">状态</th>
				<th field="lastlogintime" width="150" formatter="formatterDate">最后登录时间</th>
				<th field="isadmin" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
