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
						<td colspan="2">交易流水信息</td>
					</tr>
					<tr>
						<th>交易流水号:</th>
						<td>${model.serialno}</td>
					</tr>
					<tr>
						<th>金额:</th>
						<td>${model.money}</td>
					</tr>
					<tr>
						<th>付款人:</th>
						<td>${model.user.username}</td>
					</tr>
					<tr>
						<th>交易类型:</th>
						<td>${model.type}</td>
					</tr>
					<tr>
						<th>交易通道:</th>
						<td>${model.channel}</td>
					</tr>
					<tr>
						<th>交易时间:</th>
						<td>
							<f:formatDate value="${model.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>
						</td>
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