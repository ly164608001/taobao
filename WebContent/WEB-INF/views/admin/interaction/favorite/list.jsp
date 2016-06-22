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
  	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看\',\'${basePath}admin/interaction/favorite/view.htm?id='+row.id+'\',600,450)">查看</a>';
  	<!--+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/interaction/favorite/delete.htm?id='+row.id+'\')">删除</a>';-->
  }
  

  
  </script>
  	<div class="easyui-panel" title="收藏列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>楼盘收藏用户</td>
					<td><input name="model.user.username" class="easyui-validatebox textbox"
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
	<table id="dg" cellspacing="0" cellpadding="0" url="${basePath}admin/interaction/favorite/datalist.json">
		<thead>
			<tr>
				<th field="user.username"  width="10%">收藏用户</th>
				<th field="housename.name" width="10%">收藏楼盘名称</th>
				<th field="favoritetime" formatter="formatterDate">收藏时间</th>
				<th field="orderValue" >排序</th>
				<!--  <th field="housestypeids">收藏户型集合</th>-->
				<th field=""  formatter="formatteradmin_rolebutton">操作</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
