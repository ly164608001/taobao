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
		return  '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'编辑\',\'${basePath}admin/task/propertiesvalue/propertiesValueUpdate.htm?id='+row.id+'\',300,300)">编辑</a>&nbsp;'
			 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/task/propertiesvalue/propertiesValueDelete.htm?id='+row.id+'\')">删除</a>';
		
		return  oprBtn;
	}
	
	function formatterStatus(value,row){
		return (value == 1 ? '已使用':'未使用');
	}
	
	toolbardata = [{  
        text: '添加',  
        iconCls: 'icon-add',  
        handler: function() {  
        	openLrDialog("添加","${basePath}admin/task/propertiesvalue/propertiesValueAdd.htm",300,270);  
        }  
    }] ;
	
</script>
</head>
<body>
	<div class="easyui-panel" title="属性值列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>属性</td>
					<td><input name="model.properties.elementname" class="easyui-validatebox textbox" value="${vo.model.properties.elementname}" /></td>
					<td>选项名称</td>
					<td><input name="model.label" class="easyui-validatebox textbox" value="${vo.model.label}" /></td>
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
				<th field="properties.elementname" width="120">属性</th>
				<th field="properties.status" formatter="formatterStatus" width="80">使用状态</th>
				<th field="keyvalue" width="120">属性值</th>
				<th field="label" width="120">选项名</th>
				<th field="func" width="100">方法名</th>
				<th field="memo" width="120">备注</th>
				<th field="isadmin" width="180" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
</body>
</html>
