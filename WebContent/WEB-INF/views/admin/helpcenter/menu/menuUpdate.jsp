<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script src="${basePath}static/js/admin/initdata.js"></script>
<script type="text/javascript">
	function checkSubmit() {
		//TODO验证数据有效性
		var isvalid = $("#updateform").form('validate');
		if(isvalid){
			submitForm();
		}
	}
	function submitForm(){
		var url = "${basePath}admin/helpcenter/menu/updatesave.htm";
		$.ajax({
			type : "POST",
			url : url,
			dataType : "text",
			data : $("#updateform").serialize(),
			success : function(result) {
				var res = JSON.parse(result);
				if (res.success) {
					//ldDialog.tips("新增成功");
					lrDialog.close('编辑成功');
				} else {
					lrDialog.alert(res.msg);
					lrDialog.unmask();
				}
			},
			error : function() {

			}
		});
	}

</script>

</head>
<body>
	<form id="updateform" method="post">
		<input name="id" value="${model.id}" type="hidden"/>
		<div class="contaniner">
		  	<div class="div-content">
			<table class="table table-hover" cellpadding="5">
				<tr>
					<td>上级菜单:</td>
					<td>${model.parent.name}</td>
				</tr>
				<tr>
					<td>类型:</td>
					<td>${fns:getDictLabel(model.type,'HelpCenter','')}</td>
				</tr>
				<tr>
					<td>名称:</td>
					<td><input name="name" value="${model.name}"
							class="easyui-validatebox textbox" /></td>
				</tr>
				<tr>
					<td>链接:</td>
					<td><input name="url" value="${model.url}"
							class="easyui-validatebox textbox" /></td>
				</tr>
				<tr>
					<td>排序:</td>
					<td><input name="sort" value="${model.sort}"
							class="easyui-validatebox textbox" /></td>
				</tr>
				<tr>
					<td></td>
					<td>
					 	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="return checkSubmit();">提 交</a>
					 </td>
				</tr>
	
			</table>
		</div></div>
	</form>
	
</body>
</html>