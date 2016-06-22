<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/sys/menu/addsave.htm"
		method="post">
		<input type="hidden" value="${model.id}" name="id" />
		<input type="hidden" value="${model.parent.id}" name="parent.id" />
		<table cellpadding="5">
			<tr>
				<td>上级菜单:</td>
				<td>${model.parent.name}</td>
			</tr>
			<tr>
				<td>名称:</td>
				<td><input name="name" class="easyui-validatebox textbox"
					value="${model.name}"></td>
			</tr>
			<tr>
				<td>链接:</td>
				<td><input name="href" class="easyui-validatebox textbox"
					value="${model.href}"></td>
			</tr>
			<tr>
				<td>排序:</td>
				<td><input name="sort" class="easyui-validatebox textbox"
					value="${model.sort}"></td>
			</tr>
			<tr>
				<td>类型:</td>
				<td>
					<select name="type">
						<option value="0">菜单</option>
						<option value="1" <c:if test="${model.type==1}">selected</c:if>>按钮</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>所属:</td>
				<td>
					<select name="belong">
						<option value="0">后台</option>
						<option value="1" <c:if test="${model.belong==1}">selected</c:if>>前台</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>是否显示:</td>
				<td>
					<c:if test="${model.isshow == 1}">
						<label>
							<input type="radio" value="1" name="isshow" checked />是
						</label>
						<label>
							<input type="radio" value="0" name="isshow" />否
						</label>
					</c:if>
					<c:if test="${model.isshow != 1}">
						<label>
							<input type="radio" value="1" name="isshow" />是
						</label>
						<label>
							<input type="radio" value="0" name="isshow" checked />否
						</label>
					</c:if>
				</td>
			</tr>
			<tr>
				<td>权限标识:</td>
				<td><input name="permission" class="easyui-validatebox textbox"
					value="${model.permission}"></td>
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
