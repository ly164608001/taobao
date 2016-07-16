<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>

</head>
<body>

	<form id="updateform" action="${basePath}admin/buyer/level/updatesave.htm" method="post">
		<input name="id" value="${model.id}" type="hidden"/>
		<div class="contaniner">
		  	<div class="div-content">
			<table class="table table-hover" cellpadding="5">
				<tr>
					<td>等级名称:</td>
					<td><input name="name" class="easyui-validatebox textbox" 
							value="${model.name}" required="required"/></td>
				</tr>
				<tr>
					<td>等级类型:</td>
					<td>
						<select name="type">
							<option value="${fns:getDictValue('买家信用','LevelType','')}" 
								<c:if test="${fns:getDictValue('买家信用','LevelType','') == model.type}">selected="selected"</c:if>>买家信用</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>最低积分:</td>
					<td><input name="mincredit" class="easyui-validatebox textbox" 
							value="${model.mincredit}" required="required"/></td>
				</tr>
				<tr>
					<td>最高积分:</td>
					<td><input name="maxcredit" class="easyui-validatebox textbox" 
							value="${model.maxcredit}" required="required"/></td>
				</tr>
				<tr>
					<td>图标数:</td>
					<td><input name="iconnum" class="easyui-validatebox textbox" 
							value="${model.iconnum}" required="required"/></td>
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