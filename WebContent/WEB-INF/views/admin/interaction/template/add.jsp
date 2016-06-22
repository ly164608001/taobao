<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/common.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}/admin/interaction/template/addsave.htm"
		method="post">
		
		<table cellpadding="5">
			
				<tr>
					<td>短信名称:</td>
					<td><input name="name" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入模板名称',required:true"
					value="${model.name}"></td>
				</tr>
			
			<tr>
				<td>短信内容:</td>
				<td><input name="content" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入消息内容',required:true"
					value="${model.content}"></td>
			</tr>
			
			<tr>
				<td>创建时间:</td>
				<td><input name="createtime" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入集合时间',required:true"
					onClick="WdatePicker()" readonly="readonly" value="">
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
