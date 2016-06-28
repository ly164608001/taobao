<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/helpcenter/menu/addsave.htm" method="post">
		<input type="hidden" value="${parent.id}" name="parent.id" />
		<table cellpadding="5">
			<tr>
				<td>菜单类目:</td>
				<td colspan="3">
					<span>
						<select onchange="_onchange(this);" class="xytSelect"
								link="${basePath}admin/helpcenter/menu/getlistbypid.htm" pid="-1"
								valuename="id" labelname="name">
						</select>
						<input type="hidden" value="" name="menu.id" />
					</span>
				</td>
			</tr>
			<tr>
				<td>文档标题:</td>
				<td><input name="title" class="easyui-validatebox textbox" width="120px;"/></td>
				<td>排序:</td>
				<td><input name="sort" class="easyui-validatebox textbox" width="40px;"/></td>
			</tr>
			<tr>
				<td></td>
				<td>
				 	<a href="javascript:void(0)" class="easyui-linkbutton" id="addsubmit">提 交</a>
				 </td>
				 <td></td>
				 <td></td>
			</tr>
		</table>
	</form>
	
	<script src="${basePath}static/js/admin/initdata.js"></script>
	
</body>
</html>
