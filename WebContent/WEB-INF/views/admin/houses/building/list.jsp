<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/admin/houses/global.js"></script>
</head>
<body>

	<script>
  function formatteradmin_buildingbutton(value,row)
  {
	  var str = '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看\',\'${basePath}houses/building/toDetail.htm?id='+row.id+'\',600,450)">查看</a>&nbsp;';
	  str +='<a href="javascript:void(0)" class="easyui-linkbutton" '
	  		+'onclick="deleteHouses(\'${basePath}houses/building/delete.htm?model.housesBuilding.id='
	  		+row.id+'\',\'确认删除？\')">删除</a>';
	  return str ;
  }
  </script>
  <div class="easyui-panel" title="楼栋列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>名称</td>
					<td><input name="name" class="easyui-validatebox textbox"
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
	<table id="dg" cellspacing="0" cellpadding="0"
		url="${basePath}houses/building/datalist.htm">
		<thead>
			<tr>
				<th field="id" width="50px">id</th>
				<th field="name" width="100px">楼栋名称</th>
				<th field="allhouseholds" width="100px">总户数</th>
				<th field=allfloors width="100px">总层数</th>
				<th field="floorheight" width="100px">层高</th>
				<th field="isemptyspace" width="100px">架空层</th>
				<th field="decoratestateId" width="100px">装修</th>
				<th field="deleted" width="100px">梯户比</th>
				<th field="" formatter="formatteradmin_buildingbutton" width="100px">操作</th>
			</tr>
		</thead>
	</table>
	<!-- <script>
toolbardata = [{  
            text: '添加',  
            iconCls: 'icon-add',  
            handler: function() {  
                openDialog("添加","${basePath}admin/system/role/add.htm",300,130);  
            }  
        }] ;
</script> -->
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
