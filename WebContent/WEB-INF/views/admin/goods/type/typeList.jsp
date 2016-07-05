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
		return  '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'编辑\',\'${basePath}admin/goods/type/typeUpdate.htm?id='+row.id+'\',300,300)">编辑</a>&nbsp;'
			 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'添加\',\'${basePath}admin/goods/type/typeAdd.htm?pid='+row.id+'\',300,270)">添加子菜单</a>&nbsp;'
			 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/goods/type/typeDelete.htm?id='+row.id+'\')">删除</a>';
	}
	
	function forrmaterStatus(value,row){
		return (value == 1 ? '显示':'隐藏');
	}
	
</script>
</head>
<body>
	<div class="easyui-panel" title="商品类目列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input type="hidden" name="model.deleted" value="0"/>
			<table>
				<tr>
					<td>菜单名</td>
					<td><input name="model.typename" class="easyui-validatebox textbox" value="${vo.model.name}"></td>
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
				<th field="parent.id" width="40">父id</th>
				<th field="typename" width="120">类目名称</th>
				<th field="status" formatter="forrmaterStatus" width="40">状态</th>
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
	                openDialog("添加","${basePath}admin/goods/type/typeAdd.htm",300,270);  
	            }  
	        }] ;
	</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
