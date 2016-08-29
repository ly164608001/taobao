<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css" />
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css" />
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/admin/user/operator.js"></script>
<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>

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
		var btn = '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'收获地址\',\'${basePath}admin/buyer/account/accountUpdate.htm?id='+row.id+'\',420,320)">通过</a>&nbsp;'
		 		+ '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'vpn设置\',\'${basePath}admin/buyer/account/accountUpdate.htm?id='+row.id+'\',420,320)">驳回</a>&nbsp;';		
		
		return btn;
	}
	
	function formatterStatus(value,row){
		var txt = '';
		if(value == 1){
			txt = '审核通过';
		}else if(value == 0){
			txt = '待审核';
		}else if(value == -1){
			txt = '审核驳回';
		}
		return txt;
	}
	
	function formatterType(value,row){
		return (value == 1 ? '身份证' : '学生证');
	}
	
</script>
</head>
<body>
	<div class="easyui-panel" title="实名认证列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0" url="datalist.json">
		<thead>
			<tr>
				<th field="id" width="40">id</th>
				<th field="type" formatter="formatterType" width="100">证件类型 </th>
				<th field="realname" width="120">真实姓名</th>
				<th field="certificationstatus" formatter="formatterStatus" width="80">审核状态</th>
				<th field="certificationtime" width="80">申请时间</th>
				<th field="isadmin" width="200" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
</body>
</html>
