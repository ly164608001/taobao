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
			<td>地域名称:</td>
			<td>${model.areaname}</td>
		</tr>
		<tr>
			<td>地域编码:</td>
			<td>${model.areacode}</td>
		</tr>
		<tr>
			<td>上级名称:</td>
			<td>${model.parent.areaname}</td>
		</tr>
		<tr>
			<td>所属:</td>
			<td>${model.mergername}</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog();">关闭</a>
			</td>
		</tr>

	</table>
</body>
</html>