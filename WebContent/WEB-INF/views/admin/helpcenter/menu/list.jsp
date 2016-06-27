<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>

<script>
	
	function formatteradminuserbutton(value,row) {
		return  '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'编辑\',\'${basePath}admin/helpcenter/menu/update.htm?id='+row.id+'\',300,300)">编辑</a>&nbsp;'
			 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'添加\',\'${basePath}admin/helpcenter/menu/add.htm?pid='+row.id+'\',300,270)">添加子菜单</a>&nbsp;'
			 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/helpcenter/menu/delete.htm?id='+row.id+'\')">删除</a>';
	}
	
	function forrmaterType(value,row){
		return (value == 1 ? '买家中心':'卖家中心');
	}
	
	function forrmaterPid(value,row){
		return (value == -1 ? '': value);
	}
	
</script>
</head>
<body>
	<div class="easyui-panel" title="帮助菜单列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input type="hidden" name="model.deleted" value="0"/>
			<table>
				<tr>
					<td>菜单名</td>
					<td><input name="model.name" class="easyui-validatebox textbox" value="${vo.model.name}"></td>
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
				<th field="id" width="40">id</th>
				<th field="parent.id" width="40" formatter="forrmaterPid">父id</th>
				<th field="name" width="120">菜单名称</th>
				<th field="type" formatter="forrmaterType" width="100">类型</th>
				<th field="url" width="180">链接</th>
				<th field="sort" width="30">排序</th>
				<th field="isadmin" width="180" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
	<script>
	toolbardata = [{  
	            text: '添加',  
	            iconCls: 'icon-add',  
	            handler: function() {  
	                openDialog("添加","${basePath}admin/helpcenter/menu/add.htm",300,270);  
	            }  
	        }] ;
	</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
