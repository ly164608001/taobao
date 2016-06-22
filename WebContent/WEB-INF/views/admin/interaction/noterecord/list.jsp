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
  	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看\',\'${basePath}admin/interaction/noterecord/view.htm?id='+row.id+'\',600,450)">查看</a>';
  	<!--+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/interaction/favorite/delete.htm?id='+row.id+'\')">删除</a>';-->
  }
  </script>
  	<div class="easyui-panel" title="短信记录列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>短信内容</td>
					<td><input name="model.content" class="easyui-validatebox textbox"
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
	<table id="dg" cellspacing="0" cellpadding="0" url="${basePath}admin/interaction/noterecord/datalist.json">
		<thead>
			<tr>
				<th field="content" width="10%">短信内容</th>
				<th field="sendtime" formatter="formatterDate" width="10%">短信发送时间</th>
				<th field="senduser" width="10%">发送人</th>
				<th field="receiveuser" width="10%">接收方</th>
				<th field="type" width="10%">短信类型</th>
				<th field="description" width="10%">短信说明</th>
				<th field=""  formatter="formatteradmin_rolebutton">操作</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
