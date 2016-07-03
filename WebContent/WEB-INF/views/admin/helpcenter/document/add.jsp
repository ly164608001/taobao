<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
	<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
	<script type="text/javascript" src="${basePath}static/js/select.js"></script>
</head>
<body>
	
	<form id="addform" action="${basePath}admin/helpcenter/document/addsave.htm" method="post">
		<table cellpadding="5">
			<tr>
				<td>菜单类目:</td>
				<td colspan="3">
					<span>
						<select onchange="_onchange(this);" class="xytSelect"
								link="${basePath}admin/helpcenter/menu/getlistbypid.htm" pid="-1"
								valuename="id" labelname="name">
						</select>
						<input type="hidden" value="" name="menu.id" />
					</span>
				</td>
			</tr>
			<tr>
				<td>文档标题:</td>
				<td><input name="title" class="easyui-validatebox textbox" width="120px;"/></td>
				<td>排序:</td>
				<td><input name="sort" class="easyui-validatebox textbox" width="40px;"/></td>
			</tr>
			<tr>
				<td colspan="4">
					<textarea cols="180" rows="8" style="width:680px;height:300px;" id="content"
						name="content">此处进行内容编辑...</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right">
					<a href="javascript:void(0)" class="easyui-linkbutton" onclick="checkForm();">提 交</a>
				</td>
			</tr>
		</table>
	</form>
	
	<script src="${basePath}static/js/admin/initdata.js"></script>
	<script type="text/javascript">
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content"]', {
				cssPath : '${basePath}static/js/kindeditor/plugins/code/prettify.css',
				uploadJson : '${basePath}admin/common/fileupload/upload.htm',
				fileManagerJson : '${basePath}admin/common/fileupload/upload2.htm',
				allowFileManager : true,
				allowImageRemote : false,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
					});
				},
				
				afterFocus : function(){
					this.sync();
					if(editor1.html() == '此处进行内容编辑...'){
						editor1.html('');
					}
				},
				afterBlur : function(){
					this.sync();
					if(editor1.html() == ''){
						editor1.html('此处进行内容编辑...');
					}
					
				}
			});
			prettyPrint();
		});
	
		$(function(){
			_initSelect();
		}) 
		
		
		function checkForm(){
			$('#addform').submit();
		}
	</script>
</body>
</html>
