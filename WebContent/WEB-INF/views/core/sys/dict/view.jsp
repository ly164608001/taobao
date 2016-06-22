<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>
	<table>
		<tr>
			<td>标签名:</td>
			<td>${model.label}</td>
		</tr>
		<tr>
			<td>值:</td>
			<td>${model.value}</td>
		</tr>
		<tr>
			<td>类型:</td>
			<td>${model.type}</td>
		</tr>
		<tr>
			<td>描述:</td>
			<td>${model.description}</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog();">关闭</a>
			</td>
		</tr>

	</table>
</body>
</html>