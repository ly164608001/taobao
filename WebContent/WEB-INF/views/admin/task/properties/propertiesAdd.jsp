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
		var url = "${basePath}admin/task/propertiesvalue/addsave.htm";
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
		<table cellpadding="5">
			<tr>
				<td>属性名:</td>
				<td>
					<select name="properties.id">
						<option value="">请选择</option>
						<c:forEach items="${propertiesList}" var="properties">
							<option value="${properties.id}">${properties.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>属性值选项:</td>
				<td><input name="label" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>属性值:</td>
				<td><input name="keyvalue" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>备注:</td>
				<td><input name="memo" class="easyui-validatebox textbox" /></td>
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
