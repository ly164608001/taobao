<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/common.js"></script>
</head>
<body>

	<form id="addform" action="${basePath}/admin/activity/thematic/updatesave.htm"
		method="post">
		<input type="hidden" name="id" value="${model.id}"  />
		<input name="createtime" type="hidden" value="${model.createtime}">
		<table cellpadding="5">
			
				<tr>
					<td>活动名称:</td>
					<td><input name="name" class="easyui-validatebox textbox"
						data-options="missingMessage:'请输入活动名称',invalidMessage:'活动名称至少三位',required:true,validType:'length[3,120]'"
						value="${model.name}"></td>
				</tr>
			
			<tr>
				<td>报名时间:</td>
				<td><input name="applytimes" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入报名开始时间',required:true"
					onClick="WdatePicker()" readonly="readonly" value="${model.applytimes}">至
					<input name="applytimee" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入报名结束时间',required:true"
					onClick="WdatePicker()"readonly="readonly" value="${model.applytimee}"></td>
			</tr>
			
			<tr>
				<td>活动时间:</td>
				<td><input name="starttime" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入活动开始时间',required:true"
					onClick="WdatePicker()" readonly="readonly" value="${model.starttime}">至
					<input name="endtime" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入活动结束时间',required:true"
					onClick="WdatePicker()"readonly="readonly" value="${model.endtime}"></td>
			</tr>
			
			<tr><td>活动地址:</td>
				<td><input name="address" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入活动地址',required:true" value="${model.address}"></td>
			</tr>
					
			<tr><td>限制人数:</td><td><input name="personnum" class="textbox"
					data-options="missingMessage:'请输入限制人数,默认不限制',required:true" value="${model.personnum}"></td>
			</tr>
			
			<tr><td>活动内容:</td><td></td></tr>
			
			<tr><td colspan="2"><textarea name="activitycontent" rows="7" cols="50">${model.activitycontent}</textarea></td>
			</tr>
					
			<tr>
				<td>状态:</td>
				<td><select class="easyui-combobox" id="status"
					name="status" style="width: 160px;">
						<option value="1">启用</option>
						<option value="2">禁用</option>
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
