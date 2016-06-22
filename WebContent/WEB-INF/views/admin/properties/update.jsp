<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="updateform" action="${basePath}admin/properties/updatesave.json"
		method="post">
		<table>
			<tr>
				<td>地区名:</td>
				<td><input name="area.areaname" value="${model.area.areaname}"></td>
			</tr>
			<tr>
				<td>环线:</td>
				<td><input name="loopline" value="${model.loopline}"></td>
			</tr>
			<tr>
				<td>地铁集:</td>
				<td><input name="metro" value="${model.metro }"></td>
			</tr>
			<tr>
				<td>价格区间集合:</td>
				<td><input name="priceids" value="${model.priceids}"></td>
			</tr>
			<tr>
				<td>总价范围集合:</td>
				<td><input name="totalpriceids" value="${model.totalpriceids}"></td>
			</tr>
			<tr>
				<td>面积范围集合:</td>
				<td><input name="spaceids" value="${model.spaceids}"></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="hidden" value="${model.id}" name="id" />
					<a href="javascript:void(0)" class="easyui-linkbutton"id="updatesubmit">提 交</a>
				</td>
			</tr>

		</table>
	</form>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>