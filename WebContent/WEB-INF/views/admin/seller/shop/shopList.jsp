<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>

<script>
	
	function formatteradminuserbutton(value,row) {
		var oprBtn = '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'编辑\',\'${basePath}admin/seller/shop/shopUpdate.htm?id='+row.id+'\',300,300)">编辑</a>&nbsp;'
		 				+ '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/seller/shop/shopDelete.htm?id='+row.id+'\')">删除</a>&nbsp;';
		if(row.status == 0){
			oprBtn += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="activate('+row.id+')">激活</a>&nbsp;';
		}
		return  oprBtn;
	}
	
	function forrmaterType(value,row){
		return (value == 1 ? '淘宝店铺':'其他店铺');
	}
	
	function forrmaterStatus(value,row){
		return (value == 1 ? '激活':'未激活');
	}
	
	function activate(id){
		$.messager.confirm("提示", "您确定要激活该店铺吗？", function (data) {
            if (data) {
                $.ajax({
                	type : 'POST',
                	url : '${basePath}admin/seller/shop/activate.htm',
                	data : {'id':id},
                	dataType : 'json',
                	success : function(result){
                		if(result.success){
                			$('#dgquery').submit();
                		}
                	}
               
                });
            }
        });
	}
</script>
</head>
<body>
	<div class="easyui-panel" title="店铺列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<table>
				<tr>
					<td>店铺名</td>
					<td><input name="model.name" class="easyui-validatebox textbox" value="${vo.model.name}"></td>
					<td></td>
					<td></td>
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
				<th field="name" width="120">店铺名称</th>
				<th field="manager" width="100">掌柜号</th>
				<th field="user.username" width="100">用户</th>
				<th field="type" formatter="forrmaterType" width="80">类型</th>
				<th field="alltasknum" width="80">总发布任务</th>
				<th field="status" formatter="forrmaterStatus" width="80">状态</th>
				<th field="isadmin" width="180" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
	<script>
	toolbardata = [{  
	            text: '添加',  
	            iconCls: 'icon-add',  
	            handler: function() {  
	                openDialog("添加","${basePath}admin/seller/shop/shopAdd.htm",300,270);  
	            }  
	        }] ;
	</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
