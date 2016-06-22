<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/css/admin/activity/activity.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<script>
function formatterstatus(value,row)
{
	return row.status==1?"已签到":"未签到";
}
</script>
</head>
<body>
<div class="easyui-panel" title="看房活动详情"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
	
		<table cellpadding="5">
			
				<tr>
					<td>房团名称:</td>
					<td>${model.name}</td>
				</tr>
			
			<tr>
				<td>报名时间:</td>
				<td>${model.applytimes}至 ${model.applytimee}</td>
			</tr>
			
			<tr>
			<tr>
				<td>集合时间:</td>
				<td>${model.starttime}</td>
			</tr>
			
			<tr><td>集合地址:</td>
				<td>${model.address}</td>
			</tr>
					
			<tr><td>限制人数:</td><td>${model.personnum}</td>
			</tr>
			
			<tr><td>房团优惠:</td><td>${model.activitycontent}</td>
			</tr>
			
			<tr>
				<td>开关:</td>
				<td>${model.status==1?"开":"关"}</td>
			</tr>
			
			<tr><td>发布时间:</td><td>${model.createtime}</td>
			</tr>			
		</table>
	<div class="find">	
		<form id="dgquery">
			<input name="model.activityid" type="hidden" value="${model.id}">
			<table cellspacing="5">
				<tr>
					<td><span class="txt-stress">报名用户</span></td>
					<td>共有${model.applynum}个人报名</td><td>&nbsp;</td>
					<td><select name="model.status"><option value="">签到结果</option><option value="1">已签到</option><option value="-1">未签到</option></select></td>
					<td>&nbsp;</td>
					<td><input name="condition" type="text" placeholder="请输入用户名或电话号码"/></td>
					<td>&nbsp;</td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">查询</a></td>
				</tr>
			</table>
		</form>
	</div>
		<table id="dg" cellspacing="0" cellpadding="0" url="userdatalist.htm?activityid=${model.id}">
		 
					<thead>
						<tr>
							<th field="id" width="30">id</th>
							<th field="username" width="80">报名用户</th>
							<th field="contactphone" width="100" >联系电话</th>
							<th field="applytime" width="100" formatter="formatterDate">报名时间</th>
							<th field="status" width="100" formatter="formatterstatus">签到结果</th>
							
						</tr>
					</thead>
				
				</table>
				
</div>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>
