<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/select.js"></script>

<script>
	function updateStatus(id,opr){
		var tipMsg = '';
		var url = '${basePath}admin/buyer/account/';
		
		if(opr == 'able'){
			tipMsg = '确认启用该小号?';
			url += 'able.htm?id=' + id;
		}else{
			tipMsg = '确认禁用该小号?';
			url += 'unable.htm?id=' + id;
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
		var btn = '';
		var status = row.status;
		
		if(status == 1){
			btn += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="updateStatus('+row.id+',\'unable\')">禁用</a>&nbsp;';
		}else{
			btn += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="updateStatus('+row.id+',\'able\')">启用</a>&nbsp;';
		} 
		
		btn += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'收获地址\',\'${basePath}admin/buyer/account/accountUpdate.htm?id='+row.id+'\',420,320)">收获地址</a>&nbsp;'
		 		+ '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'vpn设置\',\'${basePath}admin/buyer/account/accountUpdate.htm?id='+row.id+'\',420,320)">vpn设置</a>&nbsp;'		
		 		+ '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'基础信息\',\'${basePath}admin/buyer/account/accountUpdate.htm?id='+row.id+'\',420,320)">基础信息</a>&nbsp;'
		
		return btn;
	}
	
	function formatterStatus(value,row){
		var txt = '';
		if(value == 1){
			txt = '启用';
		}else{
			txt = '禁用';
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
	<div class="easyui-panel" title="小号列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input name="model.createuser.id" type="hidden" value="${loginUser.id}">
		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0" url="datalist.json">
		<thead>
			<tr>
				<th field="id" width="40">id</th>
				<th field="accountno" width="100">淘宝账号 </th>
				<th field="credit" formatter="formatterLevel" width="120">现信誉</th>
				<th field="receivednum" width="120">当日/本周/已接任务数</th>
				<th field="status" formatter="formatterStatus" width="80">买号状态</th>
				<th field="sort" width="80">买号排序</th>
				<th field="isadmin" width="200" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
	<script>
	toolbardata = [{  
	            text: '添加',  
	            iconCls: 'icon-add',  
	            handler: function() {  
	                openDialog("添加","${basePath}admin/buyer/account/accountAdd.htm",380,280);  
	            }  
	        }] ;
	</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
