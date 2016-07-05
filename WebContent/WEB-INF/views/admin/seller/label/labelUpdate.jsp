<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>

</head>
<body>

	<form id="updateform" action="${basePath}admin/seller/label/updatesave.htm" method="post">
		<input name="id" value="${model.id}" type="hidden"/>
		<div class="contaniner">
		  	<div class="div-content">
			<table class="table table-hover" cellpadding="5">
				<tr>
					<td>标签名称:</td>
					<td><input name="name" class="easyui-validatebox textbox" 
							value="${model.name}" required="required"/></td>
				</tr>
				<tr>
					<td>类型:</td>
					<td>
						<select name="type">
							<option value="${fns:getDictValue('收获地址','LabelType','')}" 
								<c:if test="${fns:getDictValue('收获地址','LabelType','') == model.type}">selected="selected"</c:if>>收获地址</option>
							<option value="${fns:getDictValue('好评内容','LabelType','')}"
								<c:if test="${fns:getDictValue('好评内容','LabelType','') == model.type}">selected="selected"</c:if>>好评内容</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>排序:</td>
					<td><input name="sort" class="easyui-validatebox textbox"
							value="${model.sort}" required="required"/></td>
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