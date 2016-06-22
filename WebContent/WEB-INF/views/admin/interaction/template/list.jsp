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
	return '<a href="javascript:void(0)" class="easyui-linkbutton"'
	+ 'onclick="openDialog(\'编辑消息\',\'${basePath}admin/interaction/template/update.htm?id='+row.id+'\',300,200)">编辑</a>'
	    +'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看消息\',\'${basePath}admin/interaction/template/view.htm?id='+row.id+'\',300,200)">查看</a>'
		+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/interaction/template/delete.htm?id='+row.id+'\')">删除</a>';
}
</script>
</head>
<body>
	<div class="easyui-panel" title="短信模板列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>短信名称</td>
					<td><input name="model.name" class="easyui-validatebox textbox"
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
				<th field="name" width="10%" >短信名称</th>
				<th field="content" width="10%">短信内容</th>
				<th field="createtime" formatter="formatterDate" width="10%">创建时间</th>
				<th field="createuser" width="10%">创建人</th>
				<th field="isadmin" formatter="formatteradminuserbutton" width="10%">操作</th>
			</tr>
		</thead>
	</table>
	<script>
toolbardata = [{  
            text: '添加',  
            iconCls: 'icon-add',  
            handler: function() {  
                openDialog("添加消息","${basePath}/admin/interaction/template/add.htm",300,200);  
            }  
        }] ;
</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
