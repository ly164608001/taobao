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
						<td colspan="4">楼栋信息</td>
					</tr>
					<tr>
						<th>ID：</th>
						<td>${model.id}</td>
						<th>名称：</th>
						<td>${model.name}</td>
					</tr>
					<tr>
						<th>是否有架空层：</th>
						<td>${model.isemptyspace}</td>
						<th>总层数：</th>
						<td>${model.allfloors}</td>
					</tr>
					<tr>
						<th>层高：</th>
						<td>${model.floorheight}</td>
						<th>装修：</th>
						<td>${model.decoratestateId}</td>
					</tr>
					<tr>
						<th>总户数：</th>
						<td>${model.allhouseholds}</td>
						<th>电梯数：</th>
						<td>${model.liftnum}</td>
					</tr>
					<tr>
						<th>户数：</th>
						<td>${model.househlods}</td>
						<th>大门朝向：</th>
						<td>${model.gatetowards}</td>
					</tr>
					<tr>
						<th style="width: 25%">楼层单元分布情况：</th>
						<td colspan="3">${model.distribution}</td>
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