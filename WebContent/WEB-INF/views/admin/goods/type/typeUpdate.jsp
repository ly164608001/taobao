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
		var url = "${basePath}admin/goods/type/updatesave.htm";
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
		<input name="parent.id" value="${parent.id}" type="hidden"/>
		<div class="contaniner">
		  	<div class="div-content">
			<table class="table table-hover" cellpadding="5">
				<tr>
					<td>上级菜单:</td>
					<td>${model.parent.typename}</td>
				</tr>
				<tr>
					<td>名称:</td>
					<td><input name="typename" value="${model.typename}"
							class="easyui-validatebox textbox" /></td>
				</tr>
				<tr>
					<td>排序:</td>
					<td><input name="sort" value="${model.sort}"
							class="easyui-validatebox textbox" /></td>
				</tr>
				<tr>
					<td>状态:</td>
					<td>
						<c:if test="${model.status == 1}">
							<label>
								<input type="radio" value="1" name="status" checked />显示
							</label>
							<label>
								<input type="radio" value="0" name="status" />隐藏
							</label>
						</c:if>
						<c:if test="${model.status == 0}">
							<label>
								<input type="radio" value="1" name="status" />显示
							</label>
							<label>
								<input type="radio" value="0" name="status" checked />隐藏
							</label>
						</c:if>
					</td>
				</tr>
	
			</table>
		</div></div>
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