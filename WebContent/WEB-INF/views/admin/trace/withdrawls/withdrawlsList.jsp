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
			oprBtn += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="doWithdrawls('+row.id+');">处理</a>&nbsp;'
				+ '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'驳回说明\',\'${basePath}admin/task/properties/propertiesUpdate.htm?id='+row.id+'\',420,320)">驳回</a>&nbsp;';
		} 				
		
		return  oprBtn;
	}
	
	function doWithdrawls(id){
		$.messager.prompt('处理验证', '请输入交易号:', function(withdrawlsNo){
			if(withdrawlsNo){
				var url = '${basePath}admin/trace/withdrawls/passWithdrawls.htm?id='
				 				+ id + '&withdrawalno='+withdrawlsNo;
				$.ajax({  
					url: url,
					dataType:'json',
					success:function(result){
						if(result.success){
							$('#dg').datagrid('reload');  
						}else{
							$.messager.alert('失败提示',result.msg);
						}
						
					}  
				});
			}
		});
	}
	
	function forrmaterType(value,row){
		return (value == 1 ? '正常到账(24小时)':'快速到账(2小时)');
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
			result = '提现驳回';
			break;
		default:
			break;
		}
		return result;
	}
	
</script>
</head>
<body>
	<div class="easyui-panel" title="提现列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>关键字</td>
					<td><input name="searchkey" class="easyui-validatebox textbox" value="${vo.searchkey}" placeholder="账号/交易号/用户" /></td>
					<td>&nbsp;</td>
					<td>状态</td>
					<td>
						<select name="model.status" id="status">
							<option value="">全部</option>
							<option value="1">待处理</option>
							<option value="2">已处理</option>
							<option value="-1">提现驳回</option>
						</select>
					</td>
					<td>&nbsp;</td>
					<td>提现类型</td>
					<td>
						<select name="model.type" id="type">
							<option value="">全部</option>
							<option value="1">正常到账</option>
							<option value="2">快速到账</option>
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
				<th field="account.accountno" width="120">提现账号</th>
				<th field="account.accountname" width="80">开户名</th>
				<th field="user.username" width="80">提现用户</th>
				<th field="money" width="80">提现金额</th>
				<th field="commission" width="80">手续费</th>
				<th field="arrivalmoney" width="80">到账金额</th>
				<th field="type" formatter="forrmaterType" width="60">提现类型</th>
				<th field="status" formatter="forrmaterStatus" width="60">状态</th>
				<th field="createtime" formatter="formatterDate" width="120">提现时间</th>
				<th field="memo" width="80">备注</th>
				<th field="isadmin" width="180" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
</body>
</html>
