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
	function formatteradminuserbutton(value,row) {
		var oprBtn = '';
		
		if(row.status == 0){
			oprBtn += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="passRecharge('+row.id+');">标记已处理</a>&nbsp;'
				+ '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'驳回说明\',\'${basePath}admin/task/properties/propertiesUpdate.htm?id='+row.id+'\',420,320)">驳回</a>&nbsp;';
		} 				
		
		return  oprBtn;
	}
	
	function passRecharge(id){
		$.messager.confirm('确认','确认将该充值标记为已处理?',function(a){  
			if(a) {
				$.ajax({  
					url: '${basePath}admin/trace/recharge/passRecharge.htm?id='+id,
					dataType:'json',
					success:function(result){
						if(result.success){
							$('#dg').datagrid('reload');  
						}else{
							$.messager.alert('删除失败',result.msg);
						}
						
					}  
				});
			}          
		});  
	}
	
	function forrmaterStatus(value,row){
		var result = '';
		switch (value) {
		case 0:
			result = '待处理';
			break;
		case 1:
			result = '已处理';
			break;
		case -1:
			result = '充值驳回';
			break;
		default:
			break;
		}
		return result;
	}
	
</script>
</head>
<body>
	<div class="easyui-panel" title="充值列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>关键字</td>
					<td><input name="searchkey" class="easyui-validatebox textbox" value="${vo.searchkey}" placeholder="账号/交易号/用户" /></td>
					<td>状态</td>
					<td>
						<select name="model.status" id="status">
							<option value="">全部</option>
							<option value="0">待处理</option>
							<option value="1">已处理</option>
							<option value="-1">充值驳回</option>
						</select>
					</td>
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
				<th field="payaccount" width="120">充值账号</th>
				<th field="payno" width="120">充值交易号</th>
				<th field="createuser.username" width="80">充值用户</th>
				<th field="channel" width="60">充值方式</th>
				<th field="status" formatter="forrmaterStatus" width="60">状态</th>
				<th field="createtime" formatter="formatterDate" width="120">充值时间</th>
				<th field="memo" width="80">备注</th>
				<th field="isadmin" width="180" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
</body>
</html>
