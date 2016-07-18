<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
	<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
	
	<script type="text/javascript" src="${basePath}static/js/select.js"></script>
	
	<link rel="stylesheet" href="${basePath}static/js/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="${basePath}static/js/kindeditor/plugins/code/prettify.css" />
	
	<script charset="utf-8" src="${basePath}static/js/kindeditor/kindeditor-all.js"></script>
	<script charset="utf-8" src="${basePath}static/js/kindeditor/lang/zh-CN.js"></script>
	<script charset="utf-8" src="${basePath}static/js/kindeditor/plugins/code/prettify.js"></script>
</head>
<body>
	
	<form id="addform" method="post">
		<table cellpadding="5">
			<tr>
				<td>菜单类目:</td>
				<td colspan="3">
					<span>
						<select onchange="_onchange(this);" class="xytSelect"
								link="${basePath}admin/helpcenter/menu/getlistbypid.htm" pid="-1"
								valuename="id" labelname="name">
						</select>
						<input type="hidden" value="" name="menu.id" required="required" id="menuid"/>
					</span>
				</td>
			</tr>
			<tr>
				<td>文档标题:</td>
				<td><input name="title" required="required" class="easyui-validatebox textbox" width="120px;"/></td>
				<td>排序:</td>
				<td><input name="sort" required="required" class="easyui-validatebox textbox" width="40px;"/></td>
			</tr>
			<tr>
				<td colspan="4">
					<textarea cols="180" rows="8" style="width:720px;height:300px;" id="content"
						name="content">此处进行内容编辑...</textarea>
				</td>
			</tr>
		</table>
	</form>
	
	<div class="dialogBottom">
		<div class="btns">
			<input type="button" value="确 定" class="lrBtnGreen"
				onclick="return checkSubmit();" />
			<input type="button" value="关 闭" class="lrBtnGray"
				onclick="lrDialog.close();" />
		</div>
	</div>
	
	<script type="text/javascript">
		function checkSubmit() {
			//TODO验证数据有效性
			var menuid = $('#menuid').val();
			var content = $.trim($('#content').val());
			if(menuid == ''){
				lrDialog.alert("提示", "请选择菜单!");
				return;
			} 
			if(content == ''  || '此处进行内容编辑...' == content){
				lrDialog.alert("请输入文档内容!");
				return;
			}
			
			var isvalid = $("#addform").form('validate');
			if(isvalid){
				submitForm();
			}
		}
		
		function submitForm(){
			var url = "${basePath}admin/helpcenter/document/addsave.htm";
			$.ajax({
				type : "POST",
				url : url,
				dataType : "text",
				data : $("#addform").serialize(),
				success : function(result) {
					var res = JSON.parse(result);
					if (res.success) {
						//ldDialog.tips("新增成功");
						lrDialog.close(res.msg);
					} else {
						lrDialog.alert(res.msg);
						lrDialog.unmask();
					}
				},
				error : function() {
		
				}
			});
		}
	
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
	
	</script>
</body>
</html>
