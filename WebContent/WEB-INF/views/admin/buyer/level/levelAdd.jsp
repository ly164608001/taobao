<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script src="${basePath}static/js/admin/initdata.js"></script>
<script type="text/javascript">
	$(function(){
		_initSelect();
	}) 

	function checkSubmit() {
		//TODO验证数据有效性
		var isvalid = $("#addform").form('validate');
		if(isvalid){
			submitForm();
		}
	}
	function submitForm(){
		var url = "${basePath}admin/buyer/level/addsave.htm";
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
				<td>等级名称:</td>
				<td><input name="name" class="easyui-validatebox textbox" required="required"/></td>
			</tr>
			<tr>
				<td>等级类型:</td>
				<td>
					<select name="type">
						<option value="${fns:getDictValue('买家信用','LevelType','')}" selected="selected">买家信用</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>最低积分:</td>
				<td><input name="mincredit" class="easyui-validatebox textbox" required="required"/></td>
			</tr>
			<tr>
				<td>最高积分:</td>
				<td><input name="maxcredit" class="easyui-validatebox textbox" required="required"/></td>
			</tr>
			<tr>
				<td>图标数:</td>
				<td><input name="iconnum" class="easyui-validatebox textbox" required="required"/></td>
			</tr>
			<tr>
				<td></td>
				<td>
				 	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="return checkSubmit();">提 交</a>
				 </td>
			</tr>
		</table>
	</form>
	
</body>
</html>
