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
  function formatteradmin_menubutton(value,row)
  {
  	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'修改\',\'${basePath}admin/sys/menu/add.htm?id='+row.id+'\',500,400)">修改</a>'+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'添加子级\',\'${basePath}admin/sys/menu/add.htm?parent.id='+row.id+'\',500,400)">添加子级分类</a>&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/sys/menu/delete.htm?id='+row.id+'\')">删除</a>'	;
  }
  function formatterType(value,row){
	  return value==1?"按钮":"菜单";
  }
  function formatterBelong(value,row){
	  return value==1?"前台":"后台";
  }
</script>
	<div class="easyui-panel" title="权限列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>权限名称</td>
					<td><input name="model.name" class="easyui-validatebox textbox"
						value="${model.name}"></td>
					<td>权限地址</td>
					<td><input name="model.href" class="easyui-validatebox textbox"
						value="${model.href}"></td>
					<td></td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">搜索</a></td>

				</tr>
			</table>

		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0"
		url="${basePath}admin/sys/menu/datalist.htm">
		<thead>
			<tr>
				<th field="id">id</th>
				<th field="name">名称</th>
				<th field="href">地址</th>
				<th field="isshow">显示</th>
				<th field="parent.id">父ID</th>
				<th field="type" formatter="formatterType">类型</th>
				<th field="belong" formatter="formatterBelong">所属</th>
				<th field="" formatter="formatteradmin_menubutton">操作</th>
			</tr>
		</thead>
	</table>
	<script>
toolbardata = [{  
            text: '添加',  
            iconCls: 'icon-add',  
            handler: function() {  
                openDialog("添加","${basePath}admin/sys/menu/add.htm",500,400);  
            }  
        }] ;
</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
