<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script>
function formatteradminuserbutton(value,row)
{
	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看足迹\',\'${basePath}admin/interaction/browerhistory/view.htm?id='+row.id+'\',300,280)">查看</a>'
		
}


</script>
</head>
<body>
	<div class="easyui-panel" title="足迹列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>浏览用户</td>
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
	<table id="dg" cellspacing="0" cellpadding="0" url="datalist.htm">
		<thead>
			<tr>
				<th field="user.username" width="10%" >浏览用户</th>
				<th field="house.name"  width="10%" ">浏览楼盘名字</th>
				<th field="browertime" width="10%" formatter="formatterDate">访问时间</th>
				<th field="isadmin" width="10%" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
