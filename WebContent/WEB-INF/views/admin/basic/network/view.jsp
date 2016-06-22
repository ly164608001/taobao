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
			<td>网络工作类型名称:</td>
			<td>${model.name}</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog();">关闭</a>
			</td>
		</tr>

	</table>
</body>
</html>