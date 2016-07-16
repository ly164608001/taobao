<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/buyer/level/addsave.htm" method="post">
		<table cellpadding="5">
			<tr>
				<td>等级名称:</td>
				<td><input name="name" class="easyui-validatebox textbox" required="required"/></td>
			</tr>
			<tr>
				<td>等级类型:</td>
				<td>
					<select name="type">
						<option value="${fns:getDictValue('买家信用','LevelType','')}" selected="selected">买家信用</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>最低积分:</td>
				<td><input name="mincredit" class="easyui-validatebox textbox" required="required"/></td>
			</tr>
			<tr>
				<td>最高积分:</td>
				<td><input name="maxcredit" class="easyui-validatebox textbox" required="required"/></td>
			</tr>
			<tr>
				<td>图标数:</td>
				<td><input name="iconnum" class="easyui-validatebox textbox" required="required"/></td>
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
