<%@page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/headDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</head>
<body>
	<div class="dialogTop">
		<table width="100%" border="0" align="center" cellspacing="10"
			cellpadding="0">
			<tr>
				<td width="100" class="right yhItem1">上级菜单:</td>
				<td>${model.parent.name}</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">名称:</td>
				<td>${model.name}</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">链接:</td>
				<td>${model.href}</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">排序:</td>
				<td>${model.sort}</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">类型:</td>
				<td>
					<c:if test="${model.type==0}">菜单</c:if>
					<c:if test="${model.type==1}">按钮</c:if>
				</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">所属:</td>
				<td>
					<c:if test="${model.belong==0}">后台</c:if>
					<c:if test="${model.belong==1}">前台</c:if>
				</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">角色类型:</td>
				<td>
					<c:if test="${model.target=='admin'}">运营</c:if>
					<c:if test="${model.target=='member'}">会员</c:if>
					<c:if test="${model.target=='agency'}">代理</c:if>
					<c:if test="${model.target=='estate'}">房地产商</c:if>
				</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">是否显示:</td>
				<td>
					<c:if test="${model.isshow==0}">否</c:if>
					<c:if test="${model.isshow==1}">是</c:if>
				</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">权限标识:</td>
				<td>${model.permission}</td>
			</tr>
		</table>
	</div>
	<div class="dialogBottom">
		<div class="btns">
			<input type="button" value="关 闭" class="ldBtnGray"
				onclick="ldDialog.close();" />
		</div>
	</div>
</body>
</html>

