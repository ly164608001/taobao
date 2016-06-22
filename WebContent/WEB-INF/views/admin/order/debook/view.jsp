<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>
	<div class="contaniner">
		<div class="div-content">
			<table class="table table-hover">
				<tbody>
					<tr>
						<td colspan="2">基本信息</td>
					</tr>
					<tr>
						<th>订单编号:</th>
						<td>${order.orderno}</td>
					</tr>
					<tr>
						<th>退订原因:</th>
						<td>${vo.model.reasonid}</td>
					</tr>
					<tr>
						<th>退订人:</th>
						<td>${model.userid}</td>
					</tr>
					<tr>
						<th>退订时间:</th>
						<td>${vo.model.createtime}</td>
					</tr>
					<tr>
						<th>状态:</th>
						<td>${model.status}</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center;">
							<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog();">关闭</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>