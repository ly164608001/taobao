<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>

</head>
<body>

	<form id="updateform" action="${basePath}admin/seller/praise/updatesave.htm" method="post">
		<input name="id" value="${model.id}" type="hidden"/>
		<div class="contaniner">
		  	<div class="div-content">
			<table class="table table-hover" cellpadding="5">
				<tr>
					<td>标签:</td>
					<td>
						<span>
							<select name="label.id" class="easyui-validatebox textbox" required="required">
								<option value="">请选择</option>
								<c:forEach items="${labelList}" var="label">
									<option <c:if test="${label.id == model.label.id}">selected="selected"</c:if>
										 value="${label.id}">${label.name}</option>
								</c:forEach>
							</select>
						</span>
					</td>
				</tr>
				<tr>
					<td>规定好评内容:</td>
					<td><textarea  class="easyui-validatebox" required="required" 
								name="content" cols="20" rows="4">${model.content}</textarea></td>
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