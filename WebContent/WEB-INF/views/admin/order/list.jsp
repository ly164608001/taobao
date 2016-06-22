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
  	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看\',\'${basePath}admin/order/view.htm\',600,450)">查看</a>'
  	+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'修改\',\'${basePath}admin/order/update.htm\',600,450)">修改</a>'
  	+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/order/delete.htm?id='+row.id+'\')">删除</a>';
  }
  </script>
  	<div class="easyui-panel" title="订单列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>订单编号</td>
					<td><input name="model.orderno" class="easyui-validatebox textbox"
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
	<table id="dg" cellspacing="0" cellpadding="0" url="${basePath}admin/order/datalist.json">
		<thead>
			<tr>
				<th field="id">id</th>
				<th field="orderno">订单编号</th>
				<th field="userid">创建人</th>
				<th field="createtime">创建时间</th>
				<th field="status">订单状态</th>
				<th field="" formatter="formatteradmin_rolebutton">操作</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
