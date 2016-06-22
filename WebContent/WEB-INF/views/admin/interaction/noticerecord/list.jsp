<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/admin/interaction/operator.js"></script>

<script>
function formatteradminuserbutton(value,row)
{
	var statusText = '';

	if(row.status == -1){
	statusText = '已读';
	}else{
		statusText = '未读';
	}
	return '<a href="javascript:void(0)" class="easyui-linkbutton"'
	+ 'onclick="openDialog(\'编辑消息\',\'${basePath}admin/interaction/noticerecord/update.htm?id='+row.id+'\',300,200)">编辑</a>'
	    +'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'查看消息\',\'${basePath}admin/interaction/noticerecord/view.htm?id='+row.id+'\',300,280)">查看</a>'
	   +'&nbsp;&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="updatestatus(\'${basePath}admin/interaction/noticerecord/updatestatus.htm?id='+row.id+'&status='+row.status+'\',300,200)">'+statusText+'</a>'		
		+'&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/interaction/noticerecord/delete.htm?id='+row.id+'\')">删除</a>';
}

</script>

</head>
<body>
	<div class="easyui-panel" title="消息列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>消息内容</td>
					<td><input name="model.content" class="easyui-validatebox textbox"
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
	
	<table id="dg" cellspacing="0" cellpadding="0" url="datalist.htm">
		<thead>
			<tr>
				<th field="content" width="100" >消息内容</th>
				<!-- <th field="type" width="80" formatter=formatterType>消息类型</th> -->
				<th field="type" width="80" formatter="formatterType">消息类型</th>
				<th field="receiveuser.username" width="80" > 接收人</th>
				<th field="sendtime" width="200" formatter="formatterDate">发送时间</th>
				<th field="receivetime" width="200" formatter="formatterDate">接收时间</th>
				<th field="status" width="40" formatter="formatterStatus">状态</th>
				<th field="isadmin" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
	<script>
			toolbardata = [{  
			            text: '添加',  
			            iconCls: 'icon-add',  
			            handler: function() {  
			                openDialog("添加消息","${basePath}/admin/interaction/noticerecord/add.htm",300,200);  
			            }  
			        }] ;
	</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
