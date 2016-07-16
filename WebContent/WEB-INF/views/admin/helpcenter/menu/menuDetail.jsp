<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>
	<div class="contaniner">
	  <div class="div-content">
		<table class="table table-hover" cellpadding="5">
			<tr>
				<td>用户名:</td>
				<td>${model.username}</td>
			</tr>
			<tr>
				<td>用户类型:</td>
				<td>经纪人</td>
			</tr>
			<tr>
				<td>状态:</td>
				<td>
					<c:if test="${model.status == 1}">启用</c:if>
					<c:if test="${model.status == 2}">禁用</c:if>
				</td>
			</tr>
			<tr>
				<td>联系方式:</td>
				<td> ${model.phone}</td>
			</tr>
			<tr>
				<td>注册时间:</td>
				<td><f:formatDate value="${model.registertime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
			</tr>
			<tr>
				<td>最后登录IP:</td>
				<td>${model.loginip}</td>
			</tr>
			<tr>
				<td>最后登录时间:</td>
				<td><f:formatDate value="${model.lastlogintime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<a href="javascript:closeDialog();" class="easyui-linkbutton">关 闭</a>
				</td>
			</tr>

		</table>
		</div>
	</div>
	
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>