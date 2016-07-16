<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
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
  	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看\',\'${basePath}admin/sys/dict/view.htm?id='+row.id+'\',500,400)">查看</a>'
  	+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'编辑\',\'${basePath}admin/sys/dict/update.htm?id='+row.id+'\',500,400)">编辑</a>'
  	+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/sys/dict/delete.htm?id='+row.id+'\')">删除</a>';
  }
	toolbardata = [{  
	            text: '添加',  
	            iconCls: 'icon-add',  
	            handler: function() {  
	                openDialog("添加","${basePath}admin/sys/dict/add.htm",500,400);  
	            }  
	        }] ;
  </script>
  	<div class="easyui-panel" title="数据字典"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>名称</td>
					<td><input name="model.type" class="easyui-validatebox textbox"
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
	<table id="dg" cellspacing="0" cellpadding="0" url="${basePath}admin/sys/dict/datalist.json">
		<thead>
			<tr>
				<th field="id">id</th>
				<th field="label">标签名</th>
				<th field="value">值</th>
				<th field="type">类型</th>
				<th field="description">描述</th>
				<th field="" formatter="formatteradmin_rolebutton">操作</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
