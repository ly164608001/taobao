<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>

</head>
<body>

	<form id="updateform" action="${basePath}admin/goods/type/updatesave.htm" method="post">
		<input name="id" value="${model.id}" type="hidden"/>
		<input name="parent.id" value="${parent.id}" type="hidden"/>
		<div class="contaniner">
		  	<div class="div-content">
			<table class="table table-hover" cellpadding="5">
				<tr>
					<td>上级菜单:</td>
					<td>${model.parent.name}</td>
				</tr>
				<tr>
					<td>名称:</td>
					<td><input name="typename" value="${model.typename}"
							class="easyui-validatebox textbox" /></td>
				</tr>
				<tr>
					<td>排序:</td>
					<td><input name="sort" value="${model.sort}"
							class="easyui-validatebox textbox" /></td>
				</tr>
				<tr>
					<td>状态:</td>
					<td>
						<c:if test="${model.status == 1}">
							<label>
								<input type="radio" value="1" name="status" checked />显示
							</label>
							<label>
								<input type="radio" value="0" name="status" />隐藏
							</label>
						</c:if>
						<c:if test="${model.status == 0}">
							<label>
								<input type="radio" value="1" name="status" />显示
							</label>
							<label>
								<input type="radio" value="0" name="status" checked />隐藏
							</label>
						</c:if>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
					 	<a href="javascript:void(0)" class="easyui-linkbutton" id="updatesubmit">提 交</a>
					 </td>
				</tr>
	
			</table>
		</div></div>
	</form>
	
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>