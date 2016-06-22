<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<link rel="stylesheet" type="text/css" href="${basePath}static/css/houses/style.css"/>
</head>
<body>
	<div class="contaniner">
		<div class="div-content">
		<table class="table table-hover">
				<tbody>
					<tr style="background-color: #CAFFFF">
						<td colspan="4">房源信息</td>
					</tr>
					<tr>
						<th>ID：</th>
						<td>${model.id}</td>
						<th>名称：</th>
						<td>${building.name}</td>
					</tr>
					<tr>
						<th>楼层：</th>
						<td>${model.floornum}</td>
						<th>单元：</th>
						<td>${model.unit}</td>
					</tr>
					<tr>
						<th>房号：</th>
						<td>${model.roomnum}</td>
						<th>单价（元/㎡)：</th>
						<td>${model.unitprice}</td>
					</tr>
					<tr>
						<th>总价（元）：</th>
						<td>${model.totalprice}</td>
						<th>户型：</th>
						<td>${model.floornum}</td>
					</tr>
					<tr>
						<th>建筑面积(㎡)：</th>
						<td>${model.buildarea}</td>
						<th>状态：</th>
						<td>${model.status}</td>
					</tr>
					<tr>
						<td colspan="4" style="text-align: center;">
							<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog();">关闭</a>
						</td>
					</tr>
				</tbody>
			</table>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>