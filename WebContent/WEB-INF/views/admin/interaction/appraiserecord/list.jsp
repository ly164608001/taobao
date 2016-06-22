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
	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看点评\',\'${basePath}admin/interaction/appraiserecord/view.htm?id='+row.id+'\',300,280)">查看</a>'
	+ '&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'回复\',\'${basePath}admin/interaction/appraiserecord/reply.htm?id='+row.id+'\',300,280)">回复</a>'
		
}


</script>
</head>
<body>
	<div class="easyui-panel" title="点评列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
		<input type="hidden" name="model.deleted" value="0"/>
			<table>
				<tr>
					<td>点评内容</td>
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
	
	<table id="dg" cellspacing="0" cellpadding="0" url="datalist.htm">
		<thead>
			<tr>
				<th field="appraiseuser.username" width="10%" >点评人</th>
				<th field="house.name" width="10%"  >所属楼盘</th>
				<th field="appraisetime" width="10%"  formatter="formatterDate">点评时间</th>
				<th field="content" width="10%" >点评内容</th>
				<th field="status" width="10%">状态</th>
				<th field="type" width="10%" >类型</th>
				<th field="pricestar" width="10%">价格星级</th>
				<th field="placestar" width="10%">地段星级</th>
				<th field="trafficstar" width="10%">交通星级</th>
				<th field="conditionstar" width="10%">环境星级</th>
				<th field="pid" width="10%">父级点评</th>
				<th field="isadmin" width="10%" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
