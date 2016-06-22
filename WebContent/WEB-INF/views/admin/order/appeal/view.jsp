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
			<td>订单编号:</td>
			<td>${model.orderno}</td>
			<td>下订人:</td>
			<td>${model.userid}</td>
		</tr>
		<tr>
			<td colspan="4" style="text-align: center;">
				<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog();">关闭</a>
			</td>
		</tr>

	</table>
</body>
</html>