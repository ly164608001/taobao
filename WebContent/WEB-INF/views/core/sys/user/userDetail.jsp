<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
</head>
<body>
	<div class="dialogTop">
		<input name="id" value="${model.id}" type="hidden"/>
		<table width="100%" border="0" align="center" cellspacing="10"
			cellpadding="0">
			<tr>
				<td width="100" class="right yhItem1">
					用户名:
				</td>
				<td>
					${model.username}
				</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">
					联系方式:
				</td>
				<td>
					${model.phone}
				</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">
					注册时间:
				</td>
				<td>
					<f:formatDate value="${model.registertime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
			</tr>
			<tr>
				<td width="100" class="right yhItem1">
					状态:
				</td>
				<td>
					${model.status}
				</td>
			</tr>
		</table>
	</div>
	<div class="dialogBottom">
		<div class="btns">
			<input type="button" value="关 闭" class="lrBtnGray"
				onclick="lrDialog.close();" />
		</div>
	</div>
</body>
</html>