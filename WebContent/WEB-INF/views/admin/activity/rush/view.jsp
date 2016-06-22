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
	return row.status==1?"抢购成功":"抢购失败";
}

function formatterSource(value,row)
{
	return row.sourceid.housesBuilding.id+"号楼" +row.sourceid.floornum+"层"+row.sourceid.unit+"单元"+row.sourceid.roomnum +"号房 <br>"
		 
}
function formatterHousetype(value,row){
	return row.housetype.name+"户型"+row.housetype.roomnum+"室"+row.housetype.hallnum+"厅"+row.housetype.toiletnum+"卫"+row.housetype.balconynum+"阳台";
}
function formatterRush(value,row){
	if(row.rushprice!=null){
		return row.sourceid.buildarea*row.rushprice;
	}else{
		return "";
	}
}
</script>
</head>
<body>
<div class="easyui-panel" title="抢购活动详情"
		data-options="striped: true,collapsible:true,iconCls:'icon-search'">
		
		<table cellpadding="5">
			
			<tr>
				<td>活动名称:</td>
				<td>${model.name}</td>
			</tr>
			
			<tr>
				<td>活动时间:</td>
				<td>${model.starttime}至${model.endtime}</td>
			</tr>						
			
			<tr>
				<td>开关:</td>
				<td>${status==1?"开启":"禁用" }</td>
			</tr>
			
			<tr>
				<td>发布人:</td>
				<td>${model.createuser.username }</td>
			</tr>
			
			<tr><td>发布时间:</td>
				<td>${model.createtime }</td>
			</tr>			
		</table>
	<div class="find">	
		<form id="dgquery">
			<input name="model.activityid" type="hidden" value="${model.id}">
			<table cellspacing="5">
				<tr>
					<td><span class="txt-stress">参与用户</span></td>
					<td>共有${total }个人参与</td><td>&nbsp;</td>
					<td><select name="model.status"><option value="">抢购结果</option><option value="1">抢购成功</option><option value="-1">抢购失败</option></select></td>
					<td>&nbsp;</td>
					<td></td>
					<td>&nbsp;</td>
					<td><a href="#" id="btn-search" class="easyui-linkbutton"
						iconCls="icon-search" onclick="$('#dgquery').submit()">查询</a></td>
				</tr>
			</table>
		</form>
	</div>
		<table id="dg" cellspacing="0" cellpadding="0" url="rushdatalist.htm">
		 
					<thead>
						<tr>
							<th field="id" width="30">id</th>
							<th field="sourcehouse" width="150" formatter="formatterSource" >房源</th>
							<th field="housetype" width="150" formatter="formatterHousetype" >户型</th>
							<th field="sourceid.unitprice" width="100" >原价</th>
							<th field="sourceid.totalprice" width="100"  >原总价</th>
							<th field="rushprice" width="100" >抢购价</th>
							<th field="rushprice" width="100" formatter="formatterRush">抢购总价</th>
							<th field="rushtime" width="100" formatter="formatterDate">抢购时间</th>
							<th field="rushuserid.username" width="100" >参与用户</th>
							<th field="status" width="100" formatter="formatterstatus">抢购结果</th>
							
						</tr>
					</thead>
				
				</table>
</div>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>
