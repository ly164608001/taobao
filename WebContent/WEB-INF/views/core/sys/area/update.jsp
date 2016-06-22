<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="updateform" action="${basePath}admin/sys/dict/updatesave.json"
		method="post">
		<table>
			<tr>
				<td>名称:</td>
				<td><input name="areaname" value="${model.areaname}"></td>
			</tr>
			<tr>
				<td>编码:</td>
				<td><input name="areacode" value="${model.areacode}"></td>
			</tr>
			<tr>
				<td>上级:</td>
				<td><input name="parent.id" value="${model.parent.id }"></td>
			</tr>
			<tr>
				<td>城市编码:</td>
				<td><input name="citycode" value="${model.citycode}"></td>
			</tr>
			<tr>
				<td>邮编:</td>
				<td><input name="zipcode" value="${model.zipcode}"></td>
			</tr>
			<tr>
				<td>经度:</td>
				<td><input name="lng" value="${model.lng}"></td>
			</tr>
			<tr>
				<td>纬度:</td>
				<td><input name="lat" value="${model.lat}"></td>
			</tr>
			<tr>
				<td>拼音:</td>
				<td><input name="pinyin" value="${model.pinyin}"></td>
			</tr>
			<tr>
				<td>简称:</td>
				<td><input name="shortname" value="${model.shortname}"></td>
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