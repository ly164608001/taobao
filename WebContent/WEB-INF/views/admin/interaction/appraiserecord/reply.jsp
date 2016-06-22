<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/interaction/appraiserecord/replysave.json"
		method="post">
		<table cellpadding="5">
		
			<tr>
				<td>回复内容:</td>
				<td><input name="content" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入回复内容',required:true"
					value=""></td>
					<td><input type="hidden" name="id" value="${model.id}"></td>
			</tr>
	      <tr>
				<td>
					<a href="javascript:void(0)" class="easyui-linkbutton"
					id="addsubmit">回复</a>
				</td>
			</tr>
			
			

		</table>
	</form>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>
