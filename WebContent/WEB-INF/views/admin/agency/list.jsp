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
  	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看\',\'${basePath}admin/agency/view.htm'+row.id+'\',600,450)">查看</a>'
  	+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'编辑\',\'${basePath}admin/agency/update.htm\',600,450)">编辑</a>'
  	+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/agency/delete.htm?id='+row.id+'\')">删除</a>';
  }
  </script>
  	<div class="easyui-panel" title="代理列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>客户名称</td>
					<td><input name="model.username" class="easyui-validatebox textbox"
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
	<table id="dg" cellspacing="0" cellpadding="0" url="${basePath}admin/agency/datalist.json">
		<thead>
			<tr>
				<th field="id">id</th>
				<th field="title">标题</th>
				<th field="type">代理类型</th>
				<th field="commissiontype">佣金类型</th>
				<th field="housesid">所属楼盘</th>
				<th field="publishtime" formatter="formatterDate">创建时间</th>
				<th field="status">状态</th>
				<th field="" formatter="formatteradmin_rolebutton">操作</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
