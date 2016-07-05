<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/seller/label/addsave.htm" method="post">
		<table cellpadding="5">
			<tr>
				<td>标签名称:</td>
				<td><input name="name" class="easyui-validatebox textbox" required="required"/></td>
			</tr>
			<tr>
				<td>类型:</td>
				<td>
					<select name="type">
						<option value="${fns:getDictValue('收获地址','LabelType','')}" selected="selected">收获地址</option>
						<option value="${fns:getDictValue('好评内容','LabelType','')}">好评内容</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>排序:</td>
				<td><input name="sort" class="easyui-validatebox textbox" required="required"/></td>
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
