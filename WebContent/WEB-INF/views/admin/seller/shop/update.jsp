<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>

</head>
<body>

	<form id="updateform" action="${basePath}admin/seller/shop/updatesave.htm" method="post">
		<input name="id" value="${model.id}" type="hidden"/>
		<div class="contaniner">
		  	<div class="div-content">
			<table class="table table-hover" cellpadding="5">
				<tr>
					<td>店铺名称:</td>
					<td><input name="name" class="easyui-validatebox textbox"
								value="${model.name}" required="required"/></td>
				</tr>
				<tr>
					<td>类型:</td>
					<td>
						<select name="type">
							<option value="${fns:getDictValue('淘宝店铺','ShopType','')}" 
								<c:if test="${fns:getDictValue('淘宝店铺','ShopType','') == model.type}">selected="selected"</c:if>>淘宝店铺</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>掌柜号:</td>
					<td><input name="manager" class="easyui-validatebox textbox" 
							value="${model.manager}" required="required"/></td>
				</tr>
				<tr>
					<td>店铺首页地址:</td>
					<td><input name="indexurl" class="easyui-validatebox textbox" 
							value="${model.indexurl}" required="required"/></td>
				</tr>
				<tr>
					<td></td>
					<td>
					 	<a href="javascript:void(0)" class="easyui-linkbutton" id="updatesubmit">提 交</a>
					 </td>
				</tr>
	
			</table>
		</div></div>
	</form>
	
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>