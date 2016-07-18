<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>

<script type="text/javascript">
	function checkSubmit() {
		//TODO验证数据有效性
		var isvalid = $("#addform").form('validate');
		if(isvalid){
			submitForm();
		}
	}
	
	function submitForm(){
		var url = "${basePath}admin/goods/type/addsave.htm";
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

</script>
</head>
<body>

	<form id="addform" method="post">
		<input type="hidden" value="${parent.id}" name="parent.id" />
		<table cellpadding="5">
			<tr>
				<td>上级菜单:</td>
				<td>${parent.typename}</td>
			</tr>
			<tr>
				<td>名称:</td>
				<td><input name="typename" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>排序:</td>
				<td><input name="sort" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>状态:</td>
				<td>
					<input type="radio" value="1" name="status" checked />显示
					<input type="radio" value="0" name="status" />隐藏
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
	
</body>
</html>
