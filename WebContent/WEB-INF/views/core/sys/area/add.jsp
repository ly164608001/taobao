<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/sys/area/addsave.htm"
		method="post">
		<table cellpadding="5">
			<tr>
				<td>名称:</td>
				<td><input name="areaname"></td>
			</tr>
			<tr>
				<td>编码:</td>
				<td><input name="areacode"></td>
			</tr>
			<tr>
				<td>上级:</td>
				<td><input name="parent.id"></td>
			</tr>
			<tr>
				<td>城市编码:</td>
				<td><input name="citycode"></td>
			</tr>
			<tr>
				<td>邮编:</td>
				<td><input name="zipcode"></td>
			</tr>
			<tr>
				<td>经度:</td>
				<td><input name="lng"></td>
			</tr>
			<tr>
				<td>纬度:</td>
				<td><input name="lat"></td>
			</tr>
			<tr>
				<td>拼音:</td>
				<td><input name="pinyin"></td>
			</tr>
			<tr>
				<td>简称:</td>
				<td><input name="shortname"></td>
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
