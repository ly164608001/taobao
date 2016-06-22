<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>
	<table>
		<tr>
			<td>地区名:</td>
			<td>${model.area.areaname}</td>
		</tr>
		<tr>
			<td>环线:</td>
			<td>${model.loopline}</td>
		</tr>
		<tr>
			<td>地铁集:</td>
			<td>${model.metro}</td>
		</tr>
		<tr>
			<td>价格区间集合:</td>
			<td>${model.priceids}</td>
		</tr>
		<tr>
			<td>总价范围集合:</td>
			<td>${model.totalpriceids}</td>
		</tr>
		<tr>
			<td>面积范围集合:</td>
			<td>${model.spaceids}</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog();">关闭</a>
			</td>
		</tr>

	</table>
</body>
</html>