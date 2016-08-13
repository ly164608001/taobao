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
		var url = "${basePath}admin/task/properties/addsave.htm";
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
				<td><input name="name" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>别名:</td>
				<td><input name="elementname" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>显示区域:</td>
				<td>
					<select name="type">
						<option value="">请选择</option>
						<option value="1">任务基本信息</option>
						<option value="2">任务需求设置</option>
						<option value="3">买手身份验证</option>
						<option value="4">发布任务设置</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>所需蚂蚁币:</td>
				<td><input name="price" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>元素类型:</td>
				<td>
					<select name="elementtype">
						<option value="">请选择</option>
						<option value="text">输入框</option>
						<option value="radio">单选框</option>
						<option value="checkbox">多选框</option>
						<option value="select">下拉选择框</option>
						<option value="img">图片</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>元素个数:</td>
				<td><input name="elementnum" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>所需类型:</td>
				<td><input name="needtype" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>所需个数:</td>
				<td><input name="neednum" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>完成排序:</td>
				<td><input name="sort" class="easyui-validatebox textbox" /></td>
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