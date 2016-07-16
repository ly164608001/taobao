<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript">
function checkSubmit(){
	var username = $("input[name='username']").val();
	var phone = $("input[name='phone']").val();
	if(isNull(username)){
		lrDialog.tips("用户名不能为空");
		$("input[name='username']").focus();
		return false;
	}
	if(isNull(phone)){
		lrDialog.tips("联系方式不能为空");
		$("input[name='phone']").focus();
		return false;
	}else if(!isMobilePhone(phone)){
		lrDialog.tips("联系方式填写不正确");
		$("input[name='phone']").focus();
		return false;
	}
	submitForm();
}
function submitForm(){
	var url = "${basePath}admin/sys/user/updatesave.htm";
	$.ajax({
		type : "POST",
		url : url,
		dataType : "text",
		data : $("#submitForm").serialize(),
		success : function(result) {
			var res = JSON.parse(result);
			if (res.success) {
				//ldDialog.tips("新增成功");
				lrDialog.close("修改成功");
			} else {
				lrDialog.alert(res.reason);
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
	<form id="submitForm" action="${basePath}admin/user/member/updatesave.htm" method="post">
		<div class="dialogTop">
			<input name="id" value="${model.id}" type="hidden"/>
			<table width="100%" border="0" align="center" cellspacing="10"
				cellpadding="0">
				<tr>
					<td width="100" class="right yhItem1">
						用户名:
					</td>
					<td>
						<input name="username"  type="text" class="lrText input138" value="${model.username}">
					</td>
				</tr>
				<tr>
					<td width="100" class="right yhItem1">
						联系方式:
					</td>
					<td>
						<input name="phone"  type="text" class="lrText input138" value="${model.phone}"/>
					</td>
				</tr>
			</table>
		</div>
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