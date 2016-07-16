<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/sys/dict/addsave.htm"
		method="post">
		<table cellpadding="5">
			<tr>
				<td>标签名:</td>
				<td><input name="label"></td>
			</tr>
			<tr>
				<td>值:</td>
				<td><input name="value"></td>
			</tr>
			<tr>
				<td>类型:</td>
				<td><input name="type"></td>
			</tr>
			<tr>
				<td>描述:</td>
				<td><input name="description"></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<a href="javascript:void(0)" class="easyui-linkbutton"
					id="addsubmit">提 交</a></td>
			</tr>

		</table>
	</form>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>
