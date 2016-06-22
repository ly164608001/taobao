<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/admin/activity/operator.js"></script>
<script>
function formatteradminuserbutton(value,row)
{
	var statusText = '';

	if(row.status == 1){
		statusText = '禁用';
	}else{
		statusText = '启用';
	}
	return '<a href="javascript:void(0)" class="easyui-linkbutton"'
		+ 'onclick="openDialog(\'修改用户\',\'${basePath}admin/activity/thematic/update.htm?id='+row.id+'\',800,450)">修改</a>'
		+'&nbsp;&nbsp;<a href="${basePath}admin/activity/thematic/view.htm?id='+row.id+'" class="easyui-linkbutton">查看</a>'
		+'&nbsp;&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="updatestatus(\'${basePath}admin/activity/thematic/updatestatus.htm?id='+row.id+'&status='+row.status+'\',300,200)">'+statusText+'</a>'		
		+'&nbsp;&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/activity/thematic/delete.htm?id='+row.id+'\')">删除</a>';
}


</script>
</head>
<body>
	<div class="easyui-panel" title="专题活动列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>活动名称</td>
					<td><input name="name" class="easyui-validatebox textbox"
						value=""></td>
					<td><input name="model.type" type="hidden" value="2"></td>
					<td></td>
					<td></td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">搜索</a></td>
				</tr>
			</table>

		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0" url="datalist.htm?type=2">
		<thead>
			<tr>
				<th field="id" width="30">id</th>
				<th field="name" width="80">活动名称</th>
				<th field="applytimes" width="100" formatter="formatterDate" >报名开始时间</th>
				<th field="applytimee" width="100" formatter="formatterDate">报名结束时间</th>
				<th field="starttime" width="100" formatter="formatterDate">活动开始时间</th>
				<th field="endtime" width="100" formatter="formatterDate">活动结束时间</th>
				<th field="personnum" width="100">限制人数</th>
				<th field="applynum" width="100">报名人数</th>
				<th field="status" width="100" formatter="formatterStatus">接受报名</th>
				<th field="isapply" width="150" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	<script>
toolbardata = [{  
            text: '添加',  
            iconCls: 'icon-add',  
            handler: function() {  
                openDialog("添加活动","${basePath}/admin/activity/thematic/add.htm",800,450);  
            }  
        }] ;
</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
