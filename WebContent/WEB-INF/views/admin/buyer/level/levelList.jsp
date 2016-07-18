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
	toolbardata = [{  
	    text: '添加',  
	    iconCls: 'icon-add',  
	    handler: function() {
	    	openLrDialog('添加','${basePath}admin/buyer/level/levelAdd.htm');
	    }  
	}] ;
	
	function formatteradminuserbutton(value,row) {
		return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'编辑\',\'${basePath}admin/buyer/level/levelUpdate.htm?id='+row.id+'\',420,320)">编辑</a>&nbsp;'
		 				+ '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/buyer/level/levelDelete.htm?id='+row.id+'\')">删除</a>&nbsp;';
	}
	
	function openLrDialog(title, url){
		lrDialog.openMini(url, title, function(window) {
			var returnValue = window.returnValue;
			if (returnValue == undefined) {//无返回值 直接关闭 
				return true;
			} else {//有返回值 处理一些事
				lrDialog.tips(returnValue);
				$('#dg').datagrid('reload');
				return true;
			}
		});
	}
	
	function formatterType(value,row){
		var txt = '';
		switch (value) {
		case 1:
			txt = '买家信用';
			break;

		default:
			break;
		}
		
		return txt;
	}
	
</script>
</head>
<body>
	<div class="easyui-panel" title="淘宝等级列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input name="model.deleted" type="hidden" value="0">
			<table>
				<tr>
					<td>等级名称</td>
					<td><input name="model.name" class="easyui-validatebox textbox" value="${vo.model.name}"></td>
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
				<th field="name" width="80">等级名称</th>
				<th field="type" formatter="formatterType" width="80">等级类型</th>
				<th field="mincredit" width="80">最低积分</th>
				<th field="maxcredit" width="80">最高积分</th>
				<th field="icon" width="290">图标</th>
				<th field="iconnum" width="60">图标数</th>
				<th field="isadmin" width="180" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
</body>
</html>
