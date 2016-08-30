<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>

<script>
	function audit(id,opr){
		var tipMsg = '';
		var url = '${basePath}admin/buyer/account/';
		
		if(opr == 'pass'){
			tipMsg = '确认通过该待审记录?';
			url += 'pass.htm?id=' + id;
		}else{
			tipMsg = '确认驳回该待审记录?';
			url += 'reject.htm?id=' + id;
		}
		
		$.messager.confirm('确认',tipMsg,function(a){  
			if(a) {
				$.ajax({  
					url : url,    
					success : function(){
						$('#dg').datagrid('reload');  
					}  
				});
			}          
		});
	}
	
	function formatteradminuserbutton(value,row) {
		var btn = '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'确认通过\',\'${basePath}admin/buyer/account/accountUpdate.htm?id='+row.id+'\',420,320)">查看</a>&nbsp;';';
		if(row.auditstatus == 0){
			btn += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'确认通过\',\'${basePath}admin/buyer/account/accountUpdate.htm?id='+row.id+'\',420,320)">通过</a>&nbsp;'
	 		+ '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'确认驳回\',\'${basePath}admin/buyer/account/accountUpdate.htm?id='+row.id+'\',420,320)">驳回</a>&nbsp;';	
		}
		
		return btn;
	}
	
	function formatterIdentity(value,row){
		return (value == 1 ? '是' : '否');
	}
	
	function formatterStatus(value,row){
		var txt = '';
		if(value == 1){
			txt = '审核通过';
		}else if(value == 0){
			txt = '待审核';
		}else if(value == -1){
			txt = '审核失败';
		}
		return txt;
	}
	
	function formatterLevel(value,row){
		var txt = value + '';
		var level = row.level;
		var icon = '${basePath}' + level.icon;
		var iconnum = level.iconnum;
		var iconurl = '${basePath}' + icon;
		
		for(var i = 0 ; i < iconnum ; i++){
			txt += '<img src="' + icon + '"/>';
		}
		
		return txt;
	}
	
</script>
</head>
<body>
	<div class="easyui-panel" title="买家小号列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input name="model.createuser.id" type="hidden" value="${loginUser.id}" />
		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0" url="datalist.json">
		<thead>
			<tr>
				<th field="id" width="40">id</th>
				<th field="accountno" width="100">淘宝旺旺号</th>
				<th field="credit" formatter="formatterLevel" width="120">现信誉</th>
				<th field="identification" formatter="formatterIdentity" width="120">是否已实名</th>
				<th field="auditstatus" formatter="formatterStatus" width="80">审核状态</th>
				<th field="createuser.username" width="80">申请人</th>
				<th field="isadmin" width="200" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
</body>
</html>
