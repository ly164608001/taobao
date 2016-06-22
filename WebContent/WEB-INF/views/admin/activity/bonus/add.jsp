<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/common.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}/admin/activity/bonus/addsave.htm" method="post">
		
		<table cellpadding="5">
			
			<tr>
				<td>红包金额:</td>
				<td><input name="money" class="easyui-numberbox textbox"
						data-options="missingMessage:'请输入红包金额',required:true"
						value="">
				</td>
			</tr>
			
			<tr>
				<td>有效期限:</td>
				<td><input name="availabletime" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入有效期限',required:true"
					onClick="WdatePicker()" readonly="readonly" value="">
				</td>
			</tr>
			
			<tr>
				<td>条件限制:</td>
				<td></td>
			</tr>
			
			<tr><td>红包个数:</td>
				<td><input name="count" class="easyui-numberbox textbox"
					data-options="missingMessage:'请输入红包个数',required:true" value="">
				</td>
			</tr>
					
			<tr>
				<td>状态:</td>
				<td><select class="easyui-combobox" id="status" name="status" style="width: 160px;">
						<option value="1">启用</option>
						<option value="2">禁用</option>
					</select> 
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
