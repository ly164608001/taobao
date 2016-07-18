<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
	<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<script>
		
		function formatteradminuserbutton(value,row) {
			return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrMediumDialog(\'编辑\',\'${basePath}admin/helpcenter/document/documentUpdate.htm?id='+row.id+'\',760,540)">编辑</a>&nbsp;'
				 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/helpcenter/document/documentDelete.htm?id='+row.id+'\')">删除</a>';
		}
		
		toolbardata = [{  
            text: '添加',  
            iconCls: 'icon-add',  
            handler: function() {  
            	openLrMediumDialog("添加","${basePath}admin/helpcenter/document/documentAdd.htm",720,500);  
            }  
        }] ;
		
	</script>
</head>

<body>
	<div class="easyui-panel" title="帮助文档列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input type="hidden" name="model.deleted" value="0"/>
			<table>
				<tr>
					<td>文档名</td>
					<td><input name="model.title" class="easyui-validatebox textbox" value="${vo.model.title}"></td>
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
				<th field="title" width="120">文档标题</th>
				<th field="menu.name" width="100">菜单类目</th>
				<th field="isadmin" width="180" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
</body>
</html>
