<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/properties/addsave.htm"
		method="post">
		<table cellpadding="5">
			<tr>
				<td>地区名:</td>
				<td><input name="area.areaname"></td>
			</tr>
			<tr>
				<td>环线:</td>
				<td><input name="loopline"></td>
			</tr>
			<tr>
				<td>地铁集:</td>
				<td><input name="metro"></td>
			</tr>
			<tr>
				<td>价格区间id集:</td>
				<td><input name="priceids"></td>
			</tr>
			<tr>
				<td>总价范围id集:</td>
				<td><input name="totalpriceids"></td>
			</tr>
			<tr>
				<td>面积范围id集:</td>
				<td><input name="spaceids"></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<a href="javascript:void(0)" class="easyui-linkbutton"
					id="addsubmit">提 交</a></td>
			</tr>

		</table>
	</form>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>
