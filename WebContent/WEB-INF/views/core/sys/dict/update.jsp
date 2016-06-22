<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="updateform" action="${basePath}admin/sys/dict/updatesave.json"
		method="post">
		<table>
			<tr>
				<td>标签名:</td>
				<td><input name="label" value="${model.label}"></td>
			</tr>
			<tr>
				<td>值:</td>
				<td><input name="value" value="${model.value}"></td>
			</tr>
			<tr>
				<td>类型:</td>
				<td><input name="type" value="${model.type}"></td>
			</tr>
			<tr>
				<td>描述:</td>
				<td><input name="description" value="${model.description}"></td>
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