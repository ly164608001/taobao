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
			<table class="table table-hover">
				<tbody>
					<tr>
						<td colspan="2">基本信息</td>
					</tr>
					<tr>
						<th>收藏用户:</th>
						<td>${model.user.username}</td>
					</tr>
					<tr>
						<th>楼盘名称:</th>
						<td>${model.housename.name}</td>
					</tr>
					<tr>
						<th>收藏时间:</th>
						<td>${model.favoritetime}</td>
					</tr>
					<tr>
						<th>排序:</th>
						<td>${model.orderValue}</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center;">
							<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog();">关闭</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>