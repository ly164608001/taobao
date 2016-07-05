<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
	<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
	<script type="text/javascript" src="${basePath}static/js/select.js"></script>
	
	<link rel="stylesheet" href="${basePath}static/js/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="${basePath}static/js/kindeditor/plugins/code/prettify.css" />
	
	<script charset="utf-8" src="${basePath}static/js/kindeditor/kindeditor-all.js"></script>
	<script charset="utf-8" src="${basePath}static/js/kindeditor/lang/zh-CN.js"></script>
	<script charset="utf-8" src="${basePath}static/js/kindeditor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content"]', {
				cssPath : '${basePath}static/js/kindeditor/plugins/code/prettify.css',
				uploadJson : '${basePath}admin/common/fileupload/upload.htm',
				fileManagerJson : '${basePath}admin/common/fileupload/upload2.htm',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
	<script>
		
		function formatteradminuserbutton(value,row) {
			return '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openDialog(\'编辑\',\'${basePath}admin/helpcenter/document/documentUpdate.htm?id='+row.id+'\',760,540)">编辑</a>&nbsp;'
				 + '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="deleterow(\'${basePath}admin/helpcenter/document/documentDelete.htm?id='+row.id+'\')">删除</a>';
		}
		
	</script>
</head>

<body>
	<div class="easyui-panel" title="帮助文档列表"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		<form id="dgquery">
			<input type="hidden" name="model.deleted" value="0"/>
			<table>
				<tr>
					<td>文档名</td>
					<td><input name="model.title" class="easyui-validatebox textbox" value="${vo.model.title}"></td>
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
				<th field="title" width="120">文档标题</th>
				<th field="menu.name" width="100">菜单类目</th>
				<th field="isadmin" width="180" formatter="formatteradminuserbutton">操作</th>
			</tr>
		</thead>
	</table>
	
	<script>
	toolbardata = [{  
	            text: '添加',  
	            iconCls: 'icon-add',  
	            handler: function() {  
	                openDialog("添加","${basePath}admin/helpcenter/document/documentAdd.htm",720,500);  
	            }  
	        }] ;
	</script>
	<script type="text/javascript" src="${basePath}static/js/admin/initdata.js"></script>
	<div id="mydialog"></div>
</body>
</html>
