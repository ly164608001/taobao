<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>

<script>
	
	function formatteradminuserbutton(value,row) {
		var oprBtn = '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'编辑\',\'${basePath}admin/seller/praise/praiseUpdate.htm?id='+row.id+'\',380,300)">编辑</a>&nbsp;'
		 				+ '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/seller/praise/praiseDelete.htm?id='+row.id+'\')">删除</a>&nbsp;';
		return  oprBtn;
	}
	
	function forrmaterStatus(value,row){
		return (value == 1 ? '已使用':'未使用');
	}
	
</script>
</head>
<body>
	<div class="easyui-panel" title="好评内容列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>关键字</td>
					<td><input name="keyword" class="easyui-validatebox textbox" value="${vo.keyword}"></td>
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
				<th field="label.name" width="80">标签名</th>
				<th field="content" width="80">好评内容</th>
				<th field="status" formatter="forrmaterStatus" width="80">状态</th>
				<th field="createtime" formatter="formatterDate" width="180">添加时间</th>
				<th field="isadmin" width="180" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
	<script>
	toolbardata = [{  
	            text: '添加',  
	            iconCls: 'icon-add',  
	            handler: function() {  
	                openDialog("添加","${basePath}admin/seller/praise/praiseAdd.htm",380,300);  
	            }  
	        }] ;
	</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
