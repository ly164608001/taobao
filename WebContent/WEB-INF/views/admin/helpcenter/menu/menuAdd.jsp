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
		var isvalid = $("#addform").form('validate');
		if(isvalid){
			submitForm();
		}
	}
	function submitForm(){
		var url = "${basePath}admin/helpcenter/menu/addsave.htm";
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
				<td>${parent.name}</td>
			</tr>
			<tr>
				<td>类型:</td>
				<td>
					<c:if test="${not empty parent.type}">
						<input type="hidden" value="${parent.type}" name="type" />
						${fns:getDictLabel(parent.type,'HelpCenter','')}
					</c:if>
					<c:if test="${empty parent.type}">
						<select name="type">
							<option value="1" selected="selected">买家中心</option>
							<option value="2">卖家中心</option>
						</select>
					</c:if>
				</td>
			</tr>
			<tr>
				<td>名称:</td>
				<td><input name="name" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>链接:</td>
				<td><input name="url" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>排序:</td>
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
