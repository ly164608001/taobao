<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<script>
  function formatteradmin_rolebutton(value,row)
  {
  	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'修改\',\'${basePath}admin/sys/role/add.htm?id='+row.id+'\',300,130)">修改</a>'+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/sys/role/delete.htm?id='+row.id+'\')">删除</a>&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'分配权限\',\'${basePath}admin/sys/menu/menutree.htm?roleid='+row.id+'&'+Math.random()+'\',300,400)">分配权限</a>';
  }
  </script>
  <div class="easyui-panel" title="角色列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>角色名称</td>
					<td><input name="model.name" class="easyui-validatebox textbox"
						value="${model.name}"></td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">搜索</a></td>

				</tr>
			</table>

		</form>
	</div>
		
	<table id="dg" cellspacing="0" cellpadding="0"
		url="${basePath}admin/sys/role/datalist.htm">
		<thead>
			<tr>
				<th field="id">id</th>
				<th field="name">名称</th>
				<th field="" formatter="formatteradmin_rolebutton">操作</th>
			</tr>
		</thead>
	</table>
	<script>
toolbardata = [{  
            text: '添加',  
            iconCls: 'icon-add',  
            handler: function() {  
                openDialog("添加","${basePath}admin/sys/role/add.htm",300,130);  
            }  
        }] ;
</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
