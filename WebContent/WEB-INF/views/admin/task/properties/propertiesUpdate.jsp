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
		var isvalid = $("#updateform").form('validate');
		if(isvalid){
			submitForm();
		}
	}
	
	function submitForm(){
		var url = "${basePath}admin/task/properties/updatesave.htm";
		$.ajax({
			type : "POST",
			url : url,
			dataType : "text",
			data : $("#updateform").serialize(),
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

	$(function(){
		//初始化下拉框选中值
		$('#type').val($('#typeVal').val());
		$('#elementtype').val($('#elementtypeVal').val());
		
	})
</script>
</head>
<body>

	<form id="updateform" method="post">
		<table cellpadding="5">
			<input type="hidden" name="id" value="${model.id}"/>
			<input type="hidden" value="${model.type}" id="typeVal"/>
			<input type="hidden" name="status" value="${model.status}" id="status"/>
			<input type="hidden" value="${model.elementtype}" id="elementtypeVal"/>
			<tr>
				<td>属性名:</td>
				<td><input name="name" value="${model.name}" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>别名:</td>
				<td><input name="elementname"  value="${model.elementname}" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>使用状态:</td>
				<td>
					<c:if test="${model.status == 1}">已使用</c:if>
					<c:if test="${model.status == 0}">未使用</c:if>
				</td>
			</tr>
			<tr>
				<td>显示区域:</td>
				<td>
					<select name="type" id="type">
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
				<td><input name="price" value="${model.price}" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>元素类型:</td>
				<td>
					<select name="elementtype" id="elementtype">
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
				<td><input name="elementnum" value="${model.elementnum}" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>所需类型:</td>
				<td><input name="needtype" value="${model.needtype}" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>所需个数:</td>
				<td><input name="neednum" value="${model.neednum}" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>完成排序:</td>
				<td><input name="sort" value="${model.sort}" class="easyui-validatebox textbox" /></td>
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
