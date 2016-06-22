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

  function formatteradmin_auditbutton(value,row)
  {
	  var str = '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看\',\'${basePath}houses/audit/toDetail.htm?id='+row.id+'\',600,450)">查看</a>&nbsp;';
	  if(row.status == HOUSES_AUDIT_NORMAL || row.status ==undefined){
		  str +='<a href="javascript:void(0)" class="easyui-linkbutton" '
		  		+'onclick="audit(\'${basePath}houses/audit/audit.htm?model.id='
		  		+row.id+'&model.status='+HOUSES_AUDIT_PASS+'\',\'确认审核通过？\')">审核通过</a>&nbsp;'
		  		+'<a href="javascript:void(0)" class="easyui-linkbutton"'
		  		+'onclick="audit(\'${basePath}houses/audit/audit.htm?model.id='
		  		+row.id+'&model.status='+HOUSES_AUDIT_NOPASS+'\',\'确认审核不通过？\')">审核不通过</a>&nbsp;';
	  }else{
		  str +='<span>审核通过</span>&nbsp;'
	  			+'<span>审核不通过</span>&nbsp;';
	  }
	  if(row.status == HOUSES_AUDIT_NORMAL || row.status ==undefined || row.status == HOUSES_AUDIT_NOPASS){
		  str +='<a href="javascript:void(0)" class="easyui-linkbutton" '
		  		+'onclick="deleteHouses(\'${basePath}houses/audit/delete.htm?id='
		  		+row.id+'\',\'确认删除？\')">删除</a>';
	  }else{
		  str +='<span>删除</span>&nbsp;';
	  }
  		return str ;
  }
  </script>
  <div class="easyui-panel" title="楼房审核列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>名称</td>
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
	<table id="dg" cellspacing="0" cellpadding="0"
		url="${basePath}houses/audit/datalist.htm">
		<thead>
			<tr>
				<th field="id" width="50px">id</th>
				<th field="name" width="100px">名称</th>
				<th field="detailaddress" width="100px">地址</th>
				<th field="housespic" width="100px">楼盘图片</th>
				<th field="certificatepic" width="100px">证件图片</th>
				<th field="status" formatter="show_audit_mes" width="100px">审核状态</th>
				<th field="" formatter="formatteradmin_auditbutton" width="100px">操作</th>
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
