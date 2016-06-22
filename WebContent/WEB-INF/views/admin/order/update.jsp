<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="updateform" action="${basePath}admin/order/updatesave.json"
		method="post">
		<table>
			<tr>
				<td>订单编号:</td>
				<td><input name="model.orderno" class="easyui-validatebox textbox"
					value="${model.orderno}"></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="hidden" value="${model.id}" name="model.id" />
					<a href="javascript:void(0)" class="easyui-linkbutton"id="updatesubmit">提 交</a>
				</td>
			</tr>

		</table>
	</form>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>