<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/easyui.form.exts.js"></script>

</head>
<body>

	<form id="updateform" action="${basePath}admin/user/member/updatesave.htm" method="post">
		<input name="id" value="${model.id}" type="hidden"/>
		<div class="contaniner">
			<div class="div-content">
			<table class="table table-hover" cellpadding="5">
				<tr>
					<td>用户名:</td>
					<td><input name="username" class="easyui-validatebox textbox" value="${model.username}"
								validType="loginName" required="true" missingMessage="用户名为必填项"></td>
				</tr>
				<tr>
					<td>联系方式:</td>
					<td><input name="phone" class="easyui-validatebox textbox" value="${model.phone}" 
								required="true" validType="mobile" missingMessage="联系方式为必填项"></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<a href="javascript:void(0)" class="easyui-linkbutton" id="updatesubmit">提 交</a>
					</td>
				</tr>
	
			</table>
			</div></div>
	</form>
	
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>