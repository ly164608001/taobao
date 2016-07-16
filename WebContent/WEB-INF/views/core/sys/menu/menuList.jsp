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
        lrDialog.openMini("${basePath}admin/sys/menu/menuAdd.htm?parent.id=${vo.parentid}", "菜单新增", function(window) {
			var returnValue = window.returnValue;
			if (returnValue == undefined) {//无返回值 直接关闭 
				return true;
			} else {//有返回值 处理一些事
				lrDialog.tips(returnValue);
				var win = art.dialog.open.origin;
				win.parent.rightTree.location.reload();
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
			var win = art.dialog.open.origin;
			win.parent.rightTree.location.reload();
			$('#dg').datagrid('reload');
			return true;
		}
	});
}
  function formatteradmin_menubutton(value,row)
  {
  	return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'修改\',\'${basePath}admin/sys/menu/menuUpdate.htm?id='+row.id+'\')">修改</a>'
  	+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'添加子级\',\'${basePath}admin/sys/menu/menuAdd.htm?parent.id='+row.id+'\')">添加子级分类</a>'
  	+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/sys/menu/menuDelete.htm?id='+row.id+'\')">删除</a>'	;
  }
  function formatterType(value,row){
	  return value==1?"按钮":"菜单";
  }
  function formatterBelong(value,row){
	  return value==1?"前台":"后台";
  }
  function formatterShow(value,row){
	  return value==1?"是":"否";
  }
  function formatterTarget(value,row){
	  var result = "";
	  switch (value) {
		case "admin":
			result = "运营管理员";
			break;
		case "member":
			result = "会员";
			break;
		case "agency":
			result = "代理机构";
			break;
		case "estate":
			result = "房地产商";
			break;
		default:
			break;
	  }
	  return result;
  }
</script>
	<div class="easyui-panel" title="权限列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>权限名称</td>
					<td><input name="model.name" class="easyui-validatebox textbox"
						value="${model.name}"></td>
					<td>权限地址</td>
					<td><input name="model.href" class="easyui-validatebox textbox"
						value="${model.href}"></td>
					<td>角色类型</td>
					<td>
						<select name="model.target">
							<option></option>
							<option value="admin">运营管理员</option>
							<option value="member">会员</option>
							<option value="agency">代理机构</option>
							<option value="estate">房地产商</option>
						</select>
					</td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">搜索</a></td>
				</tr>
			</table>
		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0" url="${basePath}admin/sys/menu/datalist.htm?parentid=${vo.parentid}">
		<thead>
			<tr>
				<th field="id">id</th>
				<th field="name">名称</th>
				<th field="target" formatter="formatterTarget">角色类型</th>
				<th field="href" width="200">地址</th>
				<th field="isshow" formatter="formatterShow">显示</th>
				<th field="parent.name">父ID</th>
				<th field="type" formatter="formatterType">类型</th>
				<th field="belong" formatter="formatterBelong">所属</th>
				<th field="permission">权限标识</th>
				<th field="" formatter="formatteradmin_menubutton">操作</th>
			</tr>
		</thead>
	</table>
</body>
</html>
