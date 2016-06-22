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
						<td colspan="4">楼盘审核信息</td>
					</tr>
					<tr>
						<th>ID：</th>
						<td>${model.id}</td>
						<th>名称：</th>
						<td>${model.name}</td>
					</tr>
					<tr>
						<th>楼盘所在地：</th>
						<td>${model.location}</td>
						<th>楼盘详细地址：</th>
						<td>${model.detailaddress}</td>
					</tr>
					<tr>
						<th>价格：</th>
						<td>${model.price}</td>
						<th>状态：</th>
						<td>${model.status}</td>
					</tr>
					<tr>
						<th>折扣类型：</th>
						<td>${model.discounttype}</td>
						<th>折扣值：</th>
						<td>${model.discountvalue}</td>
					</tr>
					<tr>
						<th>楼盘图片：</th>
						<td>${model.housespic}</td>
						<th>证件图片：</th>
						<td>${model.certificatepic}</td>
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