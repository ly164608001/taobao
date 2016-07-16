<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/helpcenter/menu/addsave.htm" method="post">
		<input type="hidden" value="${parent.id}" name="parent.id" />
		<table cellpadding="5">
			<tr>
				<td>上级菜单:</td>
				<td>${parent.name}</td>
			</tr>
			<tr>
				<td>类型:</td>
				<td>
					<c:if test="${not empty parent.type}">
						<input type="hidden" value="${parent.type}" name="type" />
						${fns:getDictLabel(parent.type,'HelpCenter','')}
					</c:if>
					<c:if test="${empty parent.type}">
						<select name="type">
							<option value="1" selected="selected">买家中心</option>
							<option value="2">卖家中心</option>
						</select>
					</c:if>
				</td>
			</tr>
			<tr>
				<td>名称:</td>
				<td><input name="name" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>链接:</td>
				<td><input name="url" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>排序:</td>
				<td><input name="sort" class="easyui-validatebox textbox" /></td>
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
