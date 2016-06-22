<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="updateform" action="${basePath}admin/basic/sportplace/updatesave.json"
		method="post">
		<table>
			<tr>
				<td>运动地方类型名称:</td>
				<td><input name="name" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入名称',invalidMessage:'用户名只能是二到二十位之间',required:true,validType:'length[2,20]'"
					value="${model.name}"></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="hidden" value="${model.id}" name="id" />
					<a href="javascript:void(0)" class="easyui-linkbutton"id="updatesubmit">提 交</a>
				</td>
			</tr>

		</table>
	</form>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>