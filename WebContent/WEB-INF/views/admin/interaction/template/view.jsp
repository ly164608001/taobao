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
				<td>短信名称:</td>
				<td>${model.name}</td>
			</tr>
			<tr>
				<td>短信内容:</td>
				<td>${model.content}</td>
			</tr>
			<tr>
				<td>创建时间:</td>
				<td>${model.createtime}</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="hidden" value="${model.id}" name="id" />
			</tr>
			
		</table>
	</div></div>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>