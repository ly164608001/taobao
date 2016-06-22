<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}admin/interaction/noticerecord/addsave.htm"
		method="post">
		<table cellpadding="5">
			<tr>
				<td>消息内容:</td>
				<td><input name="content" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入消息内容',required:true"
					value="${model.content}"></td>
			</tr>
			<tr>
				<td>消息类型:</td>
				<td><select class="easyui-combobox" id="type"
					name="type" style="width: 160px;">
						<option value="1">系统通知</option>
						<option value="2">房团通知</option>
						<option value="3">下订通知</option>
						<option value="4">活动通知</option>
						<option value="5">夺房通知</option>
						<option value="6">红包通知</option>
					</select> 
				<script>
        			InitSelect("type","${model.type}");
        		</script>
        		</td>
			</tr>
			<tr>
				<td>状态:</td>
				<td><select class="easyui-combobox" id="status"
					name="status" style="width: 160px;">
						<option value="-1">未读</option>
						<option value="1">已读</option>
					</select> 
				<script>
        			InitSelect("status","${model.status}");
        		</script>
        		</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<a href="javascript:void(0)" class="easyui-linkbutton"
					id="addsubmit">提 交</a></td>
			</tr>

		</table>
	</form>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>
