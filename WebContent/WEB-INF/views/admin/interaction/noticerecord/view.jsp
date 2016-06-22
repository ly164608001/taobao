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
				<td>消息内容:</td>
				<td>${model.content}</td>
			</tr>
			<tr>
				 <td>接收人:</td>
				 <td>${model.receiveuser.username}</td>					
			<tr>
				<td>消息类型:</td>
				<td>${model.type}</td>
			</tr>
			<tr>
				<td>状态:</td>
				<td>
					<c:if test="${model.status == -1}">未读</c:if>
					<c:if test="${model.status == 1}">已读</c:if>
					<!--<td>${model.status==-1?"未读":"已读"}</td>-->	
				</td>
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