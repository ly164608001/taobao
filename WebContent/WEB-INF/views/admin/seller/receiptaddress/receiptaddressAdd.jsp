<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/seller/receiptaddress/addsave.htm" method="post">
		<table cellpadding="5">
			<tr>
				<td>标签:</td>
				<td>
					<span>
						<select name="label.id" class="easyui-validatebox textbox" required="required">
							<option value="">请选择</option>
							<c:forEach items="${labelList}" var="label">
								<option value="${label.id}">${label.name}</option>
							</c:forEach>
						</select>
					</span>
				</td>
			</tr>
			<tr>
				<td>姓名:</td>
				<td><input name="name" class="easyui-validatebox textbox" required="required"/></td>
			</tr>
			<tr>
				<td>电话:</td>
				<td>
					<input name="phone" class="easyui-validatebox textbox" required="required"/>
				</td>
			</tr>
			<tr>
				<td><font>邮编:</td> 
				<td><input name="code" class="easyui-validatebox textbox" /></td>
			</tr>
			<tr>
				<td>收获地址:</td>
				<td><textarea  class="easyui-validatebox" required="required"
							name="address" cols="20" rows="4" id="address"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td>
				 	<a href="javascript:void(0)" class="easyui-linkbutton" id="addsubmit">提 交</a>
				 </td>
			</tr>
		</table>
	</form>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>
