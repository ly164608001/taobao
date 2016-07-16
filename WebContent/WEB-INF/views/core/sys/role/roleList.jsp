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
</head>
<body>
<script type="text/javascript">
toolbardata = [{  
    text: '添加',  
    iconCls: 'icon-add',  
    handler: function() {  
        lrDialog.openMini("${basePath}admin/sys/role/roleAdd.htm", "角色新增", function(window) {
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
}];
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
  function formatteradmin_rolebutton(value,row)
  {
	var operation = "";
	operation += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'修改\',\'${basePath}admin/sys/role/roleUpdate.htm?id='+row.id+'\')">修改</a>';
	operation += '&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/sys/role/roleDelete.htm?id='+row.id+'\')">删除</a>';
	operation += '&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'分配权限\',\'${basePath}admin/sys/menu/rolemenutree.htm?roleid='+row.id+'&'+Math.random()+'\')">分配权限</a>';
  	return operation;
  	
  }
</script>
	<div class="easyui-panel" title="角色列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input type="hidden" value="-1" name="model.company.id"/>
			<table>
				<tr>
					<td>角色名称</td>
					<td><input name="model.name" class="easyui-validatebox textbox"
						value="${model.name}"></td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">搜索</a></td>

				</tr>
			</table>

		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0"
		url="${basePath}admin/sys/role/datalist.htm">
		<thead>
			<tr>
				<th field="id">id</th>
				<th field="name">名称</th>
				<th field="company.enterprisename">公司名称</th>
				<th field="" formatter="formatteradmin_rolebutton">操作</th>
			</tr>
		</thead>
	</table>
</body>
</html>
