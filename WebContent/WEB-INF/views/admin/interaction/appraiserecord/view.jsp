<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>
	<div class="contaniner">
	  <div class="div-content">
		<table class="table table-hover" cellpadding="5">
		
		<tr>
				<td>点评人:</td>
				<td>${model.appraiseuser.username}</td>
			</tr>
			<tr>
				<td>所属楼盘:</td>
				<td>${model.house.name}</td>
			</tr>
			<tr>
				<td>点评内容:</td>
				<td>${model.content}</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="hidden" value="${model.id}" name="id" />
			</tr>
			<tr>
				<td></td>
				<td>
					<a href="javascript:closeDialog();" class="easyui-linkbutton">关 闭</a>
				</td>
			</tr>
		</table>
	</div></div>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>