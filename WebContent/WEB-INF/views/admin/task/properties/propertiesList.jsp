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
		var oprBtn = '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openLrDialog(\'编辑\',\'${basePath}admin/task/properties/propertiesUpdate.htm?id='+row.id+'\',420,320)">编辑</a>&nbsp;';
		
		if(row.status == 0){
			oprBtn += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterowByTips(\'对应的属性值也将被删除,是否继续?\',\'${basePath}admin/task/properties/propertiesDelete.htm?id='+row.id+'\')">删除</a>&nbsp;';
		} 				
		return  oprBtn;
	}
	
	function formatterElementtype(value,row){
		if(value == 'radio'){
			return '单选框';
		}
		if(value == 'select'){
			return '下拉选择框';
		}
		if(value == 'checkbox'){
			return '多选框';
		}
		if(value == 'text'){
			return '输入框';
		}
		if(value == 'img'){
			return '图片';
		}
		return '';
	}
	
	function formatterType(value,row){
		var result = '';
		switch (value) {
		case 1:
			result = '任务基本信息';
			break;
		case 2:
			result = '任务需求设置';
			break;
		case 3:
			result = '买手身份验证';
			break;
		case 4:
			result = '发布任务设置';
			break;
		default:
			break;
		}
		return result;
	}
	
	function forrmaterStatus(value,row){
		return (value == 1 ? '已使用':'未使用');
	}
	
	function doSearch(){
		$('#dg').datagrid('options').pageNumber=1;
		$('#dgquery').submit();
	}
	
	toolbardata = [{  
	    text: '添加',  
	    iconCls: 'icon-add',  
	    handler: function() {  
	    	openLrDialog("添加","${basePath}admin/task/properties/propertiesAdd.htm",380,280);  
	    }  
	}] ;
</script>
</head>
<body>
	<div class="easyui-panel" title="任务属性列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input name="page" type="hidden" value="${vo.page}" id="page"/>
			<table>
				<tr>
					<td>属性名</td>
					<td><input name="model.name" class="easyui-validatebox textbox" value="${vo.model.name}" /></td>
					<td>元素类型</td>
					<td>
						<select name="model.elementtype" id="elementtype">
							<option value="">全部</option>
							<option value="text">输入框</option>
							<option value="radio">单选框</option>
							<option value="checkbox">多选框</option>
							<option value="select">下拉选择框</option>
							<option value="img">图片</option>
						</select>
					</td>
					<td>显示区域</td>
					<td>
						<select name="model.type" id="type">
							<option value="">全部</option>
							<option value="1">任务基本信息</option>
							<option value="2">任务需求设置</option>
							<option value="3">买手身份验证</option>
							<option value="4">发布任务设置</option>
						</select>
					</td>
					<td><a href="javascript:void(0);" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="doSearch();">搜索</a></td>
				</tr>
			</table>

		</form>
	</div>
	<table id="dg" cellspacing="0" cellpadding="0" url="datalist.json">
		<thead>
			<tr>
				<th field="id" width="40">id</th>
				<th field="name" width="120">属性名</th>
				<th field="elementname" width="120">别名</th>
				<th field="elementtype" formatter="formatterElementtype" width="80">元素类型</th>
				<th field="elementnum" width="60">元素个数</th>
				<th field="neednum" width="60">所需个数</th>
				<th field="sort" width="60">完成排序</th>
				<th field="price" width="70">所需蚂蚁币</th>
				<th field="type" formatter="formatterType" width="100">展示区域</th>
				<th field="status" formatter="forrmaterStatus" width="60">状态</th>
				<th field="isadmin" width="180" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
</body>
</html>
