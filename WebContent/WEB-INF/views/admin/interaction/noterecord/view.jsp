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
						<th>短信内容:</th>
						<td>${model.content}</td>
					</tr>
					<tr>
						<th>短信发送时间:</th>
						<td>${model.sendtime}</td>
					</tr>
					<tr>
						<th>发送人:</th>
						<td>${model.senduser}</td>
					</tr>
					<tr>
						<th>接收方:</th>
						<td>${model.receiveuser}</td>
					</tr>
					<tr>
						<th>短信类型:</th>
						<td>${model.type}</td>
					</tr>
					<tr>
						<th>短信说明:</th>
						<td>${model.description}</td>
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