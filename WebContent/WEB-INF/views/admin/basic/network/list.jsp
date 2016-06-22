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
  	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看\',\'${basePath}admin/basic/network/view.htm?id='+row.id+'\',300,200)">查看</a>'
  	+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'编辑\',\'${basePath}admin/basic/network/update.htm?id='+row.id+'\',300,200)">编辑</a>'
  	+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/basic/network/delete.htm?id='+row.id+'\')">删除</a>';
  }
	toolbardata = [{  
	            text: '添加',  
	            iconCls: 'icon-add',  
	            handler: function() {  
	                openDialog("添加","${basePath}admin/basic/network/add.htm",300,200);  
	            }  
	        }] ;
  </script>
  	<div class="easyui-panel" title="网络工作类型"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>名称</td>
					<td><input name="model.name" class="easyui-validatebox textbox"
						value=""></td>
					<td>删除状态</td>
					<td>
						<select name="model.deleted">
						<option value=""></option>
							<c:forEach var="item" items="${fns:getDictList('YesOrNo')}">
								<option value="${item.value}">${item.label}</option>
							</c:forEach>
						</select>
					</td>
					<td></td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">搜索</a></td>
				</tr>
			</table>
		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0" url="${basePath}admin/basic/network/datalist.json">
		<thead>
			<tr>
				<th field="id">id</th>
				<th field="name">名称</th>
				<th field="deleted">删除状态</th>
				<th field="" formatter="formatteradmin_rolebutton">操作</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
