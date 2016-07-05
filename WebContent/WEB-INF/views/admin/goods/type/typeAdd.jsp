<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/goods/type/addsave.htm" method="post">
		<input type="hidden" value="${parent.id}" name="parent.id" />
		<table cellpadding="5">
			<tr>
				<td>上级菜单:</td>
				<td>${parent.typename}</td>
			</tr>
			<tr>
				<td>名称:</td>
				<td><input name="typename" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>排序:</td>
				<td><input name="sort" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>状态:</td>
				<td>
					<input type="radio" value="1" name="status" checked />显示
					<input type="radio" value="0" name="status" />隐藏
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
				 	<a href="javascript:void(0)" class="easyui-linkbutton" id="addsubmit">提 交</a>
				 </td>
			</tr>
		</table>
	</form>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>
