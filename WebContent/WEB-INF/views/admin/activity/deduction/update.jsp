<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script type="text/javascript" src="${basePath}static/js/common.js"></script>

</head>
<body>

	<form id="addform" action="${basePath}/admin/activity/deduction/updatesave.htm"
		method="post">
		<input type="hidden" name="id" value="${model.id}"/>
		<input name="createtime" type="hidden" value="${model.createtime}">
		<table cellpadding="5">
			
			<tr>
				<td>参与时间:</td>
				<td><input name="starttime" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入活动开始时间',required:true"
					onClick="WdatePicker()" readonly="readonly" value="${model.starttime}">至
					<input name="endtime" class="easyui-validatebox textbox"
					data-options="missingMessage:'请输入活动结束时间',required:true"
					onClick="WdatePicker()"readonly="readonly" value="${model.endtime}">
				</td>
			</tr>
			
			<tr>
				<td>使用期限:</td>
				<td><input name="availabletime" class=" textbox"
					data-options="missingMessage:'请输入使用期限',required:true"
					onClick="WdatePicker()" readonly="readonly" value="${model.availabletime}"></td>
			</tr>
			
			<tr><td>预存金额:</td>
				<td><input name="prestoremoney" class="easyui-numberbox textbox"
					data-options="missingMessage:'请输入预存金额',required:true" value="${model.prestoremoney}">
				</td>
			</tr>
			
			<tr><td>抵扣类型:</td>
				<td>
					<select name="deductiontype">
						<option value="2" ${model.deductiontype==2?"selected":""}>指定金额抵扣</option>
						<option value="1" ${model.deductiontype==1?"selected":""}>房价总额比例</option>
					</select>
				</td>
			</tr>
			
			<tr><td><span class="dedutype">${model.deductiontype==1?"总额比例":"抵扣金额"}:</span></td>
				<td><input name="deductionmoney" class="easyui-numberbox textbox"
					data-options="missingMessage:'请输入抵扣金额或房价总额比例',required:true" precision="2"
					value="${model.deductionmoney}"><span class="deduscale">${model.deductiontype==1?"%":""}</span>
				</td>
			</tr>
					
			<tr><td>限制人数:</td><td><input name="personnum" class="textbox"
					data-options="missingMessage:'请输入限制人数,默认不限制',required:true" value="${model.personnum}"></td>
			</tr>			
					
			<tr>
				<td>状态:</td>
				<td><select class="easyui-combobox" id="status" name="status" style="width: 160px;">
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
	<script type="text/javascript" src="${basePath}static/js/admin/activity/operator.js"></script>
</body>
</html>
