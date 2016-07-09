<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/buyer/account/addsave.htm" method="post">
		<table cellpadding="5">
			<tr>
				<td>淘宝账号:</td>
				<td><input name="accountno" class="easyui-validatebox textbox" required="required"/></td>
			</tr>
			<tr>
				<td>现信誉:</td>
				<td><input name="credit" class="easyui-validatebox easyui-numberbox" required="required"/></td>
			</tr>
			<tr>
				<td>是否实名:</td>
				<td>
					<input name="identification" type="radio" value="${fns:getDictValue('是','YesOrNo','')}"/>是
					<input name="identification" type="radio" value="${fns:getDictValue('否','YesOrNo','')}"/>否
				</td>
			</tr>
			<tr>
				<td>排序:</td>
				<td><input name="sort" class="easyui-validatebox easyui-numberbox" required="required"/></td>
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
	<script type="text/javascript">
		$(function(){
			_initSelect();
		}) 
	</script>
</body>
</html>
