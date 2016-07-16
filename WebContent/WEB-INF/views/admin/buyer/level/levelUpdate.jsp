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
		var url = "${basePath}admin/buyer/level/updatesave.htm";
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

</script>
</head>
<body>

	<form id="updateform" method="post">
		<input name="id" value="${model.id}" type="hidden"/>
		<div class="contaniner">
		  	<div class="div-content">
			<table class="table table-hover" cellpadding="5">
				<tr>
					<td>等级名称:</td>
					<td><input name="name" class="easyui-validatebox textbox" 
							value="${model.name}" required="required"/></td>
				</tr>
				<tr>
					<td>等级类型:</td>
					<td>
						<select name="type">
							<option value="${fns:getDictValue('买家信用','LevelType','')}" 
								<c:if test="${fns:getDictValue('买家信用','LevelType','') == model.type}">selected="selected"</c:if>>买家信用</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>最低积分:</td>
					<td><input name="mincredit" class="easyui-validatebox textbox" 
							value="${model.mincredit}" required="required"/></td>
				</tr>
				<tr>
					<td>最高积分:</td>
					<td><input name="maxcredit" class="easyui-validatebox textbox" 
							value="${model.maxcredit}" required="required"/></td>
				</tr>
				<tr>
					<td>图标数:</td>
					<td><input name="iconnum" class="easyui-validatebox textbox" 
							value="${model.iconnum}" required="required"/></td>
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